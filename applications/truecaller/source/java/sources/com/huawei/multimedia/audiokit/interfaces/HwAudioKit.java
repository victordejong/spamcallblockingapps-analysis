package com.huawei.multimedia.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.multimedia.audioengine.IHwAudioEngine;
import com.huawei.multimedia.audiokit.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audiokit/interfaces/HwAudioKit.class */
public class HwAudioKit {
    private static final List<Integer> DEFAULT_FEATURE_LIST = new ArrayList(0);
    private static final String ENGINE_CLASS_NAME = "com.huawei.multimedia.audioengine.HwAudioEngineService";
    private static final String TAG = "HwAudioKit.HwAudioKit";
    private Context mContext;
    private FeatureKitManager mFeatureKitManager;
    private IHwAudioEngine mIHwAudioEngine = null;
    private boolean mIsServiceConnected = false;
    private IBinder mService = null;
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.huawei.multimedia.audiokit.interfaces.HwAudioKit.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            HwAudioKit.this.mIHwAudioEngine = IHwAudioEngine.Stub.asInterface(iBinder);
            LogUtils.info(HwAudioKit.TAG, "onServiceConnected");
            if (HwAudioKit.this.mIHwAudioEngine != null) {
                HwAudioKit.this.mIsServiceConnected = true;
                LogUtils.info(HwAudioKit.TAG, "onServiceConnected, mIHwAudioEngine is not null");
                HwAudioKit.this.mFeatureKitManager.onCallBack(0);
                HwAudioKit hwAudioKit = HwAudioKit.this;
                hwAudioKit.serviceInit(hwAudioKit.mContext.getPackageName(), "1.0.1");
                HwAudioKit.this.serviceLinkToDeath(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtils.info(HwAudioKit.TAG, "onServiceDisconnected");
            HwAudioKit.this.mIHwAudioEngine = null;
            HwAudioKit.this.mIsServiceConnected = false;
            HwAudioKit.this.mFeatureKitManager.onCallBack(4);
        }
    };
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.huawei.multimedia.audiokit.interfaces.HwAudioKit.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            HwAudioKit.this.mService.unlinkToDeath(HwAudioKit.this.mDeathRecipient, 0);
            HwAudioKit.this.mFeatureKitManager.onCallBack(6);
            LogUtils.error(HwAudioKit.TAG, "service binder died");
            HwAudioKit.this.mService = null;
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType.class */
    public enum FeatureType {
        HWAUDIO_FEATURE_KARAOKE(1);
        
        private int mFeatureType;

        FeatureType(int i) {
            this.mFeatureType = i;
        }

        public int getFeatureType() {
            return this.mFeatureType;
        }
    }

    public HwAudioKit(Context context, IAudioKitCallback iAudioKitCallback) {
        this.mContext = null;
        FeatureKitManager featureKitManager = FeatureKitManager.getInstance();
        this.mFeatureKitManager = featureKitManager;
        featureKitManager.setCallBack(iAudioKitCallback);
        this.mContext = context;
    }

    private void bindService(Context context) {
        LogUtils.info(TAG, "bindService, mIsServiceConnected = {}", Boolean.valueOf(this.mIsServiceConnected));
        FeatureKitManager featureKitManager = this.mFeatureKitManager;
        if (featureKitManager == null || this.mIsServiceConnected) {
            return;
        }
        featureKitManager.bindService(context, this.mConnection, ENGINE_CLASS_NAME);
    }

    public void serviceInit(String str, String str2) {
        LogUtils.info(TAG, "serviceInit");
        try {
            IHwAudioEngine iHwAudioEngine = this.mIHwAudioEngine;
            if (iHwAudioEngine == null || !this.mIsServiceConnected) {
                return;
            }
            iHwAudioEngine.init(str, str2);
        } catch (RemoteException e) {
            LogUtils.error(TAG, "isFeatureSupported,RemoteException ex : {}", e.getMessage());
        }
    }

    public void serviceLinkToDeath(IBinder iBinder) {
        this.mService = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(this.mDeathRecipient, 0);
            } catch (RemoteException e) {
                this.mFeatureKitManager.onCallBack(5);
                LogUtils.error(TAG, "serviceLinkToDeath, RemoteException");
            }
        }
    }

    public <T extends AudioFeaturesKit> T createFeature(FeatureType featureType) {
        return (T) this.mFeatureKitManager.createFeatureKit(featureType.getFeatureType(), this.mContext);
    }

    public void destroy() {
        LogUtils.info(TAG, "destroy, mIsServiceConnected = {}", Boolean.valueOf(this.mIsServiceConnected));
        if (this.mIsServiceConnected) {
            this.mIsServiceConnected = false;
            this.mFeatureKitManager.unbindService(this.mContext, this.mConnection);
        }
    }

    public List<Integer> getSupportedFeatures() {
        LogUtils.info(TAG, "getSupportedFeatures");
        try {
            IHwAudioEngine iHwAudioEngine = this.mIHwAudioEngine;
            if (iHwAudioEngine != null && this.mIsServiceConnected) {
                return iHwAudioEngine.getSupportedFeatures();
            }
        } catch (RemoteException e) {
            LogUtils.error(TAG, "getSupportedFeatures, createFeature,wait bind service fail");
        }
        LogUtils.info(TAG, "getSupportedFeatures, service not bind");
        return DEFAULT_FEATURE_LIST;
    }

    public void initialize() {
        LogUtils.info(TAG, "initialize");
        Context context = this.mContext;
        if (context == null) {
            LogUtils.info(TAG, "mContext is null");
            this.mFeatureKitManager.onCallBack(7);
        } else if (this.mFeatureKitManager.isMediaKitSupport(context)) {
            bindService(this.mContext);
        } else {
            LogUtils.info(TAG, "not install AudioKitEngine");
            this.mFeatureKitManager.onCallBack(2);
        }
    }

    public boolean isFeatureSupported(FeatureType featureType) {
        LogUtils.info(TAG, "isFeatureSupported, type = {}", Integer.valueOf(featureType.getFeatureType()));
        try {
            IHwAudioEngine iHwAudioEngine = this.mIHwAudioEngine;
            if (iHwAudioEngine != null && this.mIsServiceConnected) {
                return iHwAudioEngine.isFeatureSupported(featureType.getFeatureType());
            }
            return false;
        } catch (RemoteException e) {
            LogUtils.error(TAG, "isFeatureSupported,RemoteException ex : {}", e.getMessage());
            return false;
        }
    }
}

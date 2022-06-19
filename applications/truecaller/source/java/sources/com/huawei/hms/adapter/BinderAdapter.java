package com.huawei.hms.adapter;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.api.BindingFailedResolution;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/BinderAdapter.class */
public class BinderAdapter implements ServiceConnection {
    private static final Object LOCK_CONNECT_TIMEOUT_HANDLER = new Object();
    private static final int MSG_CONN_TIMEOUT = 1001;
    private static final String TAG = "BinderAdapter";
    private BinderCallBack callback;
    private String mAction;
    private Context mContext;
    private String mService;
    private boolean bindfail = false;
    private Handler mBinderTimeoutHandler = null;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/BinderAdapter$BinderCallBack.class */
    public interface BinderCallBack {
        void onBinderFailed(int i);

        void onBinderFailed(int i, Intent intent);

        void onNullBinding(ComponentName componentName);

        void onServiceConnected(ComponentName componentName, IBinder iBinder);

        void onServiceDisconnected(ComponentName componentName);
    }

    public BinderAdapter(Context context, String str, String str2) {
        this.mContext = context;
        this.mAction = str;
        this.mService = str2;
    }

    private void bindCoreService() {
        if (TextUtils.isEmpty(this.mAction) || TextUtils.isEmpty(this.mService)) {
            getBindFailPendingIntent();
        }
        Intent intent = new Intent(this.mAction);
        intent.setPackage(this.mService);
        synchronized (LOCK_CONNECT_TIMEOUT_HANDLER) {
            if (this.mContext.bindService(intent, this, 1)) {
                postConnDelayHandle();
                return;
            }
            this.bindfail = true;
            getBindFailPendingIntent();
        }
    }

    public void binderServiceFailed() {
        BinderCallBack callBack = getCallBack();
        if (callBack != null) {
            callBack.onBinderFailed(-1);
        }
    }

    private void cancelConnDelayHandle() {
        synchronized (LOCK_CONNECT_TIMEOUT_HANDLER) {
            Handler handler = this.mBinderTimeoutHandler;
            if (handler != null) {
                handler.removeMessages(1001);
                this.mBinderTimeoutHandler = null;
            }
        }
    }

    private void getBindFailPendingIntent() {
        HMSLog.m37195e(TAG, "In connect, bind core service fail");
        ComponentName componentName = new ComponentName(this.mContext.getApplicationInfo().packageName, "com.huawei.hms.activity.BridgeActivity");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.putExtra(BridgeActivity.EXTRA_DELEGATE_CLASS_NAME, BindingFailedResolution.class.getName());
        BinderCallBack callBack = getCallBack();
        if (callBack != null) {
            callBack.onBinderFailed(-1, intent);
        }
    }

    private BinderCallBack getCallBack() {
        return this.callback;
    }

    private void postConnDelayHandle() {
        Handler handler = this.mBinderTimeoutHandler;
        if (handler != null) {
            handler.removeMessages(1001);
        } else {
            this.mBinderTimeoutHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.huawei.hms.adapter.BinderAdapter.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (message == null || message.what != 1001) {
                        return false;
                    }
                    HMSLog.m37195e(BinderAdapter.TAG, "In connect, bind core service time out");
                    BinderAdapter.this.binderServiceFailed();
                    return true;
                }
            });
        }
        this.mBinderTimeoutHandler.sendEmptyMessageDelayed(1001, 10000L);
    }

    public void binder(BinderCallBack binderCallBack) {
        if (binderCallBack == null) {
            return;
        }
        this.callback = binderCallBack;
        bindCoreService();
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        HMSLog.m37195e(TAG, "Enter onNullBinding, than unBind.");
        if (this.bindfail) {
            this.bindfail = false;
            return;
        }
        unBind();
        cancelConnDelayHandle();
        BinderCallBack callBack = getCallBack();
        if (callBack == null) {
            return;
        }
        callBack.onNullBinding(componentName);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HMSLog.m37193i(TAG, "Enter onServiceConnected.");
        cancelConnDelayHandle();
        BinderCallBack callBack = getCallBack();
        if (callBack != null) {
            callBack.onServiceConnected(componentName, iBinder);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.m37193i(TAG, "Enter onServiceDisconnected.");
        BinderCallBack callBack = getCallBack();
        if (callBack != null) {
            callBack.onServiceDisconnected(componentName);
        }
    }

    public void unBind() {
        Util.unBindServiceCatchException(this.mContext, this);
    }
}

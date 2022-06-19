package net.pubnative.lite.sdk;

import android.content.Context;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.verizon.ads.EnvironmentInfo;
import java.util.Locale;
import net.pubnative.lite.sdk.utils.HyBidAdvertisingId;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.PNAsyncUtils;
import net.pubnative.lite.sdk.utils.PNCrypto;
import net.pubnative.lite.sdk.utils.ScreenDimensionsUtils;
import net.pubnative.lite.sdk.utils.SoundUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/DeviceInfo.class */
public class DeviceInfo {
    private static final String TAG = "DeviceInfo";
    private String deviceHeight;
    private String deviceWidth;
    private String mAdvertisingId;
    private String mAdvertisingIdMd5;
    private String mAdvertisingIdSha1;
    private final ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private boolean mLimitTracking = false;
    private Listener mListener;
    private String soundSetting;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/DeviceInfo$Connectivity.class */
    public enum Connectivity {
        ETHERNET("ethernet"),
        WIFI("wifi"),
        WWAN("wwan"),
        NONE("none");
        
        private final String mConnectivity;

        Connectivity(String str) {
            this.mConnectivity = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.mConnectivity;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/DeviceInfo$Listener.class */
    public interface Listener {
        void onInfoLoaded();
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/DeviceInfo$Orientation.class */
    public enum Orientation {
        PORTRAIT(EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT),
        LANDSCAPE(EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE),
        NONE("none");
        
        private final String mOrientation;

        Orientation(String str) {
            this.mOrientation = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.mOrientation;
        }
    }

    public DeviceInfo(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mConnectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        getDeviceScreenDimensions();
    }

    public DeviceInfo(Context context, Listener listener) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mListener = listener;
        this.mConnectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        fetchAdvertisingId();
        getDeviceScreenDimensions();
    }

    private void fetchAdvertisingId() {
        try {
            PNAsyncUtils.safeExecuteOnExecutor(new HyBidAdvertisingId(this.mContext, new HyBidAdvertisingId.Listener() { // from class: net.pubnative.lite.sdk.DeviceInfo.1
                @Override // net.pubnative.lite.sdk.utils.HyBidAdvertisingId.Listener
                public void onHyBidAdvertisingIdFinish(String str, Boolean bool) {
                    DeviceInfo.this.mLimitTracking = bool.booleanValue();
                    if (TextUtils.isEmpty(str)) {
                        DeviceInfo deviceInfo = DeviceInfo.this;
                        deviceInfo.mAdvertisingId = Settings.Secure.getString(deviceInfo.mContext.getContentResolver(), "android_id");
                    } else {
                        DeviceInfo.this.mAdvertisingId = str;
                    }
                    DeviceInfo deviceInfo2 = DeviceInfo.this;
                    deviceInfo2.mAdvertisingIdMd5 = PNCrypto.md5(deviceInfo2.mAdvertisingId);
                    DeviceInfo deviceInfo3 = DeviceInfo.this;
                    deviceInfo3.mAdvertisingIdSha1 = PNCrypto.sha1(deviceInfo3.mAdvertisingId);
                    if (DeviceInfo.this.mListener != null) {
                        DeviceInfo.this.mListener.onInfoLoaded();
                    }
                }
            }), new Void[0]);
        } catch (Exception e) {
            Logger.m628e(TAG, "Error executing HyBidAdvertisingId AsyncTask");
        }
    }

    public void checkSoundSetting() {
        if (new SoundUtils().isSoundMuted(this.mContext)) {
            this.soundSetting = "0";
        } else {
            this.soundSetting = "1";
        }
    }

    public String getAdvertisingId() {
        return this.mAdvertisingId;
    }

    public String getAdvertisingIdMd5() {
        return this.mAdvertisingIdMd5;
    }

    public String getAdvertisingIdSha1() {
        return this.mAdvertisingIdSha1;
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getDeviceHeight() {
        return this.deviceHeight;
    }

    public void getDeviceScreenDimensions() {
        Point screenDimensionsToPoint = new ScreenDimensionsUtils().getScreenDimensionsToPoint(this.mContext);
        this.deviceWidth = Integer.toString(screenDimensionsToPoint.x);
        this.deviceHeight = Integer.toString(screenDimensionsToPoint.y);
    }

    public String getDeviceWidth() {
        return this.deviceWidth;
    }

    public Locale getLocale() {
        return this.mContext.getResources().getConfiguration().locale;
    }

    public String getModel() {
        return Build.MODEL;
    }

    public String getOSVersion() {
        return Build.VERSION.RELEASE;
    }

    public Orientation getOrientation() {
        int i = this.mContext.getResources().getConfiguration().orientation;
        return i != 1 ? i != 2 ? Orientation.NONE : Orientation.LANDSCAPE : Orientation.PORTRAIT;
    }

    public String getSoundSetting() {
        return this.soundSetting;
    }

    public void initialize(Listener listener) {
        this.mListener = listener;
        fetchAdvertisingId();
    }

    public boolean limitTracking() {
        return this.mLimitTracking;
    }
}

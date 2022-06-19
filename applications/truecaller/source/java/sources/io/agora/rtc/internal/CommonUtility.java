package io.agora.rtc.internal;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.internal.RtcEngineMessage;
import io.agora.rtc.utils.CameraUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/CommonUtility.class */
public class CommonUtility {
    private static final String PREFIX_URI = "content://";
    private static final String TAG = "CommonUtility";
    private static final int VIDEO_SOURCE_TYPE_CUSTOMIZED = 2;
    private static final int VIDEO_SOURCE_TYPE_DEFAULT = 1;
    private static final int VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED = 3;
    private static final int VIDEO_SOURCE_TYPE_NULL = 0;
    private static WeakReference<Application> mApplication;
    private volatile boolean mAccessible;
    private boolean mAudioOnly;
    private long mBridgeHandle;
    private WeakReference<Context> mContext;
    private AgoraPhoneStateListener mPhoneStateListener;
    private ConnectionChangeBroadcastReceiver mConnectionBroadcastReceiver = null;
    private BroadcastReceiver mOrientationObserver = null;
    private PowerConnectionReceiver mPowerConnectionReceiver = null;
    private int mMobileType = -1;
    private int batteryPercentage = 255;
    private int mOrientation = -1;
    private boolean mLocalVideoEnabled = false;
    private int mVideoSourceType = 1;
    private OrientationEventListener mOrientationListener = null;
    private String localIpv4 = null;
    private String localIpv6 = null;
    private String gatewayIp = null;
    private boolean shouldGetIp = true;

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener.class */
    public class AgoraPhoneStateListener extends PhoneStateListener {
        private SignalStrength mSignalStrenth;
        private boolean phoneStatusNeedResume = false;

        public AgoraPhoneStateListener() {
            CommonUtility.this = r4;
        }

        private int invokeMethod(String str) {
            Method declaredMethod;
            try {
                SignalStrength signalStrength = this.mSignalStrenth;
                if (signalStrength != null && (declaredMethod = signalStrength.getClass().getDeclaredMethod(str, new Class[0])) != null) {
                    return ((Integer) declaredMethod.invoke(this.mSignalStrenth, new Object[0])).intValue();
                }
                return 0;
            } catch (Exception e) {
                return 0;
            }
        }

        public int getAsuLevel() {
            return Build.VERSION.SDK_INT <= 28 ? invokeMethod("getAsuLevel") : 0;
        }

        public int getLevel() {
            return invokeMethod("getLevel");
        }

        public int getRssi() {
            return Build.VERSION.SDK_INT <= 28 ? invokeMethod("getDbm") : 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            if (((Context) CommonUtility.this.mContext.get()) == null || !CommonUtility.this.mAccessible) {
                return;
            }
            super.onCallStateChanged(i, str);
            if (i == 0) {
                if (!this.phoneStatusNeedResume) {
                    return;
                }
                this.phoneStatusNeedResume = false;
                Logging.m3706i(CommonUtility.TAG, "system phone call end delay 1000ms");
                new Handler().postDelayed(new Runnable() { // from class: io.agora.rtc.internal.CommonUtility.AgoraPhoneStateListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            CommonUtility.this.onPhoneStateChanged(true, 22, 0);
                        } catch (Exception e) {
                            Logging.m3708e(CommonUtility.TAG, "fail to resume ", e);
                        }
                    }
                }, 1000L);
            } else if (i == 1) {
                Logging.m3706i(CommonUtility.TAG, "system phone call ring");
                this.phoneStatusNeedResume = true;
                CommonUtility.this.onPhoneStateChanged(false, 22, 1);
            } else if (i != 2) {
            } else {
                Logging.m3706i(CommonUtility.TAG, "system phone call start");
                this.phoneStatusNeedResume = true;
                CommonUtility.this.onPhoneStateChanged(false, 22, 2);
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (((Context) CommonUtility.this.mContext.get()) == null || !CommonUtility.this.mAccessible) {
                return;
            }
            super.onSignalStrengthsChanged(signalStrength);
            this.mSignalStrenth = signalStrength;
        }
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/CommonUtility$MobileType.class */
    public static class MobileType {
        public static final int Cdma = 1;
        public static final int Gsm = 0;
        public static final int Lte = 3;
        public static final int Unknown = -1;
        public static final int Wcdma = 2;
    }

    public CommonUtility(Context context, long j, boolean z) {
        this.mAccessible = false;
        this.mPhoneStateListener = null;
        this.mBridgeHandle = 0L;
        this.mAudioOnly = false;
        this.mAudioOnly = z;
        this.mContext = new WeakReference<>(context);
        this.mBridgeHandle = j;
        try {
            this.mPhoneStateListener = new AgoraPhoneStateListener();
            ((TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE)).listen(this.mPhoneStateListener, 288);
        } catch (Exception e) {
            Logging.m3708e(TAG, "Unable to create PhoneStateListener, ", e);
        }
        monitorConnectionEvent(true);
        monitorPowerChange(true);
        monitorOrientationChange(context, true);
        this.mAccessible = true;
        Logging.m3706i(TAG, "[init] done!");
    }

    public static boolean canGetDefaultContext() {
        Looper.myLooper();
        Looper.getMainLooper();
        return true;
    }

    private static boolean checkAccessNetworkState(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0) {
            z = true;
        }
        return z;
    }

    private static boolean checkAccessWifiState(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (context.checkPermission("android.permission.ACCESS_WIFI_STATE", Process.myPid(), Process.myUid()) == 0) {
            z = true;
        }
        return z;
    }

    public void checkOrientation(int i) {
        if (!this.mAudioOnly && i != -1 && this.mAccessible) {
            if (i > 340 || i < 20 || ((i > 70 && i < 110) || ((i > 160 && i < 200) || (i > 250 && i < 290)))) {
                updateViewOrientation();
            }
            if (i > 340 || i < 20) {
                nativeNotifyGravityOriChange(this.mBridgeHandle, 270);
            } else if (i > 70 && i < 110) {
                nativeNotifyGravityOriChange(this.mBridgeHandle, 180);
            } else if (i > 160 && i < 200) {
                nativeNotifyGravityOriChange(this.mBridgeHandle, 90);
            } else if (i <= 250 || i >= 290) {
            } else {
                nativeNotifyGravityOriChange(this.mBridgeHandle, 0);
            }
        }
    }

    private int checkVoipPermissions(Context context, int i) {
        if (i == 1) {
            try {
                checkVoipPermissions(context);
                return 0;
            } catch (SecurityException e) {
                Logging.m3708e(TAG, "Do not have enough permission! ", e);
                return -9;
            }
        } else if (i != 2) {
            return -2;
        } else {
            try {
                checkVoipPermissions(context, "android.permission.INTERNET");
                return 0;
            } catch (SecurityException e2) {
                Logging.m3709e(TAG, "Do not have Internet permission!");
                return -9;
            }
        }
    }

    private void checkVoipPermissions(Context context) throws SecurityException {
        checkVoipPermissions(context, "android.permission.INTERNET");
        checkVoipPermissions(context, "android.permission.RECORD_AUDIO");
        checkVoipPermissions(context, "android.permission.MODIFY_AUDIO_SETTINGS");
        if (this.mVideoSourceType != 1 || !this.mLocalVideoEnabled) {
            return;
        }
        CameraUtils.checkCameraPermission(context);
    }

    private void checkVoipPermissions(Context context, String str) throws SecurityException {
        if (context == null || context.checkPermission(str, Process.myPid(), Process.myUid()) != 0) {
            throw new SecurityException(C22128a.m8543z2(str, " is not granted"));
        }
    }

    private void disableOrientationListener() {
        if (this.mAudioOnly) {
            return;
        }
        OrientationEventListener orientationEventListener = this.mOrientationListener;
        if (orientationEventListener == null) {
            Logging.m3709e(TAG, "[disableOrientationListener] mOrientationListener is null!");
            return;
        }
        orientationEventListener.disable();
        this.mOrientationListener = null;
        Logging.m3706i(TAG, "[disableOrientationListener] done!");
    }

    private RtcEngineMessage.MediaNetworkInfo doGetNetworkInfo(Context context) {
        InetAddress intToInetAddress;
        if (context == null || !this.mAccessible) {
            return null;
        }
        RtcEngineMessage.MediaNetworkInfo mediaNetworkInfo = new RtcEngineMessage.MediaNetworkInfo();
        if (!checkAccessNetworkState(context)) {
            mediaNetworkInfo.ssid = "";
            mediaNetworkInfo.bssid = "";
            mediaNetworkInfo.rssi = 0;
            mediaNetworkInfo.signalLevel = 0;
            mediaNetworkInfo.frequency = 0;
            mediaNetworkInfo.linkspeed = 0;
            return mediaNetworkInfo;
        }
        if (this.shouldGetIp) {
            String localHost = getLocalHost(true);
            if (localHost != null) {
                mediaNetworkInfo.localIp4 = localHost;
            }
            String localHost2 = getLocalHost(false);
            if (localHost2 != null) {
                mediaNetworkInfo.localIp6 = localHost2;
            }
            this.localIpv4 = localHost;
            this.localIpv6 = localHost2;
            this.shouldGetIp = false;
        } else {
            String str = this.localIpv4;
            if (str != null) {
                mediaNetworkInfo.localIp4 = str;
            }
            String str2 = this.localIpv6;
            if (str2 != null) {
                mediaNetworkInfo.localIp6 = str2;
            }
        }
        NetworkInfo networkInfo = Connectivity.getNetworkInfo(context);
        mediaNetworkInfo.networkType = Connectivity.getNetworkType(networkInfo);
        if (networkInfo != null) {
            mediaNetworkInfo.networkSubtype = networkInfo.getSubtype();
        }
        mediaNetworkInfo.dnsList = Connectivity.getDnsList();
        if (mediaNetworkInfo.networkType != 2) {
            AgoraPhoneStateListener agoraPhoneStateListener = this.mPhoneStateListener;
            if (agoraPhoneStateListener != null) {
                this.gatewayIp = null;
                try {
                    mediaNetworkInfo.rssi = agoraPhoneStateListener.getRssi();
                    mediaNetworkInfo.signalLevel = this.mPhoneStateListener.getLevel();
                    mediaNetworkInfo.asu = this.mPhoneStateListener.getAsuLevel();
                } catch (Exception e) {
                }
            } else {
                this.gatewayIp = null;
            }
        } else if (!checkAccessWifiState(context)) {
            mediaNetworkInfo.ssid = "";
            mediaNetworkInfo.bssid = "";
            mediaNetworkInfo.rssi = 0;
            mediaNetworkInfo.signalLevel = 0;
            mediaNetworkInfo.frequency = 0;
            mediaNetworkInfo.linkspeed = 0;
            return mediaNetworkInfo;
        } else {
            WifiManager wifiManager = (WifiManager) context.getSystemService(AnalyticsConstants.WIFI);
            if (TextUtils.isEmpty(this.gatewayIp)) {
                DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
                if (dhcpInfo != null && (intToInetAddress = intToInetAddress(dhcpInfo.gateway)) != null) {
                    String hostAddress = intToInetAddress.getHostAddress();
                    this.gatewayIp = hostAddress;
                    mediaNetworkInfo.gatewayIp4 = hostAddress;
                }
            } else {
                mediaNetworkInfo.gatewayIp4 = this.gatewayIp;
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo != null) {
                mediaNetworkInfo.ssid = "";
                mediaNetworkInfo.bssid = "";
                int rssi = connectionInfo.getRssi();
                mediaNetworkInfo.rssi = rssi;
                mediaNetworkInfo.signalLevel = WifiManager.calculateSignalLevel(rssi, 5);
                mediaNetworkInfo.linkspeed = connectionInfo.getLinkSpeed();
                int frequency = connectionInfo.getFrequency();
                mediaNetworkInfo.frequency = frequency;
                if (frequency >= 5000) {
                    mediaNetworkInfo.networkSubtype = 101;
                } else if (frequency >= 2400) {
                    mediaNetworkInfo.networkSubtype = 100;
                }
            }
        }
        return mediaNetworkInfo;
    }

    private void enableOrientationListener(Context context) {
        if (this.mAudioOnly) {
            return;
        }
        try {
            if (this.mOrientationListener == null) {
                this.mOrientationListener = new OrientationEventListener(context, 2) { // from class: io.agora.rtc.internal.CommonUtility.1
                    @Override // android.view.OrientationEventListener
                    public void onOrientationChanged(int i) {
                        if (i == -1) {
                            return;
                        }
                        CommonUtility.this.checkOrientation(i);
                    }
                };
            }
            this.mOrientationListener.enable();
            Logging.m3706i(TAG, "[enableOrientationListener] done!");
        } catch (Exception e) {
            Logging.m3708e(TAG, "Unable to create OrientationEventListener, ", e);
        }
    }

    private static String getAndroidID(Context context) {
        return "";
    }

    public static String getAppPrivateStorageDir(Context context) {
        File externalFilesDir;
        return (!"mounted".equals(Environment.getExternalStorageState()) || (externalFilesDir = context.getExternalFilesDir(null)) == null) ? context.getFilesDir().getAbsolutePath() : externalFilesDir.getAbsolutePath();
    }

    private String getAssetsCacheFile(Context context, String str) {
        String str2 = TAG;
        Logging.m3706i(str2, "getAssetsCacheFile filePath: " + str);
        boolean startsWith = str.startsWith(PREFIX_URI);
        try {
            File file = new File(context.getCacheDir(), "wm_image_cache");
            if (file.exists()) {
                file.delete();
            }
            InputStream fileInputStream = startsWith ? new FileInputStream(context.getContentResolver().openFileDescriptor(Uri.parse(str), "r").getFileDescriptor()) : context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    fileOutputStream.close();
                    fileInputStream.close();
                    return file.getAbsolutePath();
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private AudioManager getAudioManager(Context context) {
        if (context == null) {
            return null;
        }
        return (AudioManager) context.getSystemService("audio");
    }

    public static byte[] getContextInfo(Context context) {
        if (context == null) {
            return null;
        }
        RtcEngineMessage.PAndroidContextInfo pAndroidContextInfo = new RtcEngineMessage.PAndroidContextInfo();
        pAndroidContextInfo.device = DeviceUtils.buildDeviceId();
        pAndroidContextInfo.deviceInfo = DeviceUtils.getDeviceInfo();
        pAndroidContextInfo.systemInfo = DeviceUtils.getSystemInfo();
        pAndroidContextInfo.configDir = getAppPrivateStorageDir(context);
        pAndroidContextInfo.dataDir = context.getCacheDir().getAbsolutePath();
        pAndroidContextInfo.pluginDir = context.getApplicationInfo().nativeLibraryDir;
        pAndroidContextInfo.androidID = "";
        if (TextUtils.isEmpty(pAndroidContextInfo.device)) {
            pAndroidContextInfo.device = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.deviceInfo)) {
            pAndroidContextInfo.deviceInfo = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.systemInfo)) {
            pAndroidContextInfo.systemInfo = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.configDir)) {
            pAndroidContextInfo.configDir = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.dataDir)) {
            pAndroidContextInfo.dataDir = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.pluginDir)) {
            pAndroidContextInfo.pluginDir = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.androidID)) {
            pAndroidContextInfo.androidID = "";
        }
        return pAndroidContextInfo.marshall();
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x000e, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getLocalHost(boolean r3) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.CommonUtility.getLocalHost(boolean):java.lang.String");
    }

    public static String[] getLocalHostList() {
        try {
            ArrayList<NetworkInterface> list = Collections.list(NetworkInterface.getNetworkInterfaces());
            ArrayList arrayList = new ArrayList();
            for (NetworkInterface networkInterface : list) {
                if (!networkInterface.getName().startsWith("usb")) {
                    for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                        String inetAddressToIpAddress = inetAddressToIpAddress(inetAddress, true);
                        if (inetAddressToIpAddress != null) {
                            arrayList.add(inetAddressToIpAddress);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            String[] strArr = new String[arrayList.size()];
            int i = 0;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                strArr[i] = (String) it.next();
                i++;
            }
            return strArr;
        } catch (Exception e) {
            return null;
        }
    }

    public static String getRandomUUID() {
        return UUID.randomUUID().toString().replace(StringConstant.DASH, "").toUpperCase();
    }

    private static String getSystemProperty(String str) throws Exception {
        Class<?> cls = Class.forName("android.os.SystemProperties");
        return (String) cls.getMethod("get", String.class).invoke(cls, str);
    }

    private static String inetAddressToIpAddress(InetAddress inetAddress, boolean z) {
        if (!inetAddress.isLoopbackAddress()) {
            if (z && (inetAddress instanceof Inet4Address)) {
                return ((Inet4Address) inetAddress).getHostAddress();
            }
            if (!z && (inetAddress instanceof Inet6Address) && !inetAddress.isLinkLocalAddress()) {
                return ((Inet6Address) inetAddress).getHostAddress();
            }
            return null;
        }
        return null;
    }

    private static InetAddress intToInetAddress(int i) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)});
        } catch (UnknownHostException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02a5, code lost:
        if (r0.contains(com.mopub.common.Constants.ANDROID_PLATFORM) != false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b7, code lost:
        if (r0.toLowerCase().contains("asus") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x014e, code lost:
        if (r8.toLowerCase().contains("nox") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0180, code lost:
        if (r0.contains("sdk_gphone") != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0214, code lost:
        if ((r0.contains(com.mopub.common.Constants.ANDROID_PLATFORM) | r0.contains("goldfish")) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
        if (r8.toLowerCase().equals("intel") != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isSimulatorProperty() {
        /*
            Method dump skipped, instructions count: 801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.CommonUtility.isSimulatorProperty():boolean");
    }

    private void monitorOrientationChange(Context context, boolean z) {
        if (this.mAudioOnly) {
            return;
        }
        if (z) {
            enableOrientationListener(context);
            regiseterBroadcaster(context);
            return;
        }
        disableOrientationListener();
        unregisterBroadcaster(context);
    }

    private native void nativeAudioRoutingPhoneChanged(long j, boolean z, int i, int i2);

    private native int nativeNotifyGravityOriChange(long j, int i);

    private native int nativeNotifyNetworkChange(long j, byte[] bArr);

    private native int nativeNotifyOrientationChange(long j, int i);

    private void regiseterBroadcaster(Context context) {
        if (!this.mAudioOnly && context != null) {
            this.mOrientationObserver = new BroadcastReceiver() { // from class: io.agora.rtc.internal.CommonUtility.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    if (!intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED") || !CommonUtility.this.mAccessible) {
                        return;
                    }
                    CommonUtility.this.updateViewOrientation();
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
            context.registerReceiver(this.mOrientationObserver, intentFilter);
            Logging.m3706i(TAG, "[regiseterBroadcaster] done!");
        }
    }

    private void unregisterBroadcaster(Context context) {
        BroadcastReceiver broadcastReceiver;
        if (this.mAudioOnly || context == null || (broadcastReceiver = this.mOrientationObserver) == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
        Logging.m3706i(TAG, "[unregisterBroadcaster] done!");
    }

    public void updateViewOrientation() {
        if (this.mAudioOnly) {
            return;
        }
        if (this.mContext.get() == null || !this.mAccessible) {
            Logging.m3709e(TAG, "[updateViewOrientation] mContext is null or mAccessible is false!");
            return;
        }
        Display defaultDisplay = ((WindowManager) this.mContext.get().getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay == null) {
            Logging.m3709e(TAG, "[updateViewOrientation] display is null!");
            return;
        }
        int rotation = defaultDisplay.getRotation();
        if (rotation == this.mOrientation) {
            return;
        }
        if (rotation == 0) {
            this.mOrientation = 0;
            nativeNotifyOrientationChange(this.mBridgeHandle, 0);
        } else if (rotation == 1) {
            this.mOrientation = 1;
            nativeNotifyOrientationChange(this.mBridgeHandle, 1);
        } else if (rotation == 2) {
            this.mOrientation = 2;
            nativeNotifyOrientationChange(this.mBridgeHandle, 2);
        } else if (rotation != 3) {
        } else {
            this.mOrientation = 3;
            nativeNotifyOrientationChange(this.mBridgeHandle, 3);
        }
    }

    public void destroy() {
        this.mAccessible = false;
        Context context = this.mContext.get();
        if (this.mPhoneStateListener != null && context != null) {
            ((TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE)).listen(this.mPhoneStateListener, 0);
            this.mPhoneStateListener = null;
        }
        monitorConnectionEvent(false);
        monitorPowerChange(false);
        monitorOrientationChange(context, false);
        this.mContext.clear();
        Logging.m3706i(TAG, "[destroy] done!");
    }

    public int getAndroidVersion() {
        return Build.VERSION.SDK_INT;
    }

    public int getBatteryLifePercent() {
        if (this.mContext.get() == null || !this.mAccessible) {
            return 255;
        }
        return this.batteryPercentage;
    }

    public int getFrontCameraIndex(Context context) {
        return DeviceUtils.selectFrontCamera(context);
    }

    public byte[] getNetworkInfo() {
        RtcEngineMessage.MediaNetworkInfo doGetNetworkInfo;
        Context context = this.mContext.get();
        if (context == null || !this.mAccessible || (doGetNetworkInfo = doGetNetworkInfo(context)) == null) {
            return null;
        }
        return doGetNetworkInfo.marshall();
    }

    public int getNetworkType() {
        Context context = this.mContext.get();
        if (context == null || !this.mAccessible || !checkAccessNetworkState(context)) {
            return -1;
        }
        return Connectivity.getNetworkType(context);
    }

    public int getNumberOfCameras(Context context) {
        return DeviceUtils.getNumberOfCameras(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int isSimulator() {
        /*
            r3 = this;
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Exception -> L46
            r4 = r0
            r0 = r4
            java.lang.String r0 = r0.toLowerCase()     // Catch: java.lang.Exception -> Lca
            java.lang.String r1 = "netease"
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Exception -> Lca
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L18
            r0 = 1
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            java.lang.String r0 = io.agora.rtc.internal.CommonUtility.TAG     // Catch: java.lang.Exception -> Lcf
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lcf
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: java.lang.Exception -> Lcf
            r0 = r8
            java.lang.String r1 = "manufacturer = "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> Lcf
            r0 = r8
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> Lcf
            r0 = r7
            r1 = r8
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> Lcf
            io.agora.rtc.internal.Logging.m3706i(r0, r1)     // Catch: java.lang.Exception -> Lcf
            goto L56
        L46:
            r4 = move-exception
            java.lang.String r0 = ""
            r4 = r0
        L4b:
            r0 = 0
            r6 = r0
        L4d:
            java.lang.String r0 = io.agora.rtc.internal.CommonUtility.TAG
            java.lang.String r1 = "get manufacturer info fail."
            io.agora.rtc.internal.Logging.m3709e(r0, r1)
        L56:
            r0 = r6
            r9 = r0
            r0 = r3
            boolean r0 = r0.isSimulatorProperty()
            if (r0 == 0) goto L65
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
        L65:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 <= r1) goto La5
            java.lang.String r0 = "nokia"
            r1 = r4
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L91
            java.lang.String r0 = "Nokia_N1"
            java.lang.String r1 = android.os.Build.DEVICE
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L8f
            java.lang.String r0 = "N1"
            java.lang.String r1 = android.os.Build.MODEL
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L91
        L8f:
            r0 = 0
            return r0
        L91:
            r0 = r9
            if (r0 <= 0) goto Lc8
            r0 = r4
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r1 = "welldo"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto Lc8
            r0 = 1
            return r0
        La5:
            java.lang.String r0 = ""
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r1 = "unknown"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lb9
            r0 = r9
            if (r0 <= 0) goto Lc8
        Lb9:
            r0 = r4
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r1 = "welldo"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto Lc8
            r0 = 1
            return r0
        Lc8:
            r0 = 0
            return r0
        Lca:
            r8 = move-exception
            goto L4b
        Lcf:
            r8 = move-exception
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.CommonUtility.isSimulator():int");
    }

    public int isSpeakerphoneEnabled(Context context) {
        if (context == null) {
            return 0;
        }
        return getAudioManager(context).isSpeakerphoneOn() ? 1 : 0;
    }

    public void monitorConnectionEvent(boolean z) {
        ConnectionChangeBroadcastReceiver connectionChangeBroadcastReceiver;
        ConnectionChangeBroadcastReceiver connectionChangeBroadcastReceiver2;
        if (!z) {
            try {
                Context context = this.mContext.get();
                if (context != null && (connectionChangeBroadcastReceiver = this.mConnectionBroadcastReceiver) != null) {
                    context.unregisterReceiver(connectionChangeBroadcastReceiver);
                }
            } catch (IllegalArgumentException e) {
            }
            this.mConnectionBroadcastReceiver = null;
        } else if (this.mConnectionBroadcastReceiver != null) {
        } else {
            try {
                this.mConnectionBroadcastReceiver = new ConnectionChangeBroadcastReceiver(this);
                Context context2 = this.mContext.get();
                if (context2 == null || (connectionChangeBroadcastReceiver2 = this.mConnectionBroadcastReceiver) == null) {
                    return;
                }
                context2.registerReceiver(connectionChangeBroadcastReceiver2, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } catch (Exception e2) {
                Logging.m3708e(TAG, "Unable to create ConnectionChangeBroadcastReceiver, ", e2);
            }
        }
    }

    public void monitorPowerChange(boolean z) {
        PowerConnectionReceiver powerConnectionReceiver;
        if (!z) {
            try {
                Context context = this.mContext.get();
                if (context != null && (powerConnectionReceiver = this.mPowerConnectionReceiver) != null) {
                    context.unregisterReceiver(powerConnectionReceiver);
                }
            } catch (IllegalArgumentException e) {
            }
            this.mPowerConnectionReceiver = null;
        } else if (this.mPowerConnectionReceiver != null) {
        } else {
            try {
                this.mPowerConnectionReceiver = new PowerConnectionReceiver(this);
                Context context2 = this.mContext.get();
                if (context2 == null || this.mPowerConnectionReceiver == null) {
                    return;
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                context2.registerReceiver(this.mPowerConnectionReceiver, intentFilter);
            } catch (Exception e2) {
                Logging.m3708e(TAG, "Unable to create PowerConnectionReceiver, ", e2);
            }
        }
    }

    public void notifyNetworkChange() {
        if (this.mContext.get() == null || !this.mAccessible) {
            return;
        }
        this.shouldGetIp = true;
        byte[] networkInfo = getNetworkInfo();
        if (networkInfo == null || !this.mAccessible) {
            return;
        }
        nativeNotifyNetworkChange(this.mBridgeHandle, networkInfo);
    }

    public void onPhoneStateChanged(boolean z, int i, int i2) {
        if (this.mBridgeHandle == 0 || !this.mAccessible) {
            return;
        }
        nativeAudioRoutingPhoneChanged(this.mBridgeHandle, z, i, i2);
    }

    public void onPowerChange(int i) {
        if (this.mContext.get() == null || !this.mAccessible) {
            return;
        }
        this.batteryPercentage = i;
    }

    public void updateLocalVideoEnableState(boolean z) {
        String str = TAG;
        Logging.m3711d(str, "updateLocalVideoEnableState: " + z);
        this.mLocalVideoEnabled = z;
    }

    public void updateVideoSourceType(int i) {
        String str = TAG;
        Logging.m3711d(str, "updateVideoSourceType: " + i);
        this.mVideoSourceType = i;
    }
}

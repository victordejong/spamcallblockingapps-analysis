package com.millennialmedia.internal.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.exoplayer2.C0515C;
import com.millennialmedia.MMInitializationException;
import com.millennialmedia.MMLog;
import java.io.File;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/EnvironmentUtils.class */
public class EnvironmentUtils {
    private static final String MILLENNIAL_DIRECTORY = "/.com.millennialmedia/";
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    private static final String TAG = "EnvironmentUtils";
    @SuppressLint({"StaticFieldLeak"})
    private static Application application;
    @SuppressLint({"StaticFieldLeak"})
    private static Context applicationContext;
    private static AvailableCameras availableCameras;
    private static boolean bluetoothPermissionGranted;
    private static Integer cellSignalDbm;
    private static String deviceId;
    private static boolean fineLocationPermissionGranted;
    private static boolean microphonePermissionGranted;
    private static boolean nfcPermissionGranted;
    private static boolean readExternalStoragePermissionGranted;
    private static volatile String userAgent;
    private static boolean vibratePermissionGranted;
    private static boolean wifiStatePermissionGranted;
    private static boolean writeExternalStoragePermissionGranted;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras.class */
    public static class AvailableCameras {
        public boolean backCamera;
        public boolean frontCamera;
    }

    public static boolean areHeadphonesPluggedIn() {
        return ((AudioManager) applicationContext.getSystemService("audio")).isWiredHeadsetOn();
    }

    public static boolean checkPermissionGranted(String str) {
        boolean z = false;
        try {
            if (g8.a(applicationContext, str) == 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Unable to check permission " + str, e);
            return false;
        }
    }

    private static void extractPermissions() {
        writeExternalStoragePermissionGranted = Build.VERSION.SDK_INT > 22 || checkPermissionGranted("android.permission.WRITE_EXTERNAL_STORAGE");
        readExternalStoragePermissionGranted = checkPermissionGranted("android.permission.READ_EXTERNAL_STORAGE");
        wifiStatePermissionGranted = checkPermissionGranted("android.permission.ACCESS_WIFI_STATE");
        fineLocationPermissionGranted = checkPermissionGranted("android.permission.ACCESS_FINE_LOCATION");
        vibratePermissionGranted = checkPermissionGranted("android.permission.VIBRATE");
        bluetoothPermissionGranted = checkPermissionGranted("android.permission.BLUETOOTH");
        nfcPermissionGranted = checkPermissionGranted("android.permission.NFC");
        microphonePermissionGranted = checkPermissionGranted("android.permission.RECORD_AUDIO");
    }

    private static void extractUserAgentFromWebSettings() {
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                userAgent = WebSettings.getDefaultUserAgent(applicationContext);
                String str = TAG;
                MMLog.m4066i(str, "User agent: " + userAgent);
            } catch (Exception e) {
                MMLog.m4062w(TAG, "Unable to get user agent from call to getDefaultUserAgent");
            }
        }
    }

    private static void extractUserAgentFromWebView() {
        userAgent = "Android " + Build.VERSION.RELEASE;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.utils.EnvironmentUtils.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    String unused = EnvironmentUtils.userAgent = new WebView(EnvironmentUtils.applicationContext).getSettings().getUserAgentString();
                    String str = EnvironmentUtils.TAG;
                    MMLog.m4066i(str, "User agent: " + EnvironmentUtils.userAgent);
                } catch (Exception e) {
                    MMLog.m4067e(EnvironmentUtils.TAG, "Unable to get user agent from call to getUserAgentString", e);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.millennialmedia.internal.utils.AdvertisingIdInfo getAdInfo() {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.utils.EnvironmentUtils.getAdInfo():com.millennialmedia.internal.utils.AdvertisingIdInfo");
    }

    public static String getAdvertisingId(AdvertisingIdInfo advertisingIdInfo) {
        if (advertisingIdInfo == null) {
            MMLog.m4068e(TAG, "Unable to get advertisering id value");
            return null;
        }
        return advertisingIdInfo.getId();
    }

    public static String getAppId() {
        return applicationContext.getPackageName();
    }

    public static Application getApplication() {
        return application;
    }

    public static Context getApplicationContext() {
        return applicationContext;
    }

    public static String getApplicationName() {
        try {
            PackageManager packageManager = applicationContext.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(applicationContext.getPackageName(), 0)).toString();
        } catch (Throwable th) {
            MMLog.m4067e(TAG, "Unable to determine package name", th);
            return null;
        }
    }

    public static AvailableCameras getAvailableCameras() {
        return availableCameras;
    }

    public static long getAvailableExternalStorageSize() {
        if (isExternalStorageReadable()) {
            return getAvailableSize(Environment.getExternalStorageDirectory().getAbsolutePath());
        }
        return 0L;
    }

    public static long getAvailableInternalStorageSize() {
        return getAvailableSize(Environment.getRootDirectory().getAbsolutePath());
    }

    private static long getAvailableSize(String str) {
        StatFs statFs = new StatFs(str);
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static long getAvailableStorageSize() {
        return getAvailableInternalStorageSize() + 0 + getAvailableExternalStorageSize();
    }

    private static Intent getBatteryIntent() {
        return applicationContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public static Integer getBatteryLevel() {
        Intent batteryIntent = getBatteryIntent();
        if (batteryIntent == null) {
            return null;
        }
        int intExtra = batteryIntent.getIntExtra("scale", -1);
        int intExtra2 = batteryIntent.getIntExtra("level", -1);
        if (intExtra != -1 && intExtra2 != -1) {
            return Integer.valueOf(Math.round((intExtra2 / intExtra) * 100.0f));
        }
        return null;
    }

    @TargetApi(21)
    private static AvailableCameras getCameraInfo() {
        AvailableCameras availableCameras2 = new AvailableCameras();
        availableCameras = availableCameras2;
        availableCameras2.frontCamera = false;
        availableCameras2.backCamera = false;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                CameraManager cameraManager = (CameraManager) applicationContext.getSystemService("camera");
                for (String str : cameraManager.getCameraIdList()) {
                    int intValue = ((Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING)).intValue();
                    if (intValue == 0) {
                        availableCameras.frontCamera = true;
                    } else if (intValue == 1) {
                        availableCameras.backCamera = true;
                    }
                }
            } else {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                int numberOfCameras = Camera.getNumberOfCameras();
                for (int i = 0; i < numberOfCameras; i++) {
                    Camera.getCameraInfo(i, cameraInfo);
                    int i2 = cameraInfo.facing;
                    if (i2 == 1) {
                        availableCameras.frontCamera = true;
                    } else if (i2 == 0) {
                        availableCameras.backCamera = true;
                    }
                }
            }
        } catch (AssertionError e) {
            MMLog.m4068e(TAG, "AssertionError while retrieving camera info <" + e.getMessage() + "> -- ignored");
        } catch (Exception e2) {
            MMLog.m4067e(TAG, "Error retrieving camera information for device", e2);
        }
        return availableCameras;
    }

    public static String getCellSignalDbm() {
        Integer num = cellSignalDbm;
        if (num != null) {
            return num.toString();
        }
        return null;
    }

    public static int getConfigOrientationFromRequestedOrientation(int i) {
        if (i != -1) {
            if (i == 0) {
                return 2;
            }
            if (i == 1) {
                return 1;
            }
            if (i == 11) {
                return 2;
            }
            if (i == 12) {
                return 1;
            }
            switch (i) {
                case 6:
                case 8:
                    return 2;
                case 7:
                case 9:
                    return 1;
                default:
                    return getCurrentConfigOrientation();
            }
        }
        return 0;
    }

    public static int getCurrentConfigOrientation() {
        return applicationContext.getResources().getConfiguration().orientation;
    }

    public static String getCurrentConfigOrientationString() {
        int i = applicationContext.getResources().getConfiguration().orientation;
        return i != 1 ? i != 2 ? getNaturalConfigOrientationString() : ORIENTATION_LANDSCAPE : ORIENTATION_PORTRAIT;
    }

    @SuppressLint({"HardwareIds"})
    public static String getDeviceId() {
        synchronized (EnvironmentUtils.class) {
            try {
                String str = deviceId;
                if (str != null) {
                    return str;
                }
                String string = Settings.Secure.getString(applicationContext.getContentResolver(), "android_id");
                if (string == null) {
                    return null;
                }
                StringBuilder sb = new StringBuilder("mmh_");
                try {
                    sb.append(Utils.byteArrayToHex(MessageDigest.getInstance("MD5").digest(string.getBytes(C0515C.UTF8_NAME))));
                    sb.append('_');
                    sb.append(Utils.byteArrayToHex(MessageDigest.getInstance("SHA1").digest(string.getBytes(C0515C.UTF8_NAME))));
                    String sb2 = sb.toString();
                    deviceId = sb2;
                    return sb2;
                } catch (Exception e) {
                    String str2 = TAG;
                    MMLog.m4067e(str2, "Exception calculating device id hash with ANDROID_ID <" + string + ">", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static float getDisplayDensity() {
        return applicationContext.getResources().getDisplayMetrics().density;
    }

    public static int getDisplayDensityDpi() {
        return applicationContext.getResources().getDisplayMetrics().densityDpi;
    }

    @TargetApi(17)
    public static int getDisplayHeight() {
        if (Build.VERSION.SDK_INT >= 17) {
            Display defaultDisplay = ((WindowManager) applicationContext.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return point.y;
        }
        return applicationContext.getResources().getDisplayMetrics().heightPixels;
    }

    @TargetApi(17)
    public static int getDisplayWidth() {
        if (Build.VERSION.SDK_INT >= 17) {
            Display defaultDisplay = ((WindowManager) applicationContext.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return point.x;
        }
        return applicationContext.getResources().getDisplayMetrics().widthPixels;
    }

    @SuppressLint({"HardwareIds"})
    public static String getHashedDeviceId(String str) {
        synchronized (EnvironmentUtils.class) {
            try {
                String string = Settings.Secure.getString(applicationContext.getContentResolver(), "android_id");
                if (string == null) {
                    return null;
                }
                try {
                    return Utils.byteArrayToHex(MessageDigest.getInstance(str).digest(string.getBytes(C0515C.UTF8_NAME)));
                } catch (Exception e) {
                    String str2 = TAG;
                    MMLog.m4067e(str2, "Exception calculating <" + str + "> hashed device id with ANDROID_ID <" + string + ">", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String getIpAddress() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        if (inetAddress instanceof Inet4Address) {
                            return upperCase;
                        }
                        int indexOf = upperCase.indexOf(37);
                        if (indexOf >= 0) {
                            upperCase = upperCase.substring(0, indexOf);
                        }
                        return upperCase;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Unable to determine IP address for device", e);
            return null;
        }
    }

    public static String getLocaleCountry() {
        return Locale.getDefault().getCountry();
    }

    public static String getLocaleLanguage() {
        return Locale.getDefault().getLanguage();
    }

    @SuppressLint({"MissingPermission"})
    public static Location getLocation() {
        LocationManager locationManager;
        if (!fineLocationPermissionGranted || (locationManager = (LocationManager) applicationContext.getSystemService("location")) == null) {
            return null;
        }
        return locationManager.getLastKnownLocation("passive");
    }

    public static Integer getMcc() {
        int i = applicationContext.getResources().getConfiguration().mcc;
        if (i == 0) {
            String networkOperator = getNetworkOperator();
            if (networkOperator != null && networkOperator.length() >= 6) {
                try {
                    return Integer.valueOf(Integer.parseInt(networkOperator.substring(0, 3)));
                } catch (NumberFormatException e) {
                    MMLog.m4061w(TAG, "Unable to parse mcc from network operator", e);
                }
            }
            MMLog.m4062w(TAG, "Unable to retrieve mcc");
            return null;
        }
        return Integer.valueOf(i);
    }

    public static File getMillennialDir() {
        File file = new File(applicationContext.getFilesDir() + MILLENNIAL_DIRECTORY);
        file.mkdirs();
        return file;
    }

    public static Integer getMnc() {
        int i = applicationContext.getResources().getConfiguration().mnc;
        if (i == 0) {
            String networkOperator = getNetworkOperator();
            if (networkOperator != null && networkOperator.length() >= 6) {
                try {
                    return Integer.valueOf(Integer.parseInt(networkOperator.substring(3)));
                } catch (NumberFormatException e) {
                    MMLog.m4061w(TAG, "Unable to parse mnc from network operator", e);
                }
            }
            MMLog.m4062w(TAG, "Unable to retrieve mnc");
            return null;
        }
        return Integer.valueOf(i);
    }

    public static int getNaturalConfigOrientation() {
        WindowManager windowManager = (WindowManager) applicationContext.getSystemService("window");
        Configuration configuration = applicationContext.getResources().getConfiguration();
        int rotation = windowManager.getDefaultDisplay().getRotation();
        int i = configuration.orientation;
        if (i == 2 && (rotation == 0 || rotation == 2)) {
            return 2;
        }
        if (i != 1) {
            return 1;
        }
        return (rotation == 1 || rotation == 3) ? 2 : 1;
    }

    public static String getNaturalConfigOrientationString() {
        return getNaturalConfigOrientation() == 2 ? ORIENTATION_LANDSCAPE : ORIENTATION_PORTRAIT;
    }

    public static String getNetworkConnectionType() {
        String str;
        NetworkInfo networkInfo = getNetworkInfo();
        if (networkInfo != null && networkInfo.isConnected()) {
            int type = networkInfo.getType();
            if (type != 1) {
                str = "unknown";
                if (type == 0) {
                    switch (networkInfo.getSubtype()) {
                        case 1:
                            str = "gprs";
                            break;
                        case 2:
                            str = "edge";
                            break;
                        case 3:
                            str = "umts";
                            break;
                        case 4:
                            str = "cdma";
                            break;
                        case 5:
                            str = "evdo_0";
                            break;
                        case 6:
                            str = "evdo_a";
                            break;
                        case 7:
                            str = "1xrtt";
                            break;
                        case 8:
                            str = "hsdpa";
                            break;
                        case 9:
                            str = "hsupa";
                            break;
                        case 10:
                            str = "hspa";
                            break;
                        case 11:
                            str = "iden";
                            break;
                        case 12:
                            str = "evdo_b";
                            break;
                        case 13:
                            str = "lte";
                            break;
                        case 14:
                            str = "ehrpd";
                            break;
                        case 15:
                            str = "hspap";
                            break;
                        default:
                            str = "unknown";
                            break;
                    }
                }
            } else {
                str = "wifi";
            }
        } else {
            str = "offline";
        }
        return str;
    }

    private static NetworkInfo getNetworkInfo() {
        ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    public static String getNetworkOperator() {
        return ((TelephonyManager) applicationContext.getSystemService("phone")).getNetworkOperator();
    }

    public static String getNetworkOperatorName() {
        return ((TelephonyManager) applicationContext.getSystemService("phone")).getNetworkOperatorName();
    }

    public static File getPicturesDirectory() {
        File file;
        if (Build.VERSION.SDK_INT >= 23) {
            File[] externalMediaDirs = applicationContext.getExternalMediaDirs();
            file = externalMediaDirs.length > 0 ? externalMediaDirs[0] : null;
        } else {
            file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        }
        File file2 = file;
        if (file != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(file.getAbsolutePath());
            String str = File.separator;
            sb.append(str);
            sb.append("AOL");
            sb.append(str);
            sb.append(getApplicationName());
            file2 = new File(sb.toString());
            file2.mkdirs();
        }
        return file2;
    }

    public static void getResourceValueFrom(String str, String str2, TypedValue typedValue, boolean z) {
        Resources resources = applicationContext.getResources();
        resources.getValue(applicationContext.getPackageName() + ":" + str2 + "/" + str, typedValue, z);
    }

    @TargetApi(17)
    public static String getUserAgent() {
        if (userAgent == null) {
            extractUserAgentFromWebSettings();
            if (userAgent == null) {
                extractUserAgentFromWebView();
            }
        }
        return userAgent;
    }

    public static int getVolume(int i) {
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        int streamMaxVolume = audioManager.getStreamMaxVolume(i);
        if (streamMaxVolume < 1) {
            return 0;
        }
        return (int) (audioManager.getStreamVolume(i) * (100.0f / streamMaxVolume));
    }

    public static boolean hasBluetooth() {
        return applicationContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth");
    }

    public static boolean hasBluetoothPermission() {
        return bluetoothPermissionGranted;
    }

    public static boolean hasCamera() {
        AvailableCameras availableCameras2 = availableCameras;
        return availableCameras2.backCamera || availableCameras2.frontCamera;
    }

    public static boolean hasFineLocationPermission() {
        return fineLocationPermissionGranted;
    }

    public static boolean hasGps() {
        return applicationContext.getPackageManager().hasSystemFeature("android.hardware.location.gps");
    }

    public static boolean hasMicrophone() {
        return applicationContext.getPackageManager().hasSystemFeature("android.hardware.microphone");
    }

    public static boolean hasMicrophonePermission() {
        return microphonePermissionGranted;
    }

    public static boolean hasNfc() {
        return applicationContext.getPackageManager().hasSystemFeature("android.hardware.nfc");
    }

    public static boolean hasNfcPermission() {
        return nfcPermissionGranted;
    }

    public static boolean hasVibratePermission() {
        return vibratePermissionGranted;
    }

    public static void init(Application application2) {
        application = application2;
        applicationContext = application2.getApplicationContext();
        registerWebViewUsageWithAndroid();
        if (Build.VERSION.SDK_INT < 17) {
            extractUserAgentFromWebView();
        }
        extractPermissions();
        registerSignalStrengthListener();
        availableCameras = getCameraInfo();
        MediaContentProvider.verifyMediaContentProvider(applicationContext);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.EnvironmentUtils.1
            @Override // java.lang.Runnable
            public void run() {
                AdvertisingIdInfo adInfo = EnvironmentUtils.getAdInfo();
                String str = EnvironmentUtils.TAG;
                MMLog.m4066i(str, "Environment initialized with the following data.\n\tMillennial Media Ad SDK version: 6.7.0-c5b3e1a (release)\n\tAndroid SDK version: " + Build.VERSION.SDK_INT + "\n\tApplication name: " + EnvironmentUtils.getApplicationName() + "\n\tApplication id: " + EnvironmentUtils.getAppId() + "\n\tLocale country " + EnvironmentUtils.getLocaleCountry() + "\n\tLocale language: " + EnvironmentUtils.getLocaleLanguage() + "\n\tExternal storage available: " + EnvironmentUtils.isExternalStorageReadable() + "\n\tDisplay width: " + EnvironmentUtils.getDisplayWidth() + "\n\tDisplay height: " + EnvironmentUtils.getDisplayHeight() + "\n\tDisplay density: " + EnvironmentUtils.getDisplayDensity() + "\n\tDisplay dpi: " + EnvironmentUtils.getDisplayDensityDpi() + "\n\tNatural screen orientation: " + EnvironmentUtils.getNaturalConfigOrientationString() + "\n\tREAD_EXTERNAL_STORAGE permission available: " + EnvironmentUtils.readExternalStoragePermissionGranted + "\n\tWRITE_EXTERNAL_STORAGE permission available: " + EnvironmentUtils.writeExternalStoragePermissionGranted + "\n\tACCESS_WIFI_STATE permission available: " + EnvironmentUtils.wifiStatePermissionGranted + "\n\tACCESS_FINE_LOCATION permission available: " + EnvironmentUtils.fineLocationPermissionGranted + "\n\tVIBRATE permission available: " + EnvironmentUtils.vibratePermissionGranted + "\n\tBLUETOOTH permission available: " + EnvironmentUtils.bluetoothPermissionGranted + "\n\tNFC permission available: " + EnvironmentUtils.nfcPermissionGranted + "\n\tRECORD_AUDIO permission available: " + EnvironmentUtils.microphonePermissionGranted + "\n\tFront camera available: " + EnvironmentUtils.availableCameras.frontCamera + "\n\tBack camera available: " + EnvironmentUtils.availableCameras.backCamera + "\n\tAdvertising ID: " + EnvironmentUtils.getAdvertisingId(adInfo) + "\n\tLimit ad tracking enabled: " + EnvironmentUtils.isLimitAdTrackingEnabled(adInfo) + "\n\n");
            }
        });
    }

    @TargetApi(23)
    public static boolean isDeviceIdle() {
        if (Build.VERSION.SDK_INT >= 23) {
            return ((PowerManager) application.getSystemService("power")).isDeviceIdleMode();
        }
        return false;
    }

    public static boolean isDevicePlugged() {
        Intent batteryIntent = getBatteryIntent();
        return (batteryIntent == null || batteryIntent.getIntExtra("plugged", 0) == 0) ? false : true;
    }

    public static boolean isExternalStorageReadable() {
        String externalStorageState = Environment.getExternalStorageState();
        return readExternalStoragePermissionGranted && ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState));
    }

    public static boolean isExternalStorageSupported() {
        return writeExternalStoragePermissionGranted;
    }

    public static boolean isExternalStorageWritable() {
        return writeExternalStoragePermissionGranted && "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean isLimitAdTrackingEnabled(AdvertisingIdInfo advertisingIdInfo) {
        if (advertisingIdInfo == null) {
            MMLog.m4068e(TAG, "Unable to get limit ad tracking value, ad info is null");
            return false;
        }
        return advertisingIdInfo.isLimitAdTrackingEnabled();
    }

    public static boolean isNetworkAvailable() {
        NetworkInfo networkInfo = getNetworkInfo();
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isSmsSupported() {
        return applicationContext.getPackageManager().hasSystemFeature("android.hardware.telephony");
    }

    public static boolean isTelSupported() {
        return applicationContext.getPackageManager().hasSystemFeature("android.hardware.telephony");
    }

    private static void registerSignalStrengthListener() {
        ((TelephonyManager) application.getSystemService("phone")).listen(new PhoneStateListener() { // from class: com.millennialmedia.internal.utils.EnvironmentUtils.2
            @Override // android.telephony.PhoneStateListener
            public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                super.onSignalStrengthsChanged(signalStrength);
                Integer unused = EnvironmentUtils.cellSignalDbm = Integer.valueOf(signalStrength.isGsm() ? (signalStrength.getGsmSignalStrength() * 2) - 113 : signalStrength.getCdmaDbm());
                if (MMLog.isDebugEnabled()) {
                    String str = EnvironmentUtils.TAG;
                    MMLog.m4070d(str, "Cell signal DBM updated to: " + EnvironmentUtils.cellSignalDbm);
                }
            }
        }, 256);
    }

    private static void registerWebViewUsageWithAndroid() {
        try {
            Class.forName("android.webkit.WebView");
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Unable to find system webview class", e);
            throw new MMInitializationException("Unable to initialize SDK. The system webview class is currently unavailable, most likely due to a system update in progress. Reinitialize the SDK after the system webview update has finished.");
        }
    }

    public static boolean resourceExists(String str, String str2) {
        return resourceExists(str, str2, applicationContext.getPackageName());
    }

    public static boolean resourceExists(String str, String str2, String str3) {
        return applicationContext.getResources().getIdentifier(str, str2, str3) != 0;
    }
}

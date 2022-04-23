package com.verizon.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.content.b;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo.class */
public final class EnvironmentInfo {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35277a = Logger.getInstance(EnvironmentInfo.class);

    /* renamed from: b  reason: collision with root package name */
    private static volatile AdvertisingIdInfo f35278b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f35279c;

    /* renamed from: d  reason: collision with root package name */
    private final NetworkOperatorInfo f35280d;
    private final DeviceInfo e;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$AdvertisingIdInfo.class */
    public interface AdvertisingIdInfo {
        String getId();

        boolean isLimitAdTrackingEnabled();
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$CameraType.class */
    public enum CameraType {
        FRONT,
        BACK
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$DeviceInfo.class */
    public static class DeviceInfo {
        public static final String ORIENTATION_LANDSCAPE = "landscape";
        public static final String ORIENTATION_PORTRAIT = "portrait";

        /* renamed from: a  reason: collision with root package name */
        private static final Logger f35283a = Logger.getInstance(DeviceInfo.class);

        /* renamed from: b  reason: collision with root package name */
        private static volatile String f35284b = String.format("Android %s", Build.VERSION.RELEASE);

        /* renamed from: c  reason: collision with root package name */
        private final Context f35285c;

        /* renamed from: d  reason: collision with root package name */
        private final ScreenInfo f35286d;
        private Set<CameraType> e;

        DeviceInfo(Context context) {
            this.f35285c = context;
            this.f35286d = new ScreenInfo(context);
            if (!VASAds.isAnonymous()) {
                this.e = new HashSet();
                if (Build.VERSION.SDK_INT >= 21) {
                    CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                    if (cameraManager != null) {
                        try {
                            for (String str : cameraManager.getCameraIdList()) {
                                Integer num = (Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING);
                                if (num == null) {
                                    f35283a.d("Camera detected but lens facing characteristic returned null.");
                                } else if (num.intValue() == 0) {
                                    this.e.add(CameraType.FRONT);
                                } else if (num.intValue() == 1) {
                                    this.e.add(CameraType.BACK);
                                }
                            }
                        } catch (Throwable th) {
                            f35283a.e("An error occurred determining camera availability.", th);
                        }
                    } else {
                        f35283a.d("Could not determine camera availability. Unable to access Camera Service.");
                    }
                } else {
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    int numberOfCameras = Camera.getNumberOfCameras();
                    for (int i = 0; i < numberOfCameras; i++) {
                        Camera.getCameraInfo(i, cameraInfo);
                        if (cameraInfo.facing == 1) {
                            this.e.add(CameraType.FRONT);
                        } else if (cameraInfo.facing == 0) {
                            this.e.add(CameraType.BACK);
                        }
                    }
                }
            }
            a(context);
        }

        private static long a(File file) {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        }

        private void a(final Context context) {
            synchronized (this) {
                if (Build.VERSION.SDK_INT > 16) {
                    f35284b = WebSettings.getDefaultUserAgent(context);
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.verizon.ads.EnvironmentInfo.DeviceInfo.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String unused = DeviceInfo.f35284b = new WebView(context).getSettings().getUserAgentString();
                        }
                    });
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
            if ("mounted_ro".equals(r0) != false) goto L_0x003d;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Long getAvailableStorage() {
            /*
                r5 = this;
                boolean r0 = com.verizon.ads.VASAds.isAnonymous()
                if (r0 == 0) goto L_0x0008
                r0 = 0
                return r0
            L_0x0008:
                java.lang.String r0 = android.os.Environment.getExternalStorageState()
                r6 = r0
                r0 = r5
                android.content.Context r0 = r0.f35285c
                java.lang.String r1 = "android.permission.READ_EXTERNAL_STORAGE"
                int r0 = androidx.core.content.b.a(r0, r1)
                if (r0 != 0) goto L_0x001d
                r0 = 1
                r7 = r0
                goto L_0x001f
            L_0x001d:
                r0 = 0
                r7 = r0
            L_0x001f:
                r0 = 0
                r8 = r0
                r0 = r8
                r10 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0045
                java.lang.String r0 = "mounted"
                r1 = r6
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x003d
                r0 = r8
                r10 = r0
                java.lang.String r0 = "mounted_ro"
                r1 = r6
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0045
            L_0x003d:
                java.io.File r0 = android.os.Environment.getExternalStorageDirectory()
                long r0 = a(r0)
                r10 = r0
            L_0x0045:
                java.io.File r0 = android.os.Environment.getRootDirectory()
                long r0 = a(r0)
                r1 = r10
                long r0 = r0 + r1
                java.lang.Long r0 = java.lang.Long.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.EnvironmentInfo.DeviceInfo.getAvailableStorage():java.lang.Long");
        }

        public Float getBatteryLevel() {
            Intent registerReceiver;
            if (!VASAds.isAnonymous() && (registerReceiver = this.f35285c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) != null) {
                return Float.valueOf(registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1));
            }
            return null;
        }

        public CameraType[] getCameras() {
            Set<CameraType> set = this.e;
            return set != null ? (CameraType[]) set.toArray(new CameraType[set.size()]) : new CameraType[0];
        }

        public String getConfigurationOrientation() {
            int i = this.f35285c.getResources().getConfiguration().orientation;
            return i != 1 ? i != 2 ? getNaturalOrientation() : ORIENTATION_LANDSCAPE : ORIENTATION_PORTRAIT;
        }

        public String getCountryCode() {
            return Locale.getDefault().getCountry();
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x009c, code lost:
            r0 = r0.indexOf(37);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00a5, code lost:
            if (r0 >= 0) goto L_0x00ab;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00aa, code lost:
            return r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00ab, code lost:
            r8 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b8, code lost:
            return r0.substring(0, r0);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String getIP() {
            /*
                Method dump skipped, instructions count: 216
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.EnvironmentInfo.DeviceInfo.getIP():java.lang.String");
        }

        public String getLanguage() {
            return Locale.getDefault().getLanguage();
        }

        public String getManufacturer() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Build.MANUFACTURER;
        }

        public String getModel() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Build.MODEL;
        }

        public String getName() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Build.DEVICE;
        }

        public String getNaturalOrientation() {
            WindowManager windowManager = (WindowManager) this.f35285c.getSystemService("window");
            if (windowManager != null) {
                Configuration configuration = this.f35285c.getResources().getConfiguration();
                int rotation = windowManager.getDefaultDisplay().getRotation();
                return (configuration.orientation == 2 && (rotation == 0 || rotation == 2)) ? ORIENTATION_LANDSCAPE : configuration.orientation == 1 ? (rotation == 1 || rotation == 3) ? ORIENTATION_LANDSCAPE : ORIENTATION_PORTRAIT : ORIENTATION_PORTRAIT;
            }
            f35283a.w("Window Service unavailable. Could not determine orientation.");
            return null;
        }

        public NetworkInfo getNetworkInfo() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return EnvironmentInfo.c(this.f35285c);
        }

        public String getOSBuildNumber() {
            return Build.ID;
        }

        public String getOSVersion() {
            return Build.VERSION.RELEASE;
        }

        public ScreenInfo getScreenInfo() {
            return this.f35286d;
        }

        public String getUserAgent() {
            return f35284b;
        }

        public Float getVolume(int i) {
            if (VASAds.isAnonymous()) {
                return null;
            }
            AudioManager audioManager = (AudioManager) this.f35285c.getSystemService("audio");
            if (audioManager != null) {
                return Float.valueOf(audioManager.getStreamVolume(i) / audioManager.getStreamMaxVolume(i));
            }
            if (!Logger.isLogLevelEnabled(3)) {
                return null;
            }
            f35283a.d(String.format("Audio Service unavailable. Could not determine volume for stream type %d", Integer.valueOf(i)));
            return null;
        }

        public Boolean hasBluetooth() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f35285c.getPackageManager().hasSystemFeature("android.hardware.bluetooth") && b.a(this.f35285c, "android.permission.BLUETOOTH") == 0);
        }

        public Boolean hasCameraPermission() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(b.a(this.f35285c, "android.permission.CAMERA") == 0);
        }

        public Boolean hasGPS() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f35285c.getPackageManager().hasSystemFeature("android.hardware.location.gps") && b.a(this.f35285c, "android.permission.ACCESS_FINE_LOCATION") == 0);
        }

        public Boolean hasHeadphonesPluggedIn() {
            AudioDeviceInfo[] devices;
            if (VASAds.isAnonymous()) {
                return null;
            }
            AudioManager audioManager = (AudioManager) this.f35285c.getSystemService("audio");
            if (audioManager == null) {
                f35283a.d("Cannot determine headphone status. No Audio Service available.");
                return null;
            } else if (Build.VERSION.SDK_INT < 23) {
                return Boolean.valueOf(audioManager.isWiredHeadsetOn());
            } else {
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    if (audioDeviceInfo.getId() == 4 || audioDeviceInfo.getId() == 3 || audioDeviceInfo.getId() == 22) {
                        return Boolean.TRUE;
                    }
                }
                return Boolean.FALSE;
            }
        }

        public Boolean hasMicrophone() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f35285c.getPackageManager().hasSystemFeature("android.hardware.microphone") && b.a(this.f35285c, "android.permission.RECORD_AUDIO") == 0);
        }

        public Boolean hasNFC() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f35285c.getPackageManager().hasSystemFeature("android.hardware.nfc") && b.a(this.f35285c, "android.permission.NFC") == 0);
        }

        public Boolean isCharging() {
            Intent registerReceiver;
            if (VASAds.isAnonymous() || (registerReceiver = this.f35285c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null) {
                return null;
            }
            int intExtra = registerReceiver.getIntExtra("status", -1);
            return Boolean.valueOf(intExtra == 2 || intExtra == 5);
        }

        public boolean isExternalStorageWritable() {
            return (Build.VERSION.SDK_INT > 18 || b.a(this.f35285c, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) && "mounted".equals(Environment.getExternalStorageState());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$NetworkOperatorInfo.class */
    public static class NetworkOperatorInfo {

        /* renamed from: a  reason: collision with root package name */
        private static final Logger f35289a = Logger.getInstance(NetworkOperatorInfo.class);

        /* renamed from: b  reason: collision with root package name */
        private static volatile int f35290b;

        /* renamed from: c  reason: collision with root package name */
        private static PhoneStateListenerThread f35291c;

        /* renamed from: d  reason: collision with root package name */
        private String f35292d;
        private String e;
        private String f;

        NetworkOperatorInfo(Context context) {
            String networkOperator;
            this.e = "0";
            this.f = "0";
            if (!VASAds.isAnonymous()) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
                if (telephonyManager != null) {
                    this.f35292d = telephonyManager.getNetworkOperatorName();
                    a(context);
                }
                Configuration configuration = context.getResources().getConfiguration();
                if (!(telephonyManager == null || (networkOperator = telephonyManager.getNetworkOperator()) == null || networkOperator.length() < 6)) {
                    try {
                        this.e = networkOperator.substring(0, 3);
                    } catch (NumberFormatException e) {
                        f35289a.w("Unable to parse mcc from network operator", e);
                    }
                    try {
                        this.f = networkOperator.substring(3);
                    } catch (NumberFormatException e2) {
                        f35289a.w("Unable to parse mnc from network operator", e2);
                    }
                }
                if (TextUtils.isEmpty(this.e) || this.e.equals("0")) {
                    this.e = Integer.toString(configuration.mcc);
                }
                if (TextUtils.isEmpty(this.f) || this.f.equals("0")) {
                    this.f = Integer.toString(configuration.mnc);
                }
            }
        }

        private static void a(Context context) {
            synchronized (NetworkOperatorInfo.class) {
                try {
                    if (f35291c == null) {
                        PhoneStateListenerThread phoneStateListenerThread = new PhoneStateListenerThread(context.getApplicationContext());
                        f35291c = phoneStateListenerThread;
                        phoneStateListenerThread.start();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public Integer getCellSignalDbm() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Integer.valueOf(f35290b);
        }

        public String getMCC() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return this.e;
        }

        public String getMNC() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return this.f;
        }

        public String getNetworkOperatorName() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return this.f35292d;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$NetworkType.class */
    public enum NetworkType {
        UNKNOWN,
        OFFLINE,
        WIFI,
        MOBILE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$PhoneStateListenerThread.class */
    public static final class PhoneStateListenerThread extends HandlerThread {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<Context> f35293a;

        /* renamed from: b  reason: collision with root package name */
        private PhoneStateListener f35294b;

        private PhoneStateListenerThread(Context context) {
            super("vas-phone-state-listener");
            this.f35293a = new WeakReference<>(context);
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            Context context = this.f35293a.get();
            if (context != null) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
                if (telephonyManager != null) {
                    PhoneStateListener phoneStateListener = new PhoneStateListener() { // from class: com.verizon.ads.EnvironmentInfo.PhoneStateListenerThread.1
                        @Override // android.telephony.PhoneStateListener
                        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                            if (signalStrength.isGsm()) {
                                int unused = NetworkOperatorInfo.f35290b = (signalStrength.getGsmSignalStrength() * 2) - 113;
                            } else {
                                int unused2 = NetworkOperatorInfo.f35290b = signalStrength.getCdmaDbm();
                            }
                        }
                    };
                    this.f35294b = phoneStateListener;
                    telephonyManager.listen(phoneStateListener, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
                    return;
                }
                EnvironmentInfo.f35277a.d("Could not register signals strength listener. No telephony service available.");
                return;
            }
            EnvironmentInfo.f35277a.d("Application context was destroyed. Cannot listen for signals strength.");
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$ScreenInfo.class */
    public static class ScreenInfo {

        /* renamed from: a  reason: collision with root package name */
        private static final Logger f35296a = Logger.getInstance(ScreenInfo.class);

        /* renamed from: b  reason: collision with root package name */
        private final int f35297b;

        /* renamed from: c  reason: collision with root package name */
        private final float f35298c;

        /* renamed from: d  reason: collision with root package name */
        private int f35299d;
        private int e;

        private ScreenInfo(Context context) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            this.f35297b = displayMetrics.densityDpi;
            this.f35298c = displayMetrics.density;
            if (Build.VERSION.SDK_INT >= 17) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                if (windowManager != null) {
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    Point point = new Point();
                    defaultDisplay.getRealSize(point);
                    this.e = point.x;
                    this.f35299d = point.y;
                    return;
                }
                f35296a.w("Unable to determine display size.");
                return;
            }
            this.e = displayMetrics.widthPixels;
            this.f35299d = displayMetrics.heightPixels;
        }

        public float getDensity() {
            return this.f35298c;
        }

        public int getDensityDpi() {
            return this.f35297b;
        }

        public int getHeight() {
            return this.f35299d;
        }

        public int getWidth() {
            return this.e;
        }
    }

    public EnvironmentInfo(final Context context) {
        this.f35279c = context;
        this.f35280d = new NetworkOperatorInfo(context);
        this.e = new DeviceInfo(context);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.EnvironmentInfo.1
            @Override // java.lang.Runnable
            public void run() {
                EnvironmentInfo.a(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        synchronized (EnvironmentInfo.class) {
            try {
                if (!VASAds.isAnonymous()) {
                    if (f35278b == null) {
                        try {
                            try {
                                try {
                                    f35278b = new GoogleAdvertisingIdInfo(AdvertisingIdClient.getAdvertisingIdInfo(context));
                                } catch (IOException e) {
                                    f35277a.e("Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn't support getting advertising ID)", e);
                                }
                            } catch (GooglePlayServicesRepairableException e2) {
                                f35277a.e("Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled", e2);
                            }
                        } catch (GooglePlayServicesNotAvailableException e3) {
                            f35277a.e("Unable to get google play services advertising info, google play services is not available", e3);
                        } catch (IllegalStateException e4) {
                            f35277a.e("Unable to get google play services advertising info, illegal state", e4);
                        }
                        if (f35278b == null) {
                            try {
                                ContentResolver contentResolver = context.getContentResolver();
                                f35278b = new AmazonAdvertisingIdInfo(Settings.Secure.getString(contentResolver, "advertising_id"), Settings.Secure.getInt(contentResolver, "limit_ad_tracking"));
                            } catch (Settings.SettingNotFoundException e5) {
                                f35277a.e("Amazon advertiser info not available.", e5);
                            }
                        }
                        if (f35278b == null && !"Amazon".equalsIgnoreCase(Build.MANUFACTURER)) {
                            f35277a.w("No advertiser ID could be found. Please include Google Play Services Ads in your application if available.");
                        }
                        if (f35278b != null && Logger.isLogLevelEnabled(3)) {
                            f35277a.d(f35278b.toString());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NetworkInfo c(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null) {
            f35277a.e("Context is null.  Unable to get networkInfo.");
            return null;
        } else if (b.a(context, "android.permission.ACCESS_NETWORK_STATE") != 0 || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return null;
        } else {
            return connectivityManager.getActiveNetworkInfo();
        }
    }

    public static NetworkType getNetworkType() {
        if (VASAds.f35328a == null) {
            f35277a.e("Application context is null.  Unable to get network type.");
            return NetworkType.UNKNOWN;
        }
        NetworkInfo c2 = c(VASAds.f35328a.get());
        if (c2 == null) {
            return NetworkType.UNKNOWN;
        }
        if (!c2.isConnected()) {
            return NetworkType.OFFLINE;
        }
        int type = c2.getType();
        return type != 0 ? type != 1 ? NetworkType.UNKNOWN : NetworkType.WIFI : NetworkType.MOBILE;
    }

    public static boolean isNetworkAvailable() {
        if (VASAds.f35328a == null) {
            f35277a.e("Application context is null.  Unable to get networkInfo.");
            return false;
        }
        NetworkInfo c2 = c(VASAds.f35328a.get());
        return c2 != null && c2.isConnected();
    }

    public final AdvertisingIdInfo getAdvertisingIdInfo() {
        if (VASAds.isAnonymous()) {
            return null;
        }
        return f35278b;
    }

    public final DeviceInfo getDeviceInfo() {
        return this.e;
    }

    public final String getHashedDeviceId(String str) {
        String string;
        if (VASAds.isAnonymous() || (string = Settings.Secure.getString(this.f35279c.getContentResolver(), "android_id")) == null) {
            return null;
        }
        try {
            byte[] digest = MessageDigest.getInstance(str).digest(string.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString();
        } catch (Exception e) {
            f35277a.e(String.format("Exception calculating <%s> hashed device id with ANDROID_ID <%s>", str, string), e);
            return null;
        }
    }

    public final Location getLocation() {
        LocationManager locationManager;
        if (VASAds.isAnonymous() || !VASAds.isLocationEnabled() || b.a(this.f35279c, "android.permission.ACCESS_FINE_LOCATION") != 0 || (locationManager = (LocationManager) this.f35279c.getSystemService("location")) == null) {
            return null;
        }
        return locationManager.getLastKnownLocation("passive");
    }

    public final NetworkOperatorInfo getNetworkOperatorInfo() {
        if (VASAds.isAnonymous()) {
            return null;
        }
        return this.f35280d;
    }

    public final String getSDKVersion() {
        return VASAds.getSDKInfo().version;
    }

    public final boolean isCustomTabsSupported() {
        Intent intent;
        synchronized (this) {
            try {
                PackageManager packageManager = this.f35279c.getPackageManager();
                Iterator<ResolveInfo> it2 = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("http://www.yahoo.com")), 0).iterator();
                do {
                    if (it2.hasNext()) {
                        ResolveInfo next = it2.next();
                        intent = new Intent();
                        intent.setAction("android.support.customtabs.action.CustomTabsService");
                        intent.setPackage(next.activityInfo.packageName);
                    } else {
                        f35277a.d("Custom tabs is not supported.");
                        return false;
                    }
                } while (packageManager.resolveService(intent, 0) == null);
                f35277a.d("Custom tabs is supported by at least one installed browser.");
                return true;
            }
        }
    }
}

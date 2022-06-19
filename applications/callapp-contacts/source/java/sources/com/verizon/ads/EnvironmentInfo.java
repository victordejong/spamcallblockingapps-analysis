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
import androidx.core.content.C0790b;
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

    /* renamed from: a */
    private static final Logger f61165a = Logger.getInstance(EnvironmentInfo.class);

    /* renamed from: b */
    private static volatile AdvertisingIdInfo f61166b;

    /* renamed from: c */
    private final Context f61167c;

    /* renamed from: d */
    private final NetworkOperatorInfo f61168d;

    /* renamed from: e */
    private final DeviceInfo f61169e;

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

        /* renamed from: a */
        private static final Logger f61172a = Logger.getInstance(DeviceInfo.class);

        /* renamed from: b */
        private static volatile String f61173b = String.format("Android %s", Build.VERSION.RELEASE);

        /* renamed from: c */
        private final Context f61174c;

        /* renamed from: d */
        private final ScreenInfo f61175d;

        /* renamed from: e */
        private Set<CameraType> f61176e;

        DeviceInfo(Context context) {
            this.f61174c = context;
            this.f61175d = new ScreenInfo(context);
            if (!VASAds.isAnonymous()) {
                this.f61176e = new HashSet();
                if (Build.VERSION.SDK_INT >= 21) {
                    CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                    if (cameraManager != null) {
                        try {
                            for (String str : cameraManager.getCameraIdList()) {
                                Integer num = (Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING);
                                if (num == null) {
                                    f61172a.m5567d("Camera detected but lens facing characteristic returned null.");
                                } else if (num.intValue() == 0) {
                                    this.f61176e.add(CameraType.FRONT);
                                } else if (num.intValue() == 1) {
                                    this.f61176e.add(CameraType.BACK);
                                }
                            }
                        } catch (Throwable th) {
                            f61172a.m5564e("An error occurred determining camera availability.", th);
                        }
                    } else {
                        f61172a.m5567d("Could not determine camera availability. Unable to access Camera Service.");
                    }
                } else {
                    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                    int numberOfCameras = Camera.getNumberOfCameras();
                    for (int i = 0; i < numberOfCameras; i++) {
                        Camera.getCameraInfo(i, cameraInfo);
                        if (cameraInfo.facing == 1) {
                            this.f61176e.add(CameraType.FRONT);
                        } else if (cameraInfo.facing == 0) {
                            this.f61176e.add(CameraType.BACK);
                        }
                    }
                }
            }
            m5577a(context);
        }

        /* renamed from: a */
        private static long m5576a(File file) {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        }

        /* renamed from: a */
        private void m5577a(final Context context) {
            synchronized (this) {
                if (Build.VERSION.SDK_INT > 16) {
                    f61173b = WebSettings.getDefaultUserAgent(context);
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.verizon.ads.EnvironmentInfo.DeviceInfo.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String unused = DeviceInfo.f61173b = new WebView(context).getSettings().getUserAgentString();
                        }
                    });
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
            if ("mounted_ro".equals(r0) != false) goto L15;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Long getAvailableStorage() {
            /*
                r5 = this;
                boolean r0 = com.verizon.ads.VASAds.isAnonymous()
                if (r0 == 0) goto L8
                r0 = 0
                return r0
            L8:
                java.lang.String r0 = android.os.Environment.getExternalStorageState()
                r6 = r0
                r0 = r5
                android.content.Context r0 = r0.f61174c
                java.lang.String r1 = "android.permission.READ_EXTERNAL_STORAGE"
                int r0 = androidx.core.content.C0790b.m44498a(r0, r1)
                if (r0 != 0) goto L1d
                r0 = 1
                r7 = r0
                goto L1f
            L1d:
                r0 = 0
                r7 = r0
            L1f:
                r0 = 0
                r8 = r0
                r0 = r8
                r10 = r0
                r0 = r7
                if (r0 == 0) goto L45
                java.lang.String r0 = "mounted"
                r1 = r6
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L3d
                r0 = r8
                r10 = r0
                java.lang.String r0 = "mounted_ro"
                r1 = r6
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L45
            L3d:
                java.io.File r0 = android.os.Environment.getExternalStorageDirectory()
                long r0 = m5576a(r0)
                r10 = r0
            L45:
                java.io.File r0 = android.os.Environment.getRootDirectory()
                long r0 = m5576a(r0)
                r1 = r10
                long r0 = r0 + r1
                java.lang.Long r0 = java.lang.Long.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.EnvironmentInfo.DeviceInfo.getAvailableStorage():java.lang.Long");
        }

        public Float getBatteryLevel() {
            Intent registerReceiver;
            if (!VASAds.isAnonymous() && (registerReceiver = this.f61174c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) != null) {
                return Float.valueOf(registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1));
            }
            return null;
        }

        public CameraType[] getCameras() {
            Set<CameraType> set = this.f61176e;
            return set != null ? (CameraType[]) set.toArray(new CameraType[set.size()]) : new CameraType[0];
        }

        public String getConfigurationOrientation() {
            int i = this.f61174c.getResources().getConfiguration().orientation;
            return i != 1 ? i != 2 ? getNaturalOrientation() : ORIENTATION_LANDSCAPE : ORIENTATION_PORTRAIT;
        }

        public String getCountryCode() {
            return Locale.getDefault().getCountry();
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x009c, code lost:
            r0 = r0.indexOf(37);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00a5, code lost:
            if (r0 >= 0) goto L42;
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
            WindowManager windowManager = (WindowManager) this.f61174c.getSystemService("window");
            if (windowManager == null) {
                f61172a.m5559w("Window Service unavailable. Could not determine orientation.");
                return null;
            }
            Configuration configuration = this.f61174c.getResources().getConfiguration();
            int rotation = windowManager.getDefaultDisplay().getRotation();
            return (configuration.orientation == 2 && (rotation == 0 || rotation == 2)) ? ORIENTATION_LANDSCAPE : configuration.orientation == 1 ? (rotation == 1 || rotation == 3) ? ORIENTATION_LANDSCAPE : ORIENTATION_PORTRAIT : ORIENTATION_PORTRAIT;
        }

        public NetworkInfo getNetworkInfo() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return EnvironmentInfo.m5578c(this.f61174c);
        }

        public String getOSBuildNumber() {
            return Build.ID;
        }

        public String getOSVersion() {
            return Build.VERSION.RELEASE;
        }

        public ScreenInfo getScreenInfo() {
            return this.f61175d;
        }

        public String getUserAgent() {
            return f61173b;
        }

        public Float getVolume(int i) {
            if (VASAds.isAnonymous()) {
                return null;
            }
            AudioManager audioManager = (AudioManager) this.f61174c.getSystemService("audio");
            if (audioManager != null) {
                return Float.valueOf(audioManager.getStreamVolume(i) / audioManager.getStreamMaxVolume(i));
            }
            if (!Logger.isLogLevelEnabled(3)) {
                return null;
            }
            f61172a.m5567d(String.format("Audio Service unavailable. Could not determine volume for stream type %d", Integer.valueOf(i)));
            return null;
        }

        public Boolean hasBluetooth() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f61174c.getPackageManager().hasSystemFeature("android.hardware.bluetooth") && C0790b.m44498a(this.f61174c, "android.permission.BLUETOOTH") == 0);
        }

        public Boolean hasCameraPermission() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(C0790b.m44498a(this.f61174c, "android.permission.CAMERA") == 0);
        }

        public Boolean hasGPS() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f61174c.getPackageManager().hasSystemFeature("android.hardware.location.gps") && C0790b.m44498a(this.f61174c, "android.permission.ACCESS_FINE_LOCATION") == 0);
        }

        public Boolean hasHeadphonesPluggedIn() {
            AudioDeviceInfo[] devices;
            if (VASAds.isAnonymous()) {
                return null;
            }
            AudioManager audioManager = (AudioManager) this.f61174c.getSystemService("audio");
            if (audioManager == null) {
                f61172a.m5567d("Cannot determine headphone status. No Audio Service available.");
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
            return Boolean.valueOf(this.f61174c.getPackageManager().hasSystemFeature("android.hardware.microphone") && C0790b.m44498a(this.f61174c, "android.permission.RECORD_AUDIO") == 0);
        }

        public Boolean hasNFC() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return Boolean.valueOf(this.f61174c.getPackageManager().hasSystemFeature("android.hardware.nfc") && C0790b.m44498a(this.f61174c, "android.permission.NFC") == 0);
        }

        public Boolean isCharging() {
            Intent registerReceiver;
            if (!VASAds.isAnonymous() && (registerReceiver = this.f61174c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) != null) {
                int intExtra = registerReceiver.getIntExtra("status", -1);
                return Boolean.valueOf(intExtra == 2 || intExtra == 5);
            }
            return null;
        }

        public boolean isExternalStorageWritable() {
            return (Build.VERSION.SDK_INT > 18 || C0790b.m44498a(this.f61174c, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) && "mounted".equals(Environment.getExternalStorageState());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$NetworkOperatorInfo.class */
    public static class NetworkOperatorInfo {

        /* renamed from: a */
        private static final Logger f61179a = Logger.getInstance(NetworkOperatorInfo.class);

        /* renamed from: b */
        private static volatile int f61180b;

        /* renamed from: c */
        private static PhoneStateListenerThread f61181c;

        /* renamed from: d */
        private String f61182d;

        /* renamed from: e */
        private String f61183e;

        /* renamed from: f */
        private String f61184f;

        NetworkOperatorInfo(Context context) {
            String networkOperator;
            this.f61183e = "0";
            this.f61184f = "0";
            if (!VASAds.isAnonymous()) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
                if (telephonyManager != null) {
                    this.f61182d = telephonyManager.getNetworkOperatorName();
                    m5573a(context);
                }
                Configuration configuration = context.getResources().getConfiguration();
                if (telephonyManager != null && (networkOperator = telephonyManager.getNetworkOperator()) != null && networkOperator.length() >= 6) {
                    try {
                        this.f61183e = networkOperator.substring(0, 3);
                    } catch (NumberFormatException e) {
                        f61179a.m5558w("Unable to parse mcc from network operator", e);
                    }
                    try {
                        this.f61184f = networkOperator.substring(3);
                    } catch (NumberFormatException e2) {
                        f61179a.m5558w("Unable to parse mnc from network operator", e2);
                    }
                }
                if (TextUtils.isEmpty(this.f61183e) || this.f61183e.equals("0")) {
                    this.f61183e = Integer.toString(configuration.mcc);
                }
                if (!TextUtils.isEmpty(this.f61184f) && !this.f61184f.equals("0")) {
                    return;
                }
                this.f61184f = Integer.toString(configuration.mnc);
            }
        }

        /* renamed from: a */
        private static void m5573a(Context context) {
            synchronized (NetworkOperatorInfo.class) {
                try {
                    if (f61181c == null) {
                        PhoneStateListenerThread phoneStateListenerThread = new PhoneStateListenerThread(context.getApplicationContext());
                        f61181c = phoneStateListenerThread;
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
            return Integer.valueOf(f61180b);
        }

        public String getMCC() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return this.f61183e;
        }

        public String getMNC() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return this.f61184f;
        }

        public String getNetworkOperatorName() {
            if (VASAds.isAnonymous()) {
                return null;
            }
            return this.f61182d;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$NetworkType.class */
    public enum NetworkType {
        UNKNOWN,
        OFFLINE,
        WIFI,
        MOBILE
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$PhoneStateListenerThread.class */
    public static final class PhoneStateListenerThread extends HandlerThread {

        /* renamed from: a */
        private final WeakReference<Context> f61185a;

        /* renamed from: b */
        private PhoneStateListener f61186b;

        private PhoneStateListenerThread(Context context) {
            super("vas-phone-state-listener");
            this.f61185a = new WeakReference<>(context);
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            super.run();
            Context context = this.f61185a.get();
            if (context == null) {
                EnvironmentInfo.f61165a.m5567d("Application context was destroyed. Cannot listen for signals strength.");
                return;
            }
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
            if (telephonyManager == null) {
                EnvironmentInfo.f61165a.m5567d("Could not register signals strength listener. No telephony service available.");
                return;
            }
            PhoneStateListener phoneStateListener = new PhoneStateListener() { // from class: com.verizon.ads.EnvironmentInfo.PhoneStateListenerThread.1
                @Override // android.telephony.PhoneStateListener
                public void onSignalStrengthsChanged(SignalStrength signalStrength) {
                    if (signalStrength.isGsm()) {
                        int unused = NetworkOperatorInfo.f61180b = (signalStrength.getGsmSignalStrength() * 2) - 113;
                    } else {
                        int unused2 = NetworkOperatorInfo.f61180b = signalStrength.getCdmaDbm();
                    }
                }
            };
            this.f61186b = phoneStateListener;
            telephonyManager.listen(phoneStateListener, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/EnvironmentInfo$ScreenInfo.class */
    public static class ScreenInfo {

        /* renamed from: a */
        private static final Logger f61188a = Logger.getInstance(ScreenInfo.class);

        /* renamed from: b */
        private final int f61189b;

        /* renamed from: c */
        private final float f61190c;

        /* renamed from: d */
        private int f61191d;

        /* renamed from: e */
        private int f61192e;

        private ScreenInfo(Context context) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            this.f61189b = displayMetrics.densityDpi;
            this.f61190c = displayMetrics.density;
            if (Build.VERSION.SDK_INT < 17) {
                this.f61192e = displayMetrics.widthPixels;
                this.f61191d = displayMetrics.heightPixels;
                return;
            }
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                f61188a.m5559w("Unable to determine display size.");
                return;
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            this.f61192e = point.x;
            this.f61191d = point.y;
        }

        public float getDensity() {
            return this.f61190c;
        }

        public int getDensityDpi() {
            return this.f61189b;
        }

        public int getHeight() {
            return this.f61191d;
        }

        public int getWidth() {
            return this.f61192e;
        }
    }

    public EnvironmentInfo(final Context context) {
        this.f61167c = context;
        this.f61168d = new NetworkOperatorInfo(context);
        this.f61169e = new DeviceInfo(context);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.EnvironmentInfo.1
            @Override // java.lang.Runnable
            public void run() {
                EnvironmentInfo.m5580a(context);
            }
        });
    }

    /* renamed from: a */
    public static void m5580a(Context context) {
        synchronized (EnvironmentInfo.class) {
            try {
                if (VASAds.isAnonymous()) {
                    return;
                }
                if (f61166b == null) {
                    try {
                        try {
                            try {
                                f61166b = new GoogleAdvertisingIdInfo(AdvertisingIdClient.getAdvertisingIdInfo(context));
                            } catch (IOException e) {
                                f61165a.m5564e("Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn't support getting advertising ID)", e);
                            }
                        } catch (GooglePlayServicesRepairableException e2) {
                            f61165a.m5564e("Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled", e2);
                        }
                    } catch (GooglePlayServicesNotAvailableException e3) {
                        f61165a.m5564e("Unable to get google play services advertising info, google play services is not available", e3);
                    } catch (IllegalStateException e4) {
                        f61165a.m5564e("Unable to get google play services advertising info, illegal state", e4);
                    }
                    if (f61166b == null) {
                        try {
                            ContentResolver contentResolver = context.getContentResolver();
                            f61166b = new AmazonAdvertisingIdInfo(Settings.Secure.getString(contentResolver, "advertising_id"), Settings.Secure.getInt(contentResolver, "limit_ad_tracking"));
                        } catch (Settings.SettingNotFoundException e5) {
                            f61165a.m5564e("Amazon advertiser info not available.", e5);
                        }
                    }
                    if (f61166b == null && !"Amazon".equalsIgnoreCase(Build.MANUFACTURER)) {
                        f61165a.m5559w("No advertiser ID could be found. Please include Google Play Services Ads in your application if available.");
                    }
                    if (f61166b != null && Logger.isLogLevelEnabled(3)) {
                        f61165a.m5567d(f61166b.toString());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static NetworkInfo m5578c(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null) {
            f61165a.m5565e("Context is null.  Unable to get networkInfo.");
            return null;
        } else if (C0790b.m44498a(context, "android.permission.ACCESS_NETWORK_STATE") == 0 && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null) {
            return connectivityManager.getActiveNetworkInfo();
        } else {
            return null;
        }
    }

    public static NetworkType getNetworkType() {
        if (VASAds.f61232a == null) {
            f61165a.m5565e("Application context is null.  Unable to get network type.");
            return NetworkType.UNKNOWN;
        }
        NetworkInfo m5578c = m5578c(VASAds.f61232a.get());
        if (m5578c == null) {
            return NetworkType.UNKNOWN;
        }
        if (!m5578c.isConnected()) {
            return NetworkType.OFFLINE;
        }
        int type = m5578c.getType();
        return type != 0 ? type != 1 ? NetworkType.UNKNOWN : NetworkType.WIFI : NetworkType.MOBILE;
    }

    public static boolean isNetworkAvailable() {
        if (VASAds.f61232a == null) {
            f61165a.m5565e("Application context is null.  Unable to get networkInfo.");
            return false;
        }
        NetworkInfo m5578c = m5578c(VASAds.f61232a.get());
        return m5578c != null && m5578c.isConnected();
    }

    public final AdvertisingIdInfo getAdvertisingIdInfo() {
        if (VASAds.isAnonymous()) {
            return null;
        }
        return f61166b;
    }

    public final DeviceInfo getDeviceInfo() {
        return this.f61169e;
    }

    public final String getHashedDeviceId(String str) {
        String string;
        if (!VASAds.isAnonymous() && (string = Settings.Secure.getString(this.f61167c.getContentResolver(), "android_id")) != null) {
            try {
                byte[] digest = MessageDigest.getInstance(str).digest(string.getBytes("UTF-8"));
                StringBuilder sb = new StringBuilder(digest.length * 2);
                int length = digest.length;
                for (int i = 0; i < length; i++) {
                    sb.append(String.format("%02X", Byte.valueOf(digest[i])));
                }
                return sb.toString();
            } catch (Exception e) {
                f61165a.m5564e(String.format("Exception calculating <%s> hashed device id with ANDROID_ID <%s>", str, string), e);
                return null;
            }
        }
        return null;
    }

    public final Location getLocation() {
        LocationManager locationManager;
        if (VASAds.isAnonymous() || !VASAds.isLocationEnabled() || C0790b.m44498a(this.f61167c, "android.permission.ACCESS_FINE_LOCATION") != 0 || (locationManager = (LocationManager) this.f61167c.getSystemService("location")) == null) {
            return null;
        }
        return locationManager.getLastKnownLocation("passive");
    }

    public final NetworkOperatorInfo getNetworkOperatorInfo() {
        if (VASAds.isAnonymous()) {
            return null;
        }
        return this.f61168d;
    }

    public final String getSDKVersion() {
        return VASAds.getSDKInfo().version;
    }

    public final boolean isCustomTabsSupported() {
        Intent intent;
        synchronized (this) {
            try {
                PackageManager packageManager = this.f61167c.getPackageManager();
                Iterator<ResolveInfo> it2 = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("http://www.yahoo.com")), 0).iterator();
                do {
                    if (!it2.hasNext()) {
                        f61165a.m5567d("Custom tabs is not supported.");
                        return false;
                    }
                    ResolveInfo next = it2.next();
                    intent = new Intent();
                    intent.setAction("android.support.customtabs.action.CustomTabsService");
                    intent.setPackage(next.activityInfo.packageName);
                } while (packageManager.resolveService(intent, 0) == null);
                f61165a.m5567d("Custom tabs is supported by at least one installed browser.");
                return true;
            }
        }
    }
}

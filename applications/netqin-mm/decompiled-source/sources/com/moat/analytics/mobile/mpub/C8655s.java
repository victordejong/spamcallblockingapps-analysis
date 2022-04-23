package com.moat.analytics.mobile.mpub;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.mopub.common.GpsHelper;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.mpub.s */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/s.class */
public class C8655s {

    /* renamed from: a */
    public static String f33554a;

    /* renamed from: b */
    public static C8657a f33555b;

    /* renamed from: c */
    public static C8658b f33556c;

    /* renamed from: com.moat.analytics.mobile.mpub.s$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/s$a.class */
    public static class C8657a {

        /* renamed from: a */
        public boolean f33558a;

        /* renamed from: b */
        public String f33559b;

        /* renamed from: c */
        public String f33560c;

        /* renamed from: d */
        public String f33561d;

        public C8657a() {
            this.f33558a = false;
            this.f33559b = "_unknown_";
            this.f33560c = "_unknown_";
            this.f33561d = "_unknown_";
            try {
                Context c = C8655s.m4833c();
                if (c != null) {
                    this.f33558a = true;
                    PackageManager packageManager = c.getPackageManager();
                    this.f33560c = c.getPackageName();
                    this.f33559b = packageManager.getApplicationLabel(c.getApplicationInfo()).toString();
                    this.f33561d = packageManager.getInstallerPackageName(this.f33560c);
                } else {
                    C8652p.m4848a(3, "Util", this, "Can't get app name, appContext is null.");
                }
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }

        /* renamed from: a */
        public String m4826a() {
            return this.f33559b;
        }

        /* renamed from: b */
        public String m4824b() {
            return this.f33560c;
        }

        /* renamed from: c */
        public String m4823c() {
            String str = this.f33561d;
            if (str == null) {
                str = "_unknown_";
            }
            return str;
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.s$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/s$b.class */
    public static class C8658b {

        /* renamed from: a */
        public String f33562a;

        /* renamed from: b */
        public String f33563b;

        /* renamed from: c */
        public Integer f33564c;

        /* renamed from: d */
        public boolean f33565d;

        /* renamed from: e */
        public boolean f33566e;

        /* renamed from: f */
        public boolean f33567f;

        public C8658b() {
            this.f33562a = "_unknown_";
            this.f33563b = "_unknown_";
            this.f33564c = -1;
            this.f33565d = false;
            this.f33566e = false;
            this.f33567f = false;
            try {
                Context c = C8655s.m4833c();
                if (c != null) {
                    this.f33567f = true;
                    TelephonyManager telephonyManager = (TelephonyManager) c.getSystemService("phone");
                    this.f33562a = telephonyManager.getSimOperatorName();
                    this.f33563b = telephonyManager.getNetworkOperatorName();
                    this.f33564c = Integer.valueOf(telephonyManager.getPhoneType());
                    this.f33565d = C8655s.m4827i();
                    this.f33566e = C8655s.m4834b(c);
                }
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }
    }

    /* renamed from: a */
    public static double m4838a() {
        try {
            AudioManager audioManager = (AudioManager) C8612a.m4997a().getSystemService("audio");
            int h = m4828h();
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            double d = h;
            double d2 = streamMaxVolume;
            Double.isNaN(d);
            Double.isNaN(d2);
            return d / d2;
        } catch (Exception e) {
            C8643m.m4879a(e);
            return 0.0d;
        }
    }

    /* renamed from: a */
    public static void m4837a(final Context context) {
        try {
            AsyncTask.execute(new Runnable() { // from class: com.moat.analytics.mobile.mpub.s.1
                @Override // java.lang.Runnable
                public void run() {
                    Throwable e;
                    String str;
                    String str2;
                    try {
                        Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                        Class<?> cls2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                        Object invoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context);
                        if (!((Boolean) cls2.getMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]).invoke(invoke, new Object[0])).booleanValue()) {
                            String unused = C8655s.f33554a = (String) cls2.getMethod("getId", new Class[0]).invoke(invoke, new Object[0]);
                            str2 = "Retrieved Advertising ID = " + C8655s.f33554a;
                        } else {
                            str2 = "User has limited ad tracking";
                        }
                        C8652p.m4848a(3, "Util", this, str2);
                    } catch (ClassNotFoundException e2) {
                        e = e2;
                        str = "ClassNotFoundException while retrieving Advertising ID";
                        C8652p.m4844a("Util", this, str, e);
                    } catch (NoSuchMethodException e3) {
                        e = e3;
                        str = "NoSuchMethodException while retrieving Advertising ID";
                        C8652p.m4844a("Util", this, str, e);
                    } catch (Exception e4) {
                        C8643m.m4879a(e4);
                    }
                }
            });
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: b */
    public static String m4835b() {
        return f33554a;
    }

    /* renamed from: b */
    public static boolean m4834b(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* renamed from: c */
    public static Context m4833c() {
        WeakReference<Context> weakReference = ((C8641k) MoatAnalytics.getInstance()).f33522e;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: d */
    public static C8657a m4832d() {
        C8657a aVar = f33555b;
        if (aVar == null || !aVar.f33558a) {
            f33555b = new C8657a();
        }
        return f33555b;
    }

    /* renamed from: e */
    public static C8658b m4831e() {
        C8658b bVar = f33556c;
        if (bVar == null || !bVar.f33567f) {
            f33556c = new C8658b();
        }
        return f33556c;
    }

    /* renamed from: h */
    public static int m4828h() {
        try {
            return ((AudioManager) C8612a.m4997a().getSystemService("audio")).getStreamVolume(3);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return 0;
        }
    }

    /* renamed from: i */
    public static boolean m4827i() {
        int i;
        Context c = m4833c();
        boolean z = false;
        if (c != null) {
            int i2 = Build.VERSION.SDK_INT;
            ContentResolver contentResolver = c.getContentResolver();
            i = i2 >= 17 ? Settings.Global.getInt(contentResolver, "adb_enabled", 0) : Settings.Secure.getInt(contentResolver, "adb_enabled", 0);
        } else {
            i = 0;
        }
        if (i == 1) {
            z = true;
        }
        return z;
    }
}

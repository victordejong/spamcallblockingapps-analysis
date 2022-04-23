package com.moat.analytics.mobile.inm;

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
/* renamed from: com.moat.analytics.mobile.inm.s */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/s.class */
public class C8574s {

    /* renamed from: a */
    public static String f33337a;

    /* renamed from: b */
    public static C8576a f33338b;

    /* renamed from: c */
    public static C8577b f33339c;

    /* renamed from: com.moat.analytics.mobile.inm.s$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/s$a.class */
    public static class C8576a {

        /* renamed from: a */
        public boolean f33341a;

        /* renamed from: b */
        public String f33342b;

        /* renamed from: c */
        public String f33343c;

        /* renamed from: d */
        public String f33344d;

        public C8576a() {
            this.f33341a = false;
            this.f33342b = "_unknown_";
            this.f33343c = "_unknown_";
            this.f33344d = "_unknown_";
            try {
                Context c = C8574s.m5089c();
                if (c != null) {
                    this.f33341a = true;
                    PackageManager packageManager = c.getPackageManager();
                    this.f33343c = c.getPackageName();
                    this.f33342b = packageManager.getApplicationLabel(c.getApplicationInfo()).toString();
                    this.f33344d = packageManager.getInstallerPackageName(this.f33343c);
                    return;
                }
                C8571p.m5104a(3, "Util", this, "Can't get app name, appContext is null.");
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }

        /* renamed from: a */
        public String m5082a() {
            return this.f33342b;
        }

        /* renamed from: b */
        public String m5080b() {
            return this.f33343c;
        }

        /* renamed from: c */
        public String m5079c() {
            String str = this.f33344d;
            return str != null ? str : "_unknown_";
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.s$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/s$b.class */
    public static class C8577b {

        /* renamed from: a */
        public String f33345a;

        /* renamed from: b */
        public String f33346b;

        /* renamed from: c */
        public Integer f33347c;

        /* renamed from: d */
        public boolean f33348d;

        /* renamed from: e */
        public boolean f33349e;

        /* renamed from: f */
        public boolean f33350f;

        public C8577b() {
            this.f33345a = "_unknown_";
            this.f33346b = "_unknown_";
            this.f33347c = -1;
            this.f33348d = false;
            this.f33349e = false;
            this.f33350f = false;
            try {
                Context c = C8574s.m5089c();
                if (c != null) {
                    this.f33350f = true;
                    TelephonyManager telephonyManager = (TelephonyManager) c.getSystemService("phone");
                    this.f33345a = telephonyManager.getSimOperatorName();
                    this.f33346b = telephonyManager.getNetworkOperatorName();
                    this.f33347c = Integer.valueOf(telephonyManager.getPhoneType());
                    this.f33348d = C8574s.m5083i();
                    this.f33349e = C8574s.m5090b(c);
                }
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }
    }

    /* renamed from: a */
    public static double m5094a() {
        try {
            AudioManager audioManager = (AudioManager) C8531a.m5253a().getSystemService("audio");
            int h = m5084h();
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            double d = h;
            double d2 = streamMaxVolume;
            Double.isNaN(d);
            Double.isNaN(d2);
            return d / d2;
        } catch (Exception e) {
            C8562m.m5135a(e);
            return 0.0d;
        }
    }

    /* renamed from: a */
    public static void m5093a(final Context context) {
        try {
            AsyncTask.execute(new Runnable() { // from class: com.moat.analytics.mobile.inm.s.1
                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    try {
                        Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                        Class<?> cls2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
                        Object invoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context);
                        if (!((Boolean) cls2.getMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]).invoke(invoke, new Object[0])).booleanValue()) {
                            String unused = C8574s.f33337a = (String) cls2.getMethod("getId", new Class[0]).invoke(invoke, new Object[0]);
                            C8571p.m5104a(3, "Util", this, "Retrieved Advertising ID = " + C8574s.f33337a);
                            return;
                        }
                        C8571p.m5104a(3, "Util", this, "User has limited ad tracking");
                    } catch (ClassNotFoundException e) {
                        e = e;
                        str = "ClassNotFoundException while retrieving Advertising ID";
                        C8571p.m5100a("Util", this, str, e);
                    } catch (NoSuchMethodException e2) {
                        e = e2;
                        str = "NoSuchMethodException while retrieving Advertising ID";
                        C8571p.m5100a("Util", this, str, e);
                    } catch (Exception e3) {
                        C8562m.m5135a(e3);
                    }
                }
            });
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: b */
    public static String m5091b() {
        return f33337a;
    }

    /* renamed from: b */
    public static boolean m5090b(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    /* renamed from: c */
    public static Context m5089c() {
        WeakReference<Context> weakReference = ((C8560k) MoatAnalytics.getInstance()).f33305e;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: d */
    public static C8576a m5088d() {
        C8576a aVar = f33338b;
        if (aVar == null || !aVar.f33341a) {
            f33338b = new C8576a();
        }
        return f33338b;
    }

    /* renamed from: e */
    public static C8577b m5087e() {
        C8577b bVar = f33339c;
        if (bVar == null || !bVar.f33350f) {
            f33339c = new C8577b();
        }
        return f33339c;
    }

    /* renamed from: h */
    public static int m5084h() {
        try {
            return ((AudioManager) C8531a.m5253a().getSystemService("audio")).getStreamVolume(3);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return 0;
        }
    }

    /* renamed from: i */
    public static boolean m5083i() {
        int i;
        Context c = m5089c();
        if (c != null) {
            int i2 = Build.VERSION.SDK_INT;
            ContentResolver contentResolver = c.getContentResolver();
            i = i2 >= 17 ? Settings.Global.getInt(contentResolver, "adb_enabled", 0) : Settings.Secure.getInt(contentResolver, "adb_enabled", 0);
        } else {
            i = 0;
        }
        return i == 1;
    }
}

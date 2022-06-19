package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.facebook.C2102k;
import com.facebook.internal.C1994a;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import com.facebook.p094a.C1927m;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.y */
/* loaded from: classes-dex2jar.jar:com/facebook/y.class */
public final class C2209y {

    /* renamed from: a */
    private static final String f6471a = C2209y.class.getName();

    /* renamed from: b */
    private static AtomicBoolean f6472b = new AtomicBoolean(false);

    /* renamed from: c */
    private static AtomicBoolean f6473c = new AtomicBoolean(false);

    /* renamed from: d */
    private static C2211a f6474d = new C2211a(true, "com.facebook.sdk.AutoInitEnabled");

    /* renamed from: e */
    private static C2211a f6475e = new C2211a(true, "com.facebook.sdk.AutoLogAppEventsEnabled");

    /* renamed from: f */
    private static C2211a f6476f = new C2211a(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");

    /* renamed from: g */
    private static C2211a f6477g = new C2211a(false, "auto_event_setup_enabled");

    /* renamed from: h */
    private static SharedPreferences f6478h;

    /* renamed from: com.facebook.y$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/y$a.class */
    public static class C2211a {

        /* renamed from: a */
        String f6480a;

        /* renamed from: b */
        Boolean f6481b;

        /* renamed from: c */
        boolean f6482c;

        /* renamed from: d */
        long f6483d;

        C2211a(boolean z, String str) {
            this.f6482c = z;
            this.f6480a = str;
        }

        /* renamed from: a */
        boolean m14922a() {
            return this.f6481b == null ? this.f6482c : this.f6481b.booleanValue();
        }
    }

    C2209y() {
    }

    /* renamed from: a */
    public static void m14940a() {
        if (C2095j.m15374a() && f6472b.compareAndSet(false, true)) {
            f6478h = C2095j.m15360h().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
            m14938a(f6475e, f6476f, f6474d);
            m14926j();
            m14925k();
            m14924l();
        }
    }

    /* renamed from: a */
    private static void m14938a(C2211a... c2211aArr) {
        for (C2211a c2211a : c2211aArr) {
            if (c2211a == f6477g) {
                m14926j();
            } else if (c2211a.f6481b == null) {
                m14934c(c2211a);
                if (c2211a.f6481b == null) {
                    m14932d(c2211a);
                }
            } else {
                m14936b(c2211a);
            }
        }
    }

    /* renamed from: b */
    public static void m14937b() {
        try {
            Context m15360h = C2095j.m15360h();
            ApplicationInfo applicationInfo = m15360h.getPackageManager().getApplicationInfo(m15360h.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.getBoolean("com.facebook.sdk.AutoAppLinkEnabled", false)) {
                return;
            }
            C1927m c1927m = new C1927m(m15360h);
            Bundle bundle = new Bundle();
            if (!C2079x.m15440d()) {
                bundle.putString("SchemeWarning", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                Log.w(f6471a, "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
            }
            c1927m.m15858a("fb_auto_applink", bundle);
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: b */
    public static void m14936b(C2211a c2211a) {
        m14923m();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("value", c2211a.f6481b);
            jSONObject.put("last_timestamp", c2211a.f6483d);
            f6478h.edit().putString(c2211a.f6480a, jSONObject.toString()).commit();
            m14924l();
        } catch (Exception e) {
            C2079x.m15470a(f6471a, e);
        }
    }

    /* renamed from: c */
    private static void m14934c(C2211a c2211a) {
        m14923m();
        try {
            String string = f6478h.getString(c2211a.f6480a, "");
            if (string.isEmpty()) {
                return;
            }
            JSONObject jSONObject = new JSONObject(string);
            c2211a.f6481b = Boolean.valueOf(jSONObject.getBoolean("value"));
            c2211a.f6483d = jSONObject.getLong("last_timestamp");
        } catch (JSONException e) {
            C2079x.m15470a(f6471a, (Exception) e);
        }
    }

    /* renamed from: c */
    public static boolean m14935c() {
        m14940a();
        return f6474d.m14922a();
    }

    /* renamed from: d */
    private static void m14932d(C2211a c2211a) {
        m14923m();
        try {
            Context m15360h = C2095j.m15360h();
            ApplicationInfo applicationInfo = m15360h.getPackageManager().getApplicationInfo(m15360h.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey(c2211a.f6480a)) {
                return;
            }
            c2211a.f6481b = Boolean.valueOf(applicationInfo.metaData.getBoolean(c2211a.f6480a, c2211a.f6482c));
        } catch (PackageManager.NameNotFoundException e) {
            C2079x.m15470a(f6471a, (Exception) e);
        }
    }

    /* renamed from: d */
    public static boolean m14933d() {
        m14940a();
        return f6475e.m14922a();
    }

    /* renamed from: e */
    public static boolean m14931e() {
        m14940a();
        return f6476f.m14922a();
    }

    /* renamed from: f */
    public static boolean m14930f() {
        m14940a();
        return f6477g.m14922a();
    }

    /* renamed from: j */
    private static void m14926j() {
        m14934c(f6477g);
        final long currentTimeMillis = System.currentTimeMillis();
        if (f6477g.f6481b == null || currentTimeMillis - f6477g.f6483d >= 604800000) {
            f6477g.f6481b = null;
            f6477g.f6483d = 0L;
            if (!f6473c.compareAndSet(false, true)) {
                return;
            }
            C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.y.1
                @Override // java.lang.Runnable
                public void run() {
                    C2048l m15584a;
                    if (C2209y.f6476f.m14922a() && (m15584a = C2050m.m15584a(C2095j.m15356l(), false)) != null && m15584a.m15597i()) {
                        C1994a m15694b = C1994a.m15694b(C2095j.m15360h());
                        if (((m15694b == null || m15694b.m15695b() == null) ? null : m15694b.m15695b()) != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString("advertiser_id", m15694b.m15695b());
                            bundle.putString("fields", "auto_event_setup_enabled");
                            C2102k m15338a = C2102k.m15338a((C1803a) null, C2095j.m15356l(), (C2102k.AbstractC2108b) null);
                            m15338a.m15316a(true);
                            m15338a.m15341a(bundle);
                            JSONObject m14980b = m15338a.m15293i().m14980b();
                            if (m14980b != null) {
                                C2209y.f6477g.f6481b = Boolean.valueOf(m14980b.optBoolean("auto_event_setup_enabled", false));
                                C2209y.f6477g.f6483d = currentTimeMillis;
                                C2209y.m14936b(C2209y.f6477g);
                            }
                        }
                    }
                    C2209y.f6473c.set(false);
                }
            });
        }
    }

    /* renamed from: k */
    private static void m14925k() {
        try {
            Context m15360h = C2095j.m15360h();
            ApplicationInfo applicationInfo = m15360h.getPackageManager().getApplicationInfo(m15360h.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return;
            }
            if (!applicationInfo.metaData.containsKey("com.facebook.sdk.AutoLogAppEventsEnabled")) {
                Log.w(f6471a, "Please set a value for AutoLogAppEventsEnabled. Set the flag to TRUE if you want to collect app install, app launch and in-app purchase events automatically. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
            }
            if (!applicationInfo.metaData.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled")) {
                Log.w(f6471a, "You haven't set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
            }
            if (m14931e()) {
                return;
            }
            Log.w(f6471a, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you're sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results.");
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: l */
    private static void m14924l() {
        int i;
        int i2;
        if (f6472b.get() && C2095j.m15374a()) {
            Context m15360h = C2095j.m15360h();
            int i3 = 0 | ((f6474d.m14922a() ? 1 : 0) << 0) | ((f6475e.m14922a() ? 1 : 0) << 1) | ((f6476f.m14922a() ? 1 : 0) << 2);
            int i4 = f6478h.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
            if (i4 == i3) {
                return;
            }
            f6478h.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", i3).commit();
            try {
                ApplicationInfo applicationInfo = m15360h.getPackageManager().getApplicationInfo(m15360h.getPackageName(), 128);
                if (applicationInfo == null || applicationInfo.metaData == null) {
                    i = 0;
                    i2 = 0;
                } else {
                    String[] strArr = new String[3];
                    strArr[0] = "com.facebook.sdk.AutoInitEnabled";
                    strArr[1] = "com.facebook.sdk.AutoLogAppEventsEnabled";
                    strArr[2] = "com.facebook.sdk.AdvertiserIDCollectionEnabled";
                    i = 0;
                    i2 = 0;
                    for (int i5 = 0; i5 < strArr.length; i5++) {
                        try {
                            i = ((applicationInfo.metaData.containsKey(strArr[i5]) ? 1 : 0) << i5) | i;
                            try {
                                i2 |= (applicationInfo.metaData.getBoolean(strArr[i5], new boolean[]{true, true, true}[i5]) ? 1 : 0) << i5;
                            } catch (PackageManager.NameNotFoundException e) {
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException e3) {
                i = 0;
                i2 = 0;
            }
            C1927m c1927m = new C1927m(m15360h);
            Bundle bundle = new Bundle();
            bundle.putInt("usage", i);
            bundle.putInt("initial", i2);
            bundle.putInt("previous", i4);
            bundle.putInt("current", i3);
            c1927m.m15851b("fb_sdk_settings_changed", bundle);
        }
    }

    /* renamed from: m */
    private static void m14923m() {
        if (!f6472b.get()) {
            throw new FacebookSdkNotInitializedException("The UserSettingManager has not been initialized successfully");
        }
    }
}

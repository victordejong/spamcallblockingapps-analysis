package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.callapp.contacts.model.Constants;
import com.facebook.appevents.C10097m;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10234b;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.u */
/* loaded from: classes3-dex2jar.jar:com/facebook/u.class */
public final class C10513u {

    /* renamed from: a */
    private static final String f34267a = "com.facebook.u";

    /* renamed from: b */
    private static AtomicBoolean f34268b = new AtomicBoolean(false);

    /* renamed from: c */
    private static AtomicBoolean f34269c = new AtomicBoolean(false);

    /* renamed from: d */
    private static C10515a f34270d = new C10515a(true, "com.facebook.sdk.AutoInitEnabled");

    /* renamed from: e */
    private static C10515a f34271e = new C10515a(true, "com.facebook.sdk.AutoLogAppEventsEnabled");

    /* renamed from: f */
    private static C10515a f34272f = new C10515a(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");

    /* renamed from: g */
    private static C10515a f34273g = new C10515a(false, "auto_event_setup_enabled");

    /* renamed from: h */
    private static C10515a f34274h = new C10515a(true, "com.facebook.sdk.MonitorEnabled");

    /* renamed from: i */
    private static SharedPreferences f34275i;

    /* renamed from: com.facebook.u$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/u$a.class */
    public static final class C10515a {

        /* renamed from: a */
        String f34277a;

        /* renamed from: b */
        Boolean f34278b;

        /* renamed from: c */
        boolean f34279c;

        /* renamed from: d */
        long f34280d;

        C10515a(boolean z, String str) {
            this.f34279c = z;
            this.f34277a = str;
        }

        /* renamed from: a */
        final boolean m22664a() {
            Boolean bool = this.f34278b;
            return bool == null ? this.f34279c : bool.booleanValue();
        }
    }

    C10513u() {
    }

    /* renamed from: a */
    public static void m22679a() {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            Context m23290i = C10181g.m23290i();
            ApplicationInfo applicationInfo = m23290i.getPackageManager().getApplicationInfo(m23290i.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.getBoolean("com.facebook.sdk.AutoAppLinkEnabled", false)) {
                return;
            }
            C10097m c10097m = new C10097m(m23290i);
            Bundle bundle = new Bundle();
            if (!C10213ae.m23191f()) {
                bundle.putString("SchemeWarning", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                Log.w(f34267a, "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
            }
            c10097m.m23414a("fb_auto_applink", bundle);
        } catch (PackageManager.NameNotFoundException e) {
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m22678a(C10515a c10515a) {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            m22676b(c10515a);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }

    /* renamed from: b */
    private static void m22676b(C10515a c10515a) {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            m22665l();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("value", c10515a.f34278b);
                jSONObject.put("last_timestamp", c10515a.f34280d);
                f34275i.edit().putString(c10515a.f34277a, jSONObject.toString()).commit();
                m22666k();
            } catch (Exception e) {
                C10213ae.m23228a(f34267a, e);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }

    /* renamed from: b */
    public static boolean m22677b() {
        if (C10249a.m23108a(C10513u.class)) {
            return false;
        }
        try {
            m22668i();
            return f34270d.m22664a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return false;
        }
    }

    /* renamed from: c */
    private static void m22674c(C10515a c10515a) {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            m22665l();
            try {
                String string = f34275i.getString(c10515a.f34277a, "");
                if (string.isEmpty()) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(string);
                c10515a.f34278b = Boolean.valueOf(jSONObject.getBoolean("value"));
                c10515a.f34280d = jSONObject.getLong("last_timestamp");
            } catch (JSONException e) {
                C10213ae.m23228a(f34267a, (Exception) e);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }

    /* renamed from: c */
    public static boolean m22675c() {
        if (C10249a.m23108a(C10513u.class)) {
            return false;
        }
        try {
            m22668i();
            return f34271e.m22664a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m22673d() {
        if (C10249a.m23108a(C10513u.class)) {
            return false;
        }
        try {
            m22668i();
            return f34272f.m22664a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return false;
        }
    }

    /* renamed from: e */
    public static boolean m22672e() {
        if (C10249a.m23108a(C10513u.class)) {
            return false;
        }
        try {
            m22668i();
            return f34273g.m22664a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return false;
        }
    }

    /* renamed from: f */
    static /* synthetic */ C10515a m22671f() {
        if (C10249a.m23108a(C10513u.class)) {
            return null;
        }
        try {
            return f34272f;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return null;
        }
    }

    /* renamed from: g */
    static /* synthetic */ C10515a m22670g() {
        if (C10249a.m23108a(C10513u.class)) {
            return null;
        }
        try {
            return f34273g;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return null;
        }
    }

    /* renamed from: h */
    static /* synthetic */ AtomicBoolean m22669h() {
        if (C10249a.m23108a(C10513u.class)) {
            return null;
        }
        try {
            return f34269c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
            return null;
        }
    }

    /* renamed from: i */
    private static void m22668i() {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            if (!C10181g.m23306a()) {
                return;
            }
            if (!f34268b.compareAndSet(false, true)) {
                return;
            }
            f34275i = C10181g.m23290i().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
            C10515a c10515a = f34271e;
            C10515a c10515a2 = f34272f;
            C10515a c10515a3 = f34270d;
            if (!C10249a.m23108a(C10513u.class)) {
                for (int i = 0; i < 3; i++) {
                    C10515a c10515a4 = new C10515a[]{c10515a, c10515a2, c10515a3}[i];
                    if (c10515a4 == f34273g) {
                        m22667j();
                    } else if (c10515a4.f34278b == null) {
                        m22674c(c10515a4);
                        if (c10515a4.f34278b == null && !C10249a.m23108a(C10513u.class)) {
                            try {
                                m22665l();
                                try {
                                    Context m23290i = C10181g.m23290i();
                                    ApplicationInfo applicationInfo = m23290i.getPackageManager().getApplicationInfo(m23290i.getPackageName(), 128);
                                    if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey(c10515a4.f34277a)) {
                                        c10515a4.f34278b = Boolean.valueOf(applicationInfo.metaData.getBoolean(c10515a4.f34277a, c10515a4.f34279c));
                                    }
                                } catch (PackageManager.NameNotFoundException e) {
                                    C10213ae.m23228a(f34267a, (Exception) e);
                                }
                            } catch (Throwable th) {
                                C10249a.m23106a(th, C10513u.class);
                            }
                        }
                    } else {
                        m22676b(c10515a4);
                    }
                }
            }
            m22667j();
            if (!C10249a.m23108a(C10513u.class)) {
                try {
                    Context m23290i2 = C10181g.m23290i();
                    ApplicationInfo applicationInfo2 = m23290i2.getPackageManager().getApplicationInfo(m23290i2.getPackageName(), 128);
                    if (applicationInfo2 != null && applicationInfo2.metaData != null) {
                        if (!applicationInfo2.metaData.containsKey("com.facebook.sdk.AutoLogAppEventsEnabled")) {
                            Log.w(f34267a, "Please set a value for AutoLogAppEventsEnabled. Set the flag to TRUE if you want to collect app install, app launch and in-app purchase events automatically. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
                        }
                        if (!applicationInfo2.metaData.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled")) {
                            Log.w(f34267a, "You haven't set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
                        }
                        if (!m22673d()) {
                            Log.w(f34267a, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you're sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results.");
                        }
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                }
            }
            m22666k();
        } catch (Throwable th2) {
            C10249a.m23106a(th2, C10513u.class);
        }
    }

    /* renamed from: j */
    private static void m22667j() {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            m22674c(f34273g);
            final long currentTimeMillis = System.currentTimeMillis();
            if (f34273g.f34278b != null && currentTimeMillis - f34273g.f34280d < Constants.WEEK_IN_MILLIS) {
                return;
            }
            f34273g.f34278b = null;
            f34273g.f34280d = 0L;
            if (!f34269c.compareAndSet(false, true)) {
                return;
            }
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.u.1
                @Override // java.lang.Runnable
                public final void run() {
                    C10302p m23026a;
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        if (C10513u.m22671f().m22664a() && (m23026a = C10306q.m23026a(C10181g.m23286m(), false)) != null && m23026a.f33850g) {
                            C10234b m23133b = C10234b.m23133b(C10181g.m23290i());
                            String str = null;
                            if (m23133b != null) {
                                str = null;
                                if (m23133b.m23140a() != null) {
                                    str = m23133b.m23140a();
                                }
                            }
                            if (str != null) {
                                Bundle bundle = new Bundle();
                                bundle.putString("advertiser_id", m23133b.m23140a());
                                bundle.putString("fields", "auto_event_setup_enabled");
                                GraphRequest m23790a = GraphRequest.m23790a(C10181g.m23286m());
                                m23790a.f33082h = true;
                                m23790a.f33078d = bundle;
                                JSONObject jSONObject = GraphRequest.m23796a(m23790a).f33959a;
                                if (jSONObject != null) {
                                    C10513u.m22670g().f34278b = Boolean.valueOf(jSONObject.optBoolean("auto_event_setup_enabled", false));
                                    C10513u.m22670g().f34280d = currentTimeMillis;
                                    C10513u.m22678a(C10513u.m22670g());
                                }
                            }
                        }
                        C10513u.m22669h().set(false);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }

    /* renamed from: k */
    private static void m22666k() {
        int i;
        int i2;
        ApplicationInfo applicationInfo;
        int i3;
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            if (!f34268b.get() || !C10181g.m23306a()) {
                return;
            }
            Context m23290i = C10181g.m23290i();
            int i4 = ((f34270d.m22664a() ? 1 : 0) << 0) | 0 | ((f34271e.m22664a() ? 1 : 0) << 1) | ((f34272f.m22664a() ? 1 : 0) << 2) | ((f34274h.m22664a() ? 1 : 0) << 3);
            int i5 = f34275i.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
            if (i5 == i4) {
                return;
            }
            f34275i.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", i4).commit();
            try {
                applicationInfo = m23290i.getPackageManager().getApplicationInfo(m23290i.getPackageName(), 128);
            } catch (PackageManager.NameNotFoundException e) {
            }
            if (applicationInfo != null && applicationInfo.metaData != null) {
                String[] strArr = new String[4];
                strArr[0] = "com.facebook.sdk.AutoInitEnabled";
                strArr[1] = "com.facebook.sdk.AutoLogAppEventsEnabled";
                strArr[2] = "com.facebook.sdk.AdvertiserIDCollectionEnabled";
                strArr[3] = "com.facebook.sdk.MonitorEnabled";
                int i6 = 0;
                i = 0;
                int i7 = 0;
                while (true) {
                    i3 = i7;
                    if (i6 >= 4) {
                        break;
                    }
                    i3 = i7;
                    try {
                        i7 |= (applicationInfo.metaData.containsKey(strArr[i6]) ? 1 : 0) << i6;
                        i |= (applicationInfo.metaData.getBoolean(strArr[i6], new boolean[]{true, true, true, true}[i6]) ? 1 : 0) << i6;
                        i6++;
                    } catch (PackageManager.NameNotFoundException e2) {
                    }
                }
                i2 = i3;
                C10097m c10097m = new C10097m(m23290i);
                Bundle bundle = new Bundle();
                bundle.putInt("usage", i2);
                bundle.putInt("initial", i);
                bundle.putInt("previous", i5);
                bundle.putInt("current", i4);
                c10097m.m23417a(bundle);
            }
            i = 0;
            i2 = 0;
            C10097m c10097m2 = new C10097m(m23290i);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("usage", i2);
            bundle2.putInt("initial", i);
            bundle2.putInt("previous", i5);
            bundle2.putInt("current", i4);
            c10097m2.m23417a(bundle2);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }

    /* renamed from: l */
    private static void m22665l() {
        if (C10249a.m23108a(C10513u.class)) {
            return;
        }
        try {
            if (f34268b.get()) {
                return;
            }
            throw new FacebookSdkNotInitializedException("The UserSettingManager has not been initialized successfully");
        } catch (Throwable th) {
            C10249a.m23106a(th, C10513u.class);
        }
    }
}

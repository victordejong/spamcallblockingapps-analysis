package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.callapp.contacts.model.Constants;
import com.facebook.appevents.m;
import com.facebook.internal.ae;
import com.facebook.internal.b;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final String f20227a = "com.facebook.u";

    /* renamed from: b  reason: collision with root package name */
    private static AtomicBoolean f20228b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static AtomicBoolean f20229c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static a f20230d = new a(true, "com.facebook.sdk.AutoInitEnabled");
    private static a e = new a(true, "com.facebook.sdk.AutoLogAppEventsEnabled");
    private static a f = new a(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");
    private static a g = new a(false, "auto_event_setup_enabled");
    private static a h = new a(true, "com.facebook.sdk.MonitorEnabled");
    private static SharedPreferences i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/u$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f20232a;

        /* renamed from: b  reason: collision with root package name */
        Boolean f20233b;

        /* renamed from: c  reason: collision with root package name */
        boolean f20234c;

        /* renamed from: d  reason: collision with root package name */
        long f20235d;

        a(boolean z, String str) {
            this.f20234c = z;
            this.f20232a = str;
        }

        final boolean a() {
            Boolean bool = this.f20233b;
            return bool == null ? this.f20234c : bool.booleanValue();
        }
    }

    u() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                Context i2 = g.i();
                ApplicationInfo applicationInfo = i2.getPackageManager().getApplicationInfo(i2.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.getBoolean("com.facebook.sdk.AutoAppLinkEnabled", false)) {
                    m mVar = new m(i2);
                    Bundle bundle = new Bundle();
                    if (!ae.f()) {
                        bundle.putString("SchemeWarning", "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                        Log.w(f20227a, "You haven't set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest");
                    }
                    mVar.a("fb_auto_applink", bundle);
                }
            } catch (PackageManager.NameNotFoundException e2) {
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }

    static /* synthetic */ void a(a aVar) {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                b(aVar);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }

    private static void b(a aVar) {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                l();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("value", aVar.f20233b);
                    jSONObject.put("last_timestamp", aVar.f20235d);
                    i.edit().putString(aVar.f20232a, jSONObject.toString()).commit();
                    k();
                } catch (Exception e2) {
                    ae.a(f20227a, e2);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }

    public static boolean b() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return false;
        }
        try {
            i();
            return f20230d.a();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return false;
        }
    }

    private static void c(a aVar) {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                l();
                try {
                    String string = i.getString(aVar.f20232a, "");
                    if (!string.isEmpty()) {
                        JSONObject jSONObject = new JSONObject(string);
                        aVar.f20233b = Boolean.valueOf(jSONObject.getBoolean("value"));
                        aVar.f20235d = jSONObject.getLong("last_timestamp");
                    }
                } catch (JSONException e2) {
                    ae.a(f20227a, (Exception) e2);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }

    public static boolean c() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return false;
        }
        try {
            i();
            return e.a();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return false;
        }
    }

    public static boolean d() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return false;
        }
        try {
            i();
            return f.a();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return false;
        }
    }

    public static boolean e() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return false;
        }
        try {
            i();
            return g.a();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return false;
        }
    }

    static /* synthetic */ a f() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return null;
        }
        try {
            return f;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return null;
        }
    }

    static /* synthetic */ a g() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return null;
        }
        try {
            return g;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return null;
        }
    }

    static /* synthetic */ AtomicBoolean h() {
        if (com.facebook.internal.b.b.a.a(u.class)) {
            return null;
        }
        try {
            return f20229c;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, u.class);
            return null;
        }
    }

    private static void i() {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                if (g.a()) {
                    if (f20228b.compareAndSet(false, true)) {
                        i = g.i().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
                        a aVar = e;
                        a aVar2 = f;
                        a aVar3 = f20230d;
                        if (!com.facebook.internal.b.b.a.a(u.class)) {
                            for (int i2 = 0; i2 < 3; i2++) {
                                a aVar4 = new a[]{aVar, aVar2, aVar3}[i2];
                                if (aVar4 == g) {
                                    j();
                                } else if (aVar4.f20233b == null) {
                                    c(aVar4);
                                    if (aVar4.f20233b == null && !com.facebook.internal.b.b.a.a(u.class)) {
                                        try {
                                            l();
                                            try {
                                                Context i3 = g.i();
                                                ApplicationInfo applicationInfo = i3.getPackageManager().getApplicationInfo(i3.getPackageName(), 128);
                                                if (!(applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey(aVar4.f20232a))) {
                                                    aVar4.f20233b = Boolean.valueOf(applicationInfo.metaData.getBoolean(aVar4.f20232a, aVar4.f20234c));
                                                }
                                            } catch (PackageManager.NameNotFoundException e2) {
                                                ae.a(f20227a, (Exception) e2);
                                            }
                                        } catch (Throwable th) {
                                            com.facebook.internal.b.b.a.a(th, u.class);
                                        }
                                    }
                                } else {
                                    b(aVar4);
                                }
                            }
                        }
                        j();
                        if (!com.facebook.internal.b.b.a.a(u.class)) {
                            try {
                                Context i4 = g.i();
                                ApplicationInfo applicationInfo2 = i4.getPackageManager().getApplicationInfo(i4.getPackageName(), 128);
                                if (!(applicationInfo2 == null || applicationInfo2.metaData == null)) {
                                    if (!applicationInfo2.metaData.containsKey("com.facebook.sdk.AutoLogAppEventsEnabled")) {
                                        Log.w(f20227a, "Please set a value for AutoLogAppEventsEnabled. Set the flag to TRUE if you want to collect app install, app launch and in-app purchase events automatically. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
                                    }
                                    if (!applicationInfo2.metaData.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled")) {
                                        Log.w(f20227a, "You haven't set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events.");
                                    }
                                    if (!d()) {
                                        Log.w(f20227a, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you're sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results.");
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException e3) {
                            }
                        }
                        k();
                    }
                }
            } catch (Throwable th2) {
                com.facebook.internal.b.b.a.a(th2, u.class);
            }
        }
    }

    private static void j() {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                c(g);
                final long currentTimeMillis = System.currentTimeMillis();
                if (g.f20233b == null || currentTimeMillis - g.f20235d >= Constants.WEEK_IN_MILLIS) {
                    g.f20233b = null;
                    g.f20235d = 0L;
                    if (f20229c.compareAndSet(false, true)) {
                        g.f().execute(new Runnable() { // from class: com.facebook.u.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                p a2;
                                if (!com.facebook.internal.b.b.a.a(this)) {
                                    try {
                                        if (u.f().a() && (a2 = q.a(g.m(), false)) != null && a2.g) {
                                            b b2 = b.b(g.i());
                                            String str = null;
                                            if (b2 != null) {
                                                str = null;
                                                if (b2.a() != null) {
                                                    str = b2.a();
                                                }
                                            }
                                            if (str != null) {
                                                Bundle bundle = new Bundle();
                                                bundle.putString("advertiser_id", b2.a());
                                                bundle.putString("fields", "auto_event_setup_enabled");
                                                GraphRequest a3 = GraphRequest.a(g.m());
                                                a3.h = true;
                                                a3.f19373d = bundle;
                                                JSONObject jSONObject = GraphRequest.a(a3).f20036a;
                                                if (jSONObject != null) {
                                                    u.g().f20233b = Boolean.valueOf(jSONObject.optBoolean("auto_event_setup_enabled", false));
                                                    u.g().f20235d = currentTimeMillis;
                                                    u.a(u.g());
                                                }
                                            }
                                        }
                                        u.h().set(false);
                                    } catch (Throwable th) {
                                        com.facebook.internal.b.b.a.a(th, this);
                                    }
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }

    private static void k() {
        int i2;
        ApplicationInfo applicationInfo;
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                if (f20228b.get() && g.a()) {
                    Context i3 = g.i();
                    int i4 = 0;
                    int i5 = ((f20230d.a() ? 1 : 0) << 0) | 0 | ((e.a() ? 1 : 0) << 1) | ((f.a() ? 1 : 0) << 2) | ((h.a() ? 1 : 0) << 3);
                    int i6 = i.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
                    if (i6 != i5) {
                        i.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", i5).commit();
                        try {
                            applicationInfo = i3.getPackageManager().getApplicationInfo(i3.getPackageName(), 128);
                        } catch (PackageManager.NameNotFoundException e2) {
                        }
                        if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                            String[] strArr = new String[4];
                            strArr[0] = "com.facebook.sdk.AutoInitEnabled";
                            strArr[1] = "com.facebook.sdk.AutoLogAppEventsEnabled";
                            strArr[2] = "com.facebook.sdk.AdvertiserIDCollectionEnabled";
                            strArr[3] = "com.facebook.sdk.MonitorEnabled";
                            int i7 = 0;
                            i2 = 0;
                            int i8 = 0;
                            while (true) {
                                i4 = i8;
                                if (i7 >= 4) {
                                    break;
                                }
                                i4 = i8;
                                try {
                                    i8 |= (applicationInfo.metaData.containsKey(strArr[i7]) ? 1 : 0) << i7;
                                    i2 |= (applicationInfo.metaData.getBoolean(strArr[i7], new boolean[]{true, true, true, true}[i7]) ? 1 : 0) << i7;
                                    i7++;
                                } catch (PackageManager.NameNotFoundException e3) {
                                }
                            }
                            m mVar = new m(i3);
                            Bundle bundle = new Bundle();
                            bundle.putInt("usage", i4);
                            bundle.putInt("initial", i2);
                            bundle.putInt("previous", i6);
                            bundle.putInt("current", i5);
                            mVar.a(bundle);
                        }
                        i2 = 0;
                        m mVar2 = new m(i3);
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("usage", i4);
                        bundle2.putInt("initial", i2);
                        bundle2.putInt("previous", i6);
                        bundle2.putInt("current", i5);
                        mVar2.a(bundle2);
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }

    private static void l() {
        if (!com.facebook.internal.b.b.a.a(u.class)) {
            try {
                if (!f20228b.get()) {
                    throw new FacebookSdkNotInitializedException("The UserSettingManager has not been initialized successfully");
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, u.class);
            }
        }
    }
}

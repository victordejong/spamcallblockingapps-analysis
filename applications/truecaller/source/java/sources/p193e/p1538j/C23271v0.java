package p193e.p1538j;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1165q;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23271v0;
import s1.z.c.l;
@Metadata(d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0010\bÁ\u0002\u0018��2\u00020\u0001:\u00017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0007J\b\u0010\u001f\u001a\u00020\u001eH\u0007J\b\u0010 \u001a\u00020\u001eH\u0007J\b\u0010!\u001a\u00020\u001eH\u0007J\b\u0010\"\u001a\u00020\u001eH\u0007J\b\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020$H\u0002J!\u0010&\u001a\u00020$2\u0012\u0010'\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130(\"\u00020\u0013H\u0002¢\u0006\u0002\u0010)J\u0010\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020\u0013H\u0002J\b\u0010,\u001a\u00020$H\u0007J\b\u0010-\u001a\u00020$H\u0002J\b\u0010.\u001a\u00020$H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u0010+\u001a\u00020\u0013H\u0002J\u0010\u00100\u001a\u00020$2\u0006\u00101\u001a\u00020\u001eH\u0007J\u0010\u00102\u001a\u00020$2\u0006\u00101\u001a\u00020\u001eH\u0007J\u0010\u00103\u001a\u00020$2\u0006\u00101\u001a\u00020\u001eH\u0007J\u0010\u00104\u001a\u00020$2\u0006\u00101\u001a\u00020\u001eH\u0007J\b\u00105\u001a\u00020$H\u0002J\u0010\u00106\u001a\u00020$2\u0006\u0010+\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.¢\u0006\u0002\n��¨\u00068"}, d2 = {"Lcom/facebook/UserSettingsManager;", "", "()V", "ADVERTISERID_COLLECTION_FALSE_WARNING", "", "ADVERTISERID_COLLECTION_NOT_SET_WARNING", "ADVERTISER_ID_KEY", "APPLICATION_FIELDS", "AUTOLOG_APPEVENT_NOT_SET_WARNING", "AUTO_APP_LINK_WARNING", "EVENTS_CODELESS_SETUP_ENABLED", "LAST_TIMESTAMP", "TAG", "TIMEOUT_7D", "", "USER_SETTINGS", "USER_SETTINGS_BITMASK", "VALUE", "advertiserIDCollectionEnabled", "Lcom/facebook/UserSettingsManager$UserSetting;", "autoInitEnabled", "autoLogAppEventsEnabled", "codelessSetupEnabled", "isFetchingCodelessStatus", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isInitialized", "monitorEnabled", "userSettingPref", "Landroid/content/SharedPreferences;", "getAdvertiserIDCollectionEnabled", "", "getAutoInitEnabled", "getAutoLogAppEventsEnabled", "getCodelessSetupEnabled", "getMonitorEnabled", "initializeCodelessSetupEnabledAsync", "", "initializeIfNotInitialized", "initializeUserSetting", "userSettings", "", "([Lcom/facebook/UserSettingsManager$UserSetting;)V", "loadSettingFromManifest", "userSetting", "logIfAutoAppLinkEnabled", "logIfSDKSettingsChanged", "logWarnings", "readSettingFromCache", "setAdvertiserIDCollectionEnabled", "flag", "setAutoInitEnabled", "setAutoLogAppEventsEnabled", "setMonitorEnabled", "validateInitialized", "writeSettingToCache", "UserSetting", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.v0 */
/* loaded from: classes2-dex2jar.jar:e/j/v0.class */
public final class C23271v0 {

    /* renamed from: b */
    public static final String f64401b;

    /* renamed from: j */
    public static SharedPreferences f64409j;

    /* renamed from: a */
    public static final C23271v0 f64400a = new C23271v0();

    /* renamed from: c */
    public static final AtomicBoolean f64402c = new AtomicBoolean(false);

    /* renamed from: d */
    public static final AtomicBoolean f64403d = new AtomicBoolean(false);

    /* renamed from: e */
    public static final C23272a f64404e = new C23272a(true, "com.facebook.sdk.AutoInitEnabled");

    /* renamed from: f */
    public static final C23272a f64405f = new C23272a(true, "com.facebook.sdk.AutoLogAppEventsEnabled");

    /* renamed from: g */
    public static final C23272a f64406g = new C23272a(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");

    /* renamed from: h */
    public static final C23272a f64407h = new C23272a(false, "auto_event_setup_enabled");

    /* renamed from: i */
    public static final C23272a f64408i = new C23272a(true, "com.facebook.sdk.MonitorEnabled");

    @Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u000b\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0016\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/facebook/UserSettingsManager$UserSetting;", "", "defaultVal", "", AnalyticsConstants.KEY, "", "(ZLjava/lang/String;)V", "getDefaultVal", "()Z", "setDefaultVal", "(Z)V", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "lastTS", "", "getLastTS", "()J", "setLastTS", "(J)V", "value", "getValue", "()Ljava/lang/Boolean;", "setValue", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.v0$a */
    /* loaded from: classes2-dex2jar.jar:e/j/v0$a.class */
    public static final class C23272a {

        /* renamed from: a */
        public boolean f64410a;

        /* renamed from: b */
        public String f64411b;

        /* renamed from: c */
        public Boolean f64412c;

        /* renamed from: d */
        public long f64413d;

        public C23272a(boolean z, String str) {
            l.e(str, AnalyticsConstants.KEY);
            this.f64410a = z;
            this.f64411b = str;
        }

        /* renamed from: a */
        public final boolean m7300a() {
            Boolean bool = this.f64412c;
            return bool == null ? this.f64410a : bool.booleanValue();
        }
    }

    static {
        String name = C23271v0.class.getName();
        l.d(name, "UserSettingsManager::class.java.name");
        f64401b = name;
    }

    /* renamed from: a */
    public static final boolean m7310a() {
        if (C1220a.m41623b(C23271v0.class)) {
            return false;
        }
        try {
            f64400a.m7307d();
            return f64406g.m7300a();
        } catch (Throwable th) {
            C1220a.m41624a(th, C23271v0.class);
            return false;
        }
    }

    /* renamed from: b */
    public static final boolean m7309b() {
        if (C1220a.m41623b(C23271v0.class)) {
            return false;
        }
        try {
            f64400a.m7307d();
            return f64405f.m7300a();
        } catch (Throwable th) {
            C1220a.m41624a(th, C23271v0.class);
            return false;
        }
    }

    /* renamed from: c */
    public final void m7308c() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C23272a c23272a = f64407h;
            m7303h(c23272a);
            final long currentTimeMillis = System.currentTimeMillis();
            if (c23272a.f64412c != null && currentTimeMillis - c23272a.f64413d < 604800000) {
                return;
            }
            c23272a.f64412c = null;
            c23272a.f64413d = 0L;
            if (!f64403d.compareAndSet(false, true)) {
                return;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23228f0.m7350e().execute(new Runnable() { // from class: e.j.t
                @Override // java.lang.Runnable
                public final void run() {
                    long j = currentTimeMillis;
                    if (C1220a.m41623b(C23271v0.class)) {
                        return;
                    }
                    try {
                        if (C23271v0.f64406g.m7300a()) {
                            C1127d0 c1127d0 = C1127d0.f3107a;
                            C23228f0 c23228f02 = C23228f0.f64291a;
                            C1124c0 m41738f = C1127d0.m41738f(C23228f0.m7353b(), false);
                            if (m41738f != null && m41738f.f3098h) {
                                C1165q m41703b = C1165q.C1166a.m41703b(C23228f0.m7354a());
                                String m41705a = (m41703b == null || m41703b.m41705a() == null) ? null : m41703b.m41705a();
                                if (m41705a != null) {
                                    Bundle bundle = new Bundle();
                                    bundle.putString("advertiser_id", m41705a);
                                    bundle.putString("fields", "auto_event_setup_enabled");
                                    GraphRequest m42000h = GraphRequest.f2543k.m42000h(null, "app", null);
                                    m42000h.m42008l(bundle);
                                    JSONObject jSONObject = m42000h.m42017c().f64333c;
                                    if (jSONObject != null) {
                                        C23271v0.C23272a c23272a2 = C23271v0.f64407h;
                                        c23272a2.f64412c = Boolean.valueOf(jSONObject.optBoolean("auto_event_setup_enabled", false));
                                        c23272a2.f64413d = j;
                                        C23271v0.f64400a.m7301j(c23272a2);
                                    }
                                }
                            }
                        }
                        C23271v0.f64403d.set(false);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C23271v0.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: d */
    public final void m7307d() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!C23228f0.m7345j()) {
                return;
            }
            int i = 0;
            if (!f64402c.compareAndSet(false, true)) {
                return;
            }
            SharedPreferences sharedPreferences = C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
            l.d(sharedPreferences, "FacebookSdk.getApplicationContext()\n            .getSharedPreferences(USER_SETTINGS, Context.MODE_PRIVATE)");
            f64409j = sharedPreferences;
            C23272a c23272a = f64405f;
            C23272a c23272a2 = f64406g;
            C23272a c23272a3 = f64404e;
            if (!C1220a.m41623b(this)) {
                while (i < 3) {
                    C23272a c23272a4 = new C23272a[]{c23272a, c23272a2, c23272a3}[i];
                    int i2 = i + 1;
                    if (c23272a4 == f64407h) {
                        m7308c();
                        i = i2;
                    } else if (c23272a4.f64412c == null) {
                        m7303h(c23272a4);
                        i = i2;
                        if (c23272a4.f64412c == null) {
                            m7306e(c23272a4);
                            i = i2;
                        }
                    } else {
                        m7301j(c23272a4);
                        i = i2;
                    }
                }
            }
            m7308c();
            m7304g();
            m7305f();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: e */
    public final void m7306e(C23272a c23272a) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            m7302i();
            try {
                C23228f0 c23228f0 = C23228f0.f64291a;
                Context m7354a = C23228f0.m7354a();
                ApplicationInfo applicationInfo = m7354a.getPackageManager().getApplicationInfo(m7354a.getPackageName(), 128);
                if ((applicationInfo == null ? null : applicationInfo.metaData) == null || !applicationInfo.metaData.containsKey(c23272a.f64411b)) {
                    return;
                }
                c23272a.f64412c = Boolean.valueOf(applicationInfo.metaData.getBoolean(c23272a.f64411b, c23272a.f64410a));
            } catch (PackageManager.NameNotFoundException e) {
                C1168q0.m41696F(f64401b, e);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c8 A[Catch: all -> 0x01f0, TRY_ENTER, TryCatch #0 {all -> 0x01f0, blocks: (B:5:0x0008, B:8:0x0012, B:11:0x001d, B:16:0x0031, B:21:0x0043, B:26:0x0055, B:32:0x007d, B:34:0x0085, B:37:0x0098, B:39:0x00a0, B:41:0x00b6, B:44:0x00cf, B:47:0x00d9, B:50:0x0106, B:56:0x012c, B:61:0x016d, B:68:0x01c8, B:71:0x01d4, B:72:0x01df, B:75:0x01e8), top: B:83:0x0008 }] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7305f() {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1538j.C23271v0.m7305f():void");
    }

    /* renamed from: g */
    public final void m7304g() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            ApplicationInfo applicationInfo = m7354a.getPackageManager().getApplicationInfo(m7354a.getPackageName(), 128);
            if ((applicationInfo == null ? null : applicationInfo.metaData) == null) {
                return;
            }
            applicationInfo.metaData.containsKey("com.facebook.sdk.AutoLogAppEventsEnabled");
            applicationInfo.metaData.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled");
            m7310a();
        } catch (PackageManager.NameNotFoundException e) {
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: h */
    public final void m7303h(C23272a c23272a) {
        String str = "";
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            m7302i();
            try {
                SharedPreferences sharedPreferences = f64409j;
                if (sharedPreferences == null) {
                    l.l("userSettingPref");
                    throw null;
                }
                String string = sharedPreferences.getString(c23272a.f64411b, "");
                if (string != null) {
                    str = string;
                }
                if (!(str.length() > 0)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(str);
                c23272a.f64412c = Boolean.valueOf(jSONObject.getBoolean("value"));
                c23272a.f64413d = jSONObject.getLong("last_timestamp");
            } catch (JSONException e) {
                C1168q0.m41696F(f64401b, e);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: i */
    public final void m7302i() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            if (f64402c.get()) {
                return;
            }
            throw new C23232g0("The UserSettingManager has not been initialized successfully");
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: j */
    public final void m7301j(C23272a c23272a) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            m7302i();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("value", c23272a.f64412c);
                jSONObject.put("last_timestamp", c23272a.f64413d);
                SharedPreferences sharedPreferences = f64409j;
                if (sharedPreferences == null) {
                    l.l("userSettingPref");
                    throw null;
                }
                sharedPreferences.edit().putString(c23272a.f64411b, jSONObject.toString()).apply();
                m7305f();
            } catch (Exception e) {
                C1168q0.m41696F(f64401b, e);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}

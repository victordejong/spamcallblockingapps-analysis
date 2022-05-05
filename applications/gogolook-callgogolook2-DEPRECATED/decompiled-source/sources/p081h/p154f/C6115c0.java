package p081h.p154f;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.C2283m;
import com.facebook.internal.C2381b;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.f.c0 */
/* loaded from: classes-dex2jar.jar:h/f/c0.class */
public final class C6115c0 {

    /* renamed from: a */
    public static final String f15208a = "h.f.c0";

    /* renamed from: b */
    public static AtomicBoolean f15209b = new AtomicBoolean(false);

    /* renamed from: c */
    public static AtomicBoolean f15210c = new AtomicBoolean(false);

    /* renamed from: d */
    public static C6117b f15211d = new C6117b(true, "com.facebook.sdk.AutoInitEnabled");

    /* renamed from: e */
    public static C6117b f15212e = new C6117b(true, "com.facebook.sdk.AutoLogAppEventsEnabled");

    /* renamed from: f */
    public static C6117b f15213f = new C6117b(true, "com.facebook.sdk.AdvertiserIDCollectionEnabled");

    /* renamed from: g */
    public static C6117b f15214g = new C6117b(false, "auto_event_setup_enabled");

    /* renamed from: h */
    public static SharedPreferences f15215h;

    /* renamed from: h.f.c0$a */
    /* loaded from: classes-dex2jar.jar:h/f/c0$a.class */
    public static final class RunnableC6116a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f15216a;

        public RunnableC6116a(long j) {
            this.f15216a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2464o a;
            if (C6115c0.f15213f.m23798a() && (a = C2466p.m34643a(C6135n.m23745f(), false)) != null && a.m34665b()) {
                C2381b d = C2381b.m34923d(C6135n.m23746e());
                if (((d == null || d.m34931a() == null) ? null : d.m34931a()) != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("advertiser_id", d.m34931a());
                    bundle.putString("fields", "auto_event_setup_enabled");
                    GraphRequest a2 = GraphRequest.m35461a((AccessToken) null, C6135n.m23745f(), (GraphRequest.AbstractC2230f) null);
                    a2.m35439a(true);
                    a2.m35464a(bundle);
                    JSONObject b = a2.m35437b().m23698b();
                    if (b != null) {
                        C6115c0.f15214g.f15218b = Boolean.valueOf(b.optBoolean("auto_event_setup_enabled", false));
                        C6115c0.f15214g.f15220d = this.f15216a;
                        C6115c0.m23807d(C6115c0.f15214g);
                    }
                }
            }
            C6115c0.f15210c.set(false);
        }
    }

    /* renamed from: h.f.c0$b */
    /* loaded from: classes-dex2jar.jar:h/f/c0$b.class */
    public static class C6117b {

        /* renamed from: a */
        public String f15217a;

        /* renamed from: b */
        public Boolean f15218b;

        /* renamed from: c */
        public boolean f15219c;

        /* renamed from: d */
        public long f15220d;

        public C6117b(boolean z, String str) {
            this.f15219c = z;
            this.f15217a = str;
        }

        /* renamed from: a */
        public boolean m23798a() {
            Boolean bool = this.f15218b;
            return bool == null ? this.f15219c : bool.booleanValue();
        }
    }

    /* renamed from: a */
    public static void m23814a(boolean z) {
        f15211d.f15218b = Boolean.valueOf(z);
        f15211d.f15220d = System.currentTimeMillis();
        if (f15209b.get()) {
            m23807d(f15211d);
        } else {
            m23802i();
        }
    }

    /* renamed from: a */
    public static void m23813a(C6117b... bVarArr) {
        for (C6117b bVar : bVarArr) {
            if (bVar == f15214g) {
                m23803h();
            } else if (bVar.f15218b == null) {
                m23809c(bVar);
                if (bVar.f15218b == null) {
                    m23811b(bVar);
                }
            } else {
                m23807d(bVar);
            }
        }
    }

    /* renamed from: b */
    public static void m23811b(C6117b bVar) {
        m23799l();
        try {
            Context e = C6135n.m23746e();
            ApplicationInfo applicationInfo = e.getPackageManager().getApplicationInfo(e.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey(bVar.f15217a)) {
                bVar.f15218b = Boolean.valueOf(applicationInfo.metaData.getBoolean(bVar.f15217a, bVar.f15219c));
            }
        } catch (PackageManager.NameNotFoundException e2) {
            C2408g0.m34853a(f15208a, (Exception) e2);
        }
    }

    /* renamed from: c */
    public static void m23809c(C6117b bVar) {
        m23799l();
        try {
            String string = f15215h.getString(bVar.f15217a, "");
            if (!string.isEmpty()) {
                JSONObject jSONObject = new JSONObject(string);
                bVar.f15218b = Boolean.valueOf(jSONObject.getBoolean(C13032a.f29462d));
                bVar.f15220d = jSONObject.getLong("last_timestamp");
            }
        } catch (JSONException e) {
            C2408g0.m34853a(f15208a, (Exception) e);
        }
    }

    /* renamed from: d */
    public static void m23807d(C6117b bVar) {
        m23799l();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C13032a.f29462d, bVar.f15218b);
            jSONObject.put("last_timestamp", bVar.f15220d);
            f15215h.edit().putString(bVar.f15217a, jSONObject.toString()).commit();
            m23801j();
        } catch (Exception e) {
            C2408g0.m34853a(f15208a, e);
        }
    }

    /* renamed from: d */
    public static boolean m23808d() {
        m23802i();
        return f15213f.m23798a();
    }

    /* renamed from: e */
    public static boolean m23806e() {
        m23802i();
        return f15211d.m23798a();
    }

    /* renamed from: f */
    public static boolean m23805f() {
        m23802i();
        return f15212e.m23798a();
    }

    /* renamed from: g */
    public static boolean m23804g() {
        m23802i();
        return f15214g.m23798a();
    }

    /* renamed from: h */
    public static void m23803h() {
        m23809c(f15214g);
        long currentTimeMillis = System.currentTimeMillis();
        C6117b bVar = f15214g;
        if (bVar.f15218b == null || currentTimeMillis - bVar.f15220d >= 604800000) {
            C6117b bVar2 = f15214g;
            bVar2.f15218b = null;
            bVar2.f15220d = 0L;
            if (f15210c.compareAndSet(false, true)) {
                C6135n.m23737n().execute(new RunnableC6116a(currentTimeMillis));
            }
        }
    }

    /* renamed from: i */
    public static void m23802i() {
        if (C6135n.m23730u() && f15209b.compareAndSet(false, true)) {
            f15215h = C6135n.m23746e().getSharedPreferences("com.facebook.sdk.USER_SETTINGS", 0);
            m23813a(f15212e, f15213f, f15211d);
            m23803h();
            m23800k();
            m23801j();
        }
    }

    /* renamed from: j */
    public static void m23801j() {
        int i;
        ApplicationInfo applicationInfo;
        if (f15209b.get() && C6135n.m23730u()) {
            Context e = C6135n.m23746e();
            int i2 = 0;
            int i3 = ((f15211d.m23798a() ? 1 : 0) << 0) | 0 | ((f15212e.m23798a() ? 1 : 0) << 1) | ((f15213f.m23798a() ? 1 : 0) << 2);
            int i4 = f15215h.getInt("com.facebook.sdk.USER_SETTINGS_BITMASK", 0);
            if (i4 != i3) {
                f15215h.edit().putInt("com.facebook.sdk.USER_SETTINGS_BITMASK", i3).commit();
                try {
                    applicationInfo = e.getPackageManager().getApplicationInfo(e.getPackageName(), 128);
                } catch (PackageManager.NameNotFoundException e2) {
                }
                if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                    String[] strArr = new String[3];
                    strArr[0] = "com.facebook.sdk.AutoInitEnabled";
                    strArr[1] = "com.facebook.sdk.AutoLogAppEventsEnabled";
                    strArr[2] = "com.facebook.sdk.AdvertiserIDCollectionEnabled";
                    int i5 = 0;
                    int i6 = 0;
                    i = 0;
                    while (true) {
                        i2 = i6;
                        try {
                            if (i5 >= strArr.length) {
                                break;
                            }
                            i6 |= (applicationInfo.metaData.containsKey(strArr[i5]) ? 1 : 0) << i5;
                            i |= (applicationInfo.metaData.getBoolean(strArr[i5], new boolean[]{true, true, true}[i5]) ? 1 : 0) << i5;
                            i5++;
                        } catch (PackageManager.NameNotFoundException e3) {
                            i2 = i6;
                        }
                    }
                    C2283m mVar = new C2283m(e);
                    Bundle bundle = new Bundle();
                    bundle.putInt("usage", i2);
                    bundle.putInt("initial", i);
                    bundle.putInt("previous", i4);
                    bundle.putInt("current", i3);
                    mVar.m35293b("fb_sdk_settings_changed", bundle);
                }
                i = 0;
                C2283m mVar2 = new C2283m(e);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("usage", i2);
                bundle2.putInt("initial", i);
                bundle2.putInt("previous", i4);
                bundle2.putInt("current", i3);
                mVar2.m35293b("fb_sdk_settings_changed", bundle2);
            }
        }
    }

    /* renamed from: k */
    public static void m23800k() {
        try {
            Context e = C6135n.m23746e();
            ApplicationInfo applicationInfo = e.getPackageManager().getApplicationInfo(e.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                applicationInfo.metaData.containsKey("com.facebook.sdk.AutoLogAppEventsEnabled");
                applicationInfo.metaData.containsKey("com.facebook.sdk.AdvertiserIDCollectionEnabled");
                m23808d();
            }
        } catch (PackageManager.NameNotFoundException e2) {
        }
    }

    /* renamed from: l */
    public static void m23799l() {
        if (!f15209b.get()) {
            throw new C6142o("The UserSettingManager has not been initialized successfully");
        }
    }
}

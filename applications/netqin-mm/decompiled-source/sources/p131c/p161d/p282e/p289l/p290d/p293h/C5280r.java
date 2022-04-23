package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.h.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/r.class */
public class C5280r {

    /* renamed from: a */
    public final SharedPreferences f18049a;

    /* renamed from: b */
    public final C5128c f18050b;

    /* renamed from: f */
    public Boolean f18054f;

    /* renamed from: c */
    public final Object f18051c = new Object();

    /* renamed from: d */
    public TaskCompletionSource<Void> f18052d = new TaskCompletionSource<>();

    /* renamed from: e */
    public boolean f18053e = false;

    /* renamed from: g */
    public TaskCompletionSource<Void> f18055g = new TaskCompletionSource<>();

    public C5280r(C5128c cVar) {
        Context b = cVar.m24468b();
        this.f18050b = cVar;
        this.f18049a = CommonUtils.m7643h(b);
        Boolean a = m24075a();
        this.f18054f = a == null ? m24074a(b) : a;
        synchronized (this.f18051c) {
            if (m24072b()) {
                this.f18052d.m8596b((TaskCompletionSource<Void>) null);
            }
        }
    }

    /* renamed from: b */
    public static Boolean m24071b(Context context) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e) {
            C5192b.m24319a().m24316a("Unable to get PackageManager. Falling through", e);
            return null;
        }
    }

    /* renamed from: a */
    public final Boolean m24075a() {
        if (!this.f18049a.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.f18053e = false;
        return Boolean.valueOf(this.f18049a.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    /* renamed from: a */
    public final Boolean m24074a(Context context) {
        Boolean b = m24071b(context);
        if (b == null) {
            this.f18053e = false;
            return null;
        }
        this.f18053e = true;
        return Boolean.valueOf(Boolean.TRUE.equals(b));
    }

    /* renamed from: a */
    public void m24073a(boolean z) {
        if (z) {
            this.f18055g.m8596b((TaskCompletionSource<Void>) null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    /* renamed from: b */
    public final void m24070b(boolean z) {
        C5192b.m24319a().m24317a(String.format("Crashlytics automatic data collection %s by %s.", z ? "ENABLED" : "DISABLED", this.f18054f == null ? "global Firebase setting" : this.f18053e ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
    }

    /* renamed from: b */
    public boolean m24072b() {
        boolean booleanValue;
        synchronized (this) {
            booleanValue = this.f18054f != null ? this.f18054f.booleanValue() : this.f18050b.m24461g();
            m24070b(booleanValue);
        }
        return booleanValue;
    }

    /* renamed from: c */
    public Task<Void> m24069c() {
        Task<Void> a;
        synchronized (this.f18051c) {
            a = this.f18052d.m8600a();
        }
        return a;
    }

    /* renamed from: d */
    public Task<Void> m24068d() {
        return C5229h0.m24230a(this.f18055g.m8600a(), m24069c());
    }
}

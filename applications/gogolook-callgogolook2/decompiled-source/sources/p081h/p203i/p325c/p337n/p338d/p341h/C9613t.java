package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p337n.p338d.C9513b;
/* renamed from: h.i.c.n.d.h.t */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/t.class */
public class C9613t {

    /* renamed from: a */
    public final SharedPreferences f21893a;

    /* renamed from: b */
    public final C9435c f21894b;
    @Nullable

    /* renamed from: f */
    public Boolean f21898f;

    /* renamed from: c */
    public final Object f21895c = new Object();

    /* renamed from: d */
    public C9145i<Void> f21896d = new C9145i<>();

    /* renamed from: e */
    public boolean f21897e = false;

    /* renamed from: g */
    public C9145i<Void> f21899g = new C9145i<>();

    public C9613t(C9435c cVar) {
        Context b = cVar.m15173b();
        this.f21894b = cVar;
        this.f21893a = C9546h.m14912h(b);
        Boolean a = m14710a();
        this.f21898f = a == null ? m14709a(b) : a;
        synchronized (this.f21895c) {
            if (m14707b()) {
                this.f21896d.m16004b((C9145i<Void>) null);
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public static Boolean m14706b(Context context) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e) {
            C9513b.m15015a().m15012a("Unable to get PackageManager. Falling through", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    public final Boolean m14710a() {
        if (!this.f21893a.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.f21897e = false;
        return Boolean.valueOf(this.f21893a.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    @Nullable
    /* renamed from: a */
    public final Boolean m14709a(Context context) {
        Boolean b = m14706b(context);
        if (b == null) {
            this.f21897e = false;
            return null;
        }
        this.f21897e = true;
        return Boolean.valueOf(Boolean.TRUE.equals(b));
    }

    /* renamed from: a */
    public void m14708a(boolean z) {
        if (z) {
            this.f21899g.m16004b((C9145i<Void>) null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    /* renamed from: b */
    public final void m14705b(boolean z) {
        C9513b.m15015a().m15013a(String.format("Crashlytics automatic data collection %s by %s.", z ? "ENABLED" : "DISABLED", this.f21898f == null ? "global Firebase setting" : this.f21897e ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
    }

    /* renamed from: b */
    public boolean m14707b() {
        boolean booleanValue;
        synchronized (this) {
            booleanValue = this.f21898f != null ? this.f21898f.booleanValue() : this.f21894b.m15166g();
            m14705b(booleanValue);
        }
        return booleanValue;
    }

    /* renamed from: c */
    public AbstractC9143h<Void> m14704c() {
        AbstractC9143h<Void> a;
        synchronized (this.f21895c) {
            a = this.f21896d.m16008a();
        }
        return a;
    }

    /* renamed from: d */
    public AbstractC9143h<Void> m14703d() {
        return C9596l0.m14766a(this.f21899g.m16008a(), m14704c());
    }
}

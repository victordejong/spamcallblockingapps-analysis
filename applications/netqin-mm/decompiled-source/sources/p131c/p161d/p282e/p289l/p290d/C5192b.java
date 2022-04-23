package p131c.p161d.p282e.p289l.p290d;

import android.util.Log;
/* renamed from: c.d.e.l.d.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/b.class */
public class C5192b {

    /* renamed from: c */
    public static final C5192b f17854c = new C5192b("FirebaseCrashlytics");

    /* renamed from: a */
    public final String f17855a;

    /* renamed from: b */
    public int f17856b = 4;

    public C5192b(String str) {
        this.f17855a = str;
    }

    /* renamed from: a */
    public static C5192b m24319a() {
        return f17854c;
    }

    /* renamed from: a */
    public void m24317a(String str) {
        m24316a(str, null);
    }

    /* renamed from: a */
    public void m24316a(String str, Throwable th) {
        if (m24318a(3)) {
            Log.d(this.f17855a, str, th);
        }
    }

    /* renamed from: a */
    public final boolean m24318a(int i) {
        return this.f17856b <= i || Log.isLoggable(this.f17855a, i);
    }

    /* renamed from: b */
    public void m24315b(String str) {
        m24314b(str, null);
    }

    /* renamed from: b */
    public void m24314b(String str, Throwable th) {
        if (m24318a(6)) {
            Log.e(this.f17855a, str, th);
        }
    }

    /* renamed from: c */
    public void m24313c(String str) {
        m24312c(str, null);
    }

    /* renamed from: c */
    public void m24312c(String str, Throwable th) {
        if (m24318a(4)) {
            Log.i(this.f17855a, str, th);
        }
    }

    /* renamed from: d */
    public void m24311d(String str) {
        m24310d(str, null);
    }

    /* renamed from: d */
    public void m24310d(String str, Throwable th) {
        if (m24318a(5)) {
            Log.w(this.f17855a, str, th);
        }
    }
}

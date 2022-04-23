package p081h.p203i.p325c.p337n.p338d;

import android.util.Log;
/* renamed from: h.i.c.n.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/b.class */
public class C9513b {

    /* renamed from: c */
    public static final C9513b f21670c = new C9513b("FirebaseCrashlytics");

    /* renamed from: a */
    public final String f21671a;

    /* renamed from: b */
    public int f21672b = 4;

    public C9513b(String str) {
        this.f21671a = str;
    }

    /* renamed from: a */
    public static C9513b m15015a() {
        return f21670c;
    }

    /* renamed from: a */
    public void m15013a(String str) {
        m15012a(str, null);
    }

    /* renamed from: a */
    public void m15012a(String str, Throwable th) {
        m15014a(3);
    }

    /* renamed from: a */
    public final boolean m15014a(int i) {
        return this.f21672b <= i || Log.isLoggable(this.f21671a, i);
    }

    /* renamed from: b */
    public void m15011b(String str) {
        m15010b(str, null);
    }

    /* renamed from: b */
    public void m15010b(String str, Throwable th) {
        if (m15014a(6)) {
            Log.e(this.f21671a, str, th);
        }
    }

    /* renamed from: c */
    public void m15009c(String str) {
        m15008c(str, null);
    }

    /* renamed from: c */
    public void m15008c(String str, Throwable th) {
        m15014a(4);
    }

    /* renamed from: d */
    public void m15007d(String str) {
        m15006d(str, null);
    }

    /* renamed from: d */
    public void m15006d(String str, Throwable th) {
        m15014a(5);
    }
}

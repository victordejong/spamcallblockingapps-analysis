package p078c.p122d.p123a;

import android.content.Context;
import p078c.p122d.p123a.p128i0.C2031c;
/* renamed from: c.d.a.q */
/* loaded from: classes2-dex2jar.jar:c/d/a/q.class */
public class C2058q {

    /* renamed from: a */
    private static final Object f7193a = new Object();

    /* renamed from: b */
    private static final Object f7194b = new Object();

    /* renamed from: c */
    private AbstractC2065w f7195c;

    /* renamed from: d */
    private AbstractC2064v f7196d;

    /* renamed from: c.d.a.q$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/q$a.class */
    public static final class C2059a {

        /* renamed from: a */
        private static final C2058q f7197a = new C2058q();
    }

    /* renamed from: d */
    public static C2058q m28155d() {
        return C2059a.f7197a;
    }

    /* renamed from: h */
    public static void m28151h(Context context) {
        C2031c.m28261b(context.getApplicationContext());
    }

    /* renamed from: a */
    public void m28158a(AbstractC1993e abstractC1993e) {
        C2000f.m28336e().m910a("event.service.connect.changed", abstractC1993e);
    }

    /* renamed from: b */
    public void m28157b() {
        if (!m28152g()) {
            C2048m.m28171c().mo818B0(C2031c.m28262a());
        }
    }

    /* renamed from: c */
    public AbstractC1978a m28156c(String str) {
        return new C1986c(str);
    }

    /* renamed from: e */
    public AbstractC2064v m28154e() {
        if (this.f7196d == null) {
            synchronized (f7194b) {
                if (this.f7196d == null) {
                    C2070z c2070z = new C2070z();
                    this.f7196d = c2070z;
                    m28158a(c2070z);
                }
            }
        }
        return this.f7196d;
    }

    /* renamed from: f */
    public AbstractC2065w m28153f() {
        if (this.f7195c == null) {
            synchronized (f7193a) {
                if (this.f7195c == null) {
                    this.f7195c = new C1989c0();
                }
            }
        }
        return this.f7195c;
    }

    /* renamed from: g */
    public boolean m28152g() {
        return C2048m.m28171c().mo815b();
    }

    /* renamed from: i */
    public void m28150i(boolean z) {
        C2048m.m28171c().mo28131A0(z);
    }
}

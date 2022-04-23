package p092e.p096e.p097a;

import android.content.Context;
import p092e.p096e.p097a.p102h0.C3056c;
/* renamed from: e.e.a.q */
/* loaded from: classes2-dex2jar.jar:e/e/a/q.class */
public class C3085q {

    /* renamed from: c */
    private static final Object f12724c = new Object();

    /* renamed from: d */
    private static final Object f12725d = new Object();

    /* renamed from: a */
    private AbstractC3091v f12726a;

    /* renamed from: b */
    private AbstractC3090u f12727b;

    /* renamed from: e.e.a.q$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/q$a.class */
    private static final class C3086a {

        /* renamed from: a */
        private static final C3085q f12728a = new C3085q();
    }

    /* renamed from: d */
    public static C3085q m300d() {
        return C3086a.f12728a;
    }

    /* renamed from: h */
    public static void m296h(Context context) {
        C3056c.m425b(context.getApplicationContext());
    }

    /* renamed from: a */
    public void m303a(AbstractC3025e eVar) {
        C3037f.m471e().m1864a("event.service.connect.changed", eVar);
    }

    /* renamed from: b */
    public void m302b() {
        if (!m297g()) {
            C3075m.m321b().mo270y0(C3056c.m426a());
        }
    }

    /* renamed from: c */
    public AbstractC3005a m301c(String str) {
        return new C3013c(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public AbstractC3090u m299e() {
        if (this.f12727b == null) {
            synchronized (f12725d) {
                if (this.f12727b == null) {
                    C3096y yVar = new C3096y();
                    this.f12727b = yVar;
                    m303a(yVar);
                }
            }
        }
        return this.f12727b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public AbstractC3091v m298f() {
        if (this.f12726a == null) {
            synchronized (f12724c) {
                if (this.f12726a == null) {
                    this.f12726a = new C3012b0();
                }
            }
        }
        return this.f12726a;
    }

    /* renamed from: g */
    public boolean m297g() {
        return C3075m.m321b().mo272w0();
    }

    /* renamed from: i */
    public void m295i(boolean z) {
        C3075m.m321b().mo274n0(z);
    }
}

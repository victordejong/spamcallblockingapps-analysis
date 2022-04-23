package p081h.p203i.p204a.p224e.p285m.p287b;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.c2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/c2.class */
public final class RunnableC8957c2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20250a;

    /* renamed from: b */
    public final /* synthetic */ String f20251b;

    /* renamed from: c */
    public final /* synthetic */ String f20252c;

    /* renamed from: d */
    public final /* synthetic */ String f20253d;

    /* renamed from: e */
    public final /* synthetic */ boolean f20254e;

    /* renamed from: f */
    public final /* synthetic */ C9053s1 f20255f;

    public RunnableC8957c2(C9053s1 s1Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f20255f = s1Var;
        this.f20250a = atomicReference;
        this.f20251b = str;
        this.f20252c = str2;
        this.f20253d = str3;
        this.f20254e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20255f.f20541a.m16280m().m16524a(this.f20250a, this.f20251b, this.f20252c, this.f20253d, this.f20254e);
    }
}

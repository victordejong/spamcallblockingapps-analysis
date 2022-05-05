package p081h.p203i.p204a.p224e.p285m.p287b;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.b2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/b2.class */
public final class RunnableC8951b2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20230a;

    /* renamed from: b */
    public final /* synthetic */ String f20231b;

    /* renamed from: c */
    public final /* synthetic */ String f20232c;

    /* renamed from: d */
    public final /* synthetic */ String f20233d;

    /* renamed from: e */
    public final /* synthetic */ C9053s1 f20234e;

    public RunnableC8951b2(C9053s1 s1Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f20234e = s1Var;
        this.f20230a = atomicReference;
        this.f20231b = str;
        this.f20232c = str2;
        this.f20233d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20234e.f20541a.m16280m().m16525a(this.f20230a, this.f20231b, this.f20232c, this.f20233d);
    }
}

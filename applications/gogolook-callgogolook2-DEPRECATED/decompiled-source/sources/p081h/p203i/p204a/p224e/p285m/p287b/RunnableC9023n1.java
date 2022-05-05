package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.n1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/n1.class */
public final class RunnableC9023n1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f20502a;

    /* renamed from: b */
    public final /* synthetic */ String f20503b;

    /* renamed from: c */
    public final /* synthetic */ String f20504c;

    /* renamed from: d */
    public final /* synthetic */ long f20505d;

    /* renamed from: e */
    public final /* synthetic */ BinderC9065u0 f20506e;

    public RunnableC9023n1(BinderC9065u0 u0Var, String str, String str2, String str3, long j) {
        this.f20506e = u0Var;
        this.f20502a = str;
        this.f20503b = str2;
        this.f20504c = str3;
        this.f20505d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C9061t3 t3Var;
        C9061t3 t3Var2;
        String str = this.f20502a;
        if (str == null) {
            t3Var2 = this.f20506e.f20677a;
            t3Var2.m16215A().m16279n().m16591a(this.f20503b, (C8976f2) null);
            return;
        }
        C8976f2 f2Var = new C8976f2(this.f20504c, str, this.f20505d);
        t3Var = this.f20506e.f20677a;
        t3Var.m16215A().m16279n().m16591a(this.f20503b, f2Var);
    }
}

package p081h.p203i.p204a.p224e.p285m.p287b;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.m.b.c1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/c1.class */
public final class CallableC8956c1 implements Callable<List<C8953b4>> {

    /* renamed from: a */
    public final /* synthetic */ String f20246a;

    /* renamed from: b */
    public final /* synthetic */ String f20247b;

    /* renamed from: c */
    public final /* synthetic */ String f20248c;

    /* renamed from: d */
    public final /* synthetic */ BinderC9065u0 f20249d;

    public CallableC8956c1(BinderC9065u0 u0Var, String str, String str2, String str3) {
        this.f20249d = u0Var;
        this.f20246a = str;
        this.f20247b = str2;
        this.f20248c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C8953b4> call() throws Exception {
        C9061t3 t3Var;
        C9061t3 t3Var2;
        t3Var = this.f20249d.f20677a;
        t3Var.m16154x();
        t3Var2 = this.f20249d.f20677a;
        return t3Var2.m16166l().m16417a(this.f20246a, this.f20247b, this.f20248c);
    }
}

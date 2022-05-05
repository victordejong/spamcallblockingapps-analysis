package p081h.p203i.p204a.p224e.p285m.p287b;

import com.google.android.gms.measurement.internal.zzh;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.m.b.b1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/b1.class */
public final class CallableC8950b1 implements Callable<List<C8953b4>> {

    /* renamed from: a */
    public final /* synthetic */ zzh f20226a;

    /* renamed from: b */
    public final /* synthetic */ String f20227b;

    /* renamed from: c */
    public final /* synthetic */ String f20228c;

    /* renamed from: d */
    public final /* synthetic */ BinderC9065u0 f20229d;

    public CallableC8950b1(BinderC9065u0 u0Var, zzh zzhVar, String str, String str2) {
        this.f20229d = u0Var;
        this.f20226a = zzhVar;
        this.f20227b = str;
        this.f20228c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C8953b4> call() throws Exception {
        C9061t3 t3Var;
        C9061t3 t3Var2;
        t3Var = this.f20229d.f20677a;
        t3Var.m16154x();
        t3Var2 = this.f20229d.f20677a;
        return t3Var2.m16166l().m16417a(this.f20226a.f7158a, this.f20227b, this.f20228c);
    }
}

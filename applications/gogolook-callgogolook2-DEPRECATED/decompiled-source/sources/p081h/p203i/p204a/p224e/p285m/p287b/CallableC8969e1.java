package p081h.p203i.p204a.p224e.p285m.p287b;

import com.google.android.gms.measurement.internal.zzl;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.m.b.e1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/e1.class */
public final class CallableC8969e1 implements Callable<List<zzl>> {

    /* renamed from: a */
    public final /* synthetic */ String f20346a;

    /* renamed from: b */
    public final /* synthetic */ String f20347b;

    /* renamed from: c */
    public final /* synthetic */ String f20348c;

    /* renamed from: d */
    public final /* synthetic */ BinderC9065u0 f20349d;

    public CallableC8969e1(BinderC9065u0 u0Var, String str, String str2, String str3) {
        this.f20349d = u0Var;
        this.f20346a = str;
        this.f20347b = str2;
        this.f20348c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzl> call() throws Exception {
        C9061t3 t3Var;
        C9061t3 t3Var2;
        t3Var = this.f20349d.f20677a;
        t3Var.m16154x();
        t3Var2 = this.f20349d.f20677a;
        return t3Var2.m16166l().m16409b(this.f20346a, this.f20347b, this.f20348c);
    }
}

package p081h.p203i.p204a.p224e.p285m.p287b;

import com.google.android.gms.measurement.internal.zzh;
import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.m.b.x3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/x3.class */
public final class CallableC9086x3 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ zzh f20763a;

    /* renamed from: b */
    public final /* synthetic */ C9061t3 f20764b;

    public CallableC9086x3(C9061t3 t3Var, zzh zzhVar) {
        this.f20764b = t3Var;
        this.f20763a = zzhVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        C8978f4 d = this.f20764b.m16169i().m16496i(this.f20763a.f7158a) ? this.f20764b.m16175d(this.f20763a) : this.f20764b.m16166l().m16411b(this.f20763a.f7158a);
        if (d != null) {
            return d.m16657a();
        }
        this.f20764b.mo16178c().m16372v().m16338a("App info was null when attempting to get app instance id");
        return null;
    }
}

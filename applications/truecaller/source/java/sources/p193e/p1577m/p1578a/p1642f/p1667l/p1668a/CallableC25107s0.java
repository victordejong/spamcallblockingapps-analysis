package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.l.a.s0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/s0.class */
public final class CallableC25107s0 implements Callable {

    /* renamed from: a */
    public final /* synthetic */ String f70274a;

    /* renamed from: b */
    public final /* synthetic */ zzgj f70275b;

    public CallableC25107s0(zzgj zzgjVar, String str) {
        this.f70275b = zzgjVar;
        this.f70274a = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.f70275b.a.b();
        d dVar = this.f70275b.a.c;
        zzkp.E(dVar);
        return dVar.I(this.f70274a);
    }
}

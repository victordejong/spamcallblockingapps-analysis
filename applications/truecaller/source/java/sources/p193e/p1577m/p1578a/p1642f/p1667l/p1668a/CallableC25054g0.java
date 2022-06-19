package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.l.a.g0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/g0.class */
public final class CallableC25054g0 implements Callable {

    /* renamed from: a */
    public final /* synthetic */ String f70098a;

    /* renamed from: b */
    public final /* synthetic */ String f70099b;

    /* renamed from: c */
    public final /* synthetic */ String f70100c;

    /* renamed from: d */
    public final /* synthetic */ zzgj f70101d;

    public CallableC25054g0(zzgj zzgjVar, String str, String str2, String str3) {
        this.f70101d = zzgjVar;
        this.f70098a = str;
        this.f70099b = str2;
        this.f70100c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.f70101d.a.b();
        d dVar = this.f70101d.a.c;
        zzkp.E(dVar);
        return dVar.J(this.f70098a, this.f70099b, this.f70100c);
    }
}

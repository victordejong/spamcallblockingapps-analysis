package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.l.a.i0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/i0.class */
public final class CallableC25065i0 implements Callable {

    /* renamed from: a */
    public final /* synthetic */ String f70132a;

    /* renamed from: b */
    public final /* synthetic */ String f70133b;

    /* renamed from: c */
    public final /* synthetic */ String f70134c;

    /* renamed from: d */
    public final /* synthetic */ zzgj f70135d;

    public CallableC25065i0(zzgj zzgjVar, String str, String str2, String str3) {
        this.f70135d = zzgjVar;
        this.f70132a = str;
        this.f70133b = str2;
        this.f70134c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.f70135d.a.b();
        d dVar = this.f70135d.a.c;
        zzkp.E(dVar);
        return dVar.G(this.f70132a, this.f70133b, this.f70134c);
    }
}

package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.l.a.j0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/j0.class */
public final class CallableC25070j0 implements Callable {

    /* renamed from: a */
    public final /* synthetic */ String f70145a;

    /* renamed from: b */
    public final /* synthetic */ String f70146b;

    /* renamed from: c */
    public final /* synthetic */ String f70147c;

    /* renamed from: d */
    public final /* synthetic */ zzgj f70148d;

    public CallableC25070j0(zzgj zzgjVar, String str, String str2, String str3) {
        this.f70148d = zzgjVar;
        this.f70145a = str;
        this.f70146b = str2;
        this.f70147c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.f70148d.a.b();
        d dVar = this.f70148d.a.c;
        zzkp.E(dVar);
        return dVar.G(this.f70145a, this.f70146b, this.f70147c);
    }
}

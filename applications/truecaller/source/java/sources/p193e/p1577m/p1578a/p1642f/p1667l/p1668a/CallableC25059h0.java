package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzkp;
import java.util.concurrent.Callable;
/* renamed from: e.m.a.f.l.a.h0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/h0.class */
public final class CallableC25059h0 implements Callable {

    /* renamed from: a */
    public final /* synthetic */ String f70112a;

    /* renamed from: b */
    public final /* synthetic */ String f70113b;

    /* renamed from: c */
    public final /* synthetic */ String f70114c;

    /* renamed from: d */
    public final /* synthetic */ zzgj f70115d;

    public CallableC25059h0(zzgj zzgjVar, String str, String str2, String str3) {
        this.f70115d = zzgjVar;
        this.f70112a = str;
        this.f70113b = str2;
        this.f70114c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.f70115d.a.b();
        d dVar = this.f70115d.a.c;
        zzkp.E(dVar);
        return dVar.J(this.f70112a, this.f70113b, this.f70114c);
    }
}

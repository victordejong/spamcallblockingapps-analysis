package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzkl;
import com.google.android.gms.measurement.internal.zzn;
import com.google.android.gms.measurement.internal.zzz;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.i.a.z3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/z3.class */
public final class CallableC4872z3 implements Callable<List<zzz>> {

    /* renamed from: a */
    public final /* synthetic */ zzn f17490a;

    /* renamed from: b */
    public final /* synthetic */ String f17491b;

    /* renamed from: c */
    public final /* synthetic */ String f17492c;

    /* renamed from: d */
    public final /* synthetic */ zzfz f17493d;

    public CallableC4872z3(zzfz zzfzVar, zzn zznVar, String str, String str2) {
        this.f17493d = zzfzVar;
        this.f17490a = zznVar;
        this.f17491b = str;
        this.f17492c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzz> call() throws Exception {
        zzkl zzklVar;
        zzkl zzklVar2;
        zzklVar = this.f17493d.f30034a;
        zzklVar.m8785t();
        zzklVar2 = this.f17493d.f30034a;
        return zzklVar2.m8794k().m25062b(this.f17490a.f30154a, this.f17491b, this.f17492c);
    }
}

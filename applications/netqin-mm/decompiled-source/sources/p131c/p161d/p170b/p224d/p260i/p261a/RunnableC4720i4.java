package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzkl;
import com.google.android.gms.measurement.internal.zzku;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.i4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/i4.class */
public final class RunnableC4720i4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzku f17169a;

    /* renamed from: b */
    public final /* synthetic */ zzn f17170b;

    /* renamed from: c */
    public final /* synthetic */ zzfz f17171c;

    public RunnableC4720i4(zzfz zzfzVar, zzku zzkuVar, zzn zznVar) {
        this.f17171c = zzfzVar;
        this.f17169a = zzkuVar;
        this.f17170b = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkl zzklVar;
        zzkl zzklVar2;
        zzkl zzklVar3;
        zzklVar = this.f17171c.f30034a;
        zzklVar.m8785t();
        if (this.f17169a.zza() == null) {
            zzklVar3 = this.f17171c.f30034a;
            zzklVar3.m8811b(this.f17169a, this.f17170b);
            return;
        }
        zzklVar2 = this.f17171c.f30034a;
        zzklVar2.m8828a(this.f17169a, this.f17170b);
    }
}

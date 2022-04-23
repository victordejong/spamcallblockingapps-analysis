package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.s */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/s.class */
public final class C4583s extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ zzag.BinderC7274c f16868e;

    /* renamed from: f */
    public final /* synthetic */ zzag f16869f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4583s(zzag zzagVar, zzag.BinderC7274c cVar) {
        super(zzagVar);
        this.f16869f = zzagVar;
        this.f16868e = cVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16869f.f29421i;
        zzvVar.registerOnMeasurementEventListener(this.f16868e);
    }
}

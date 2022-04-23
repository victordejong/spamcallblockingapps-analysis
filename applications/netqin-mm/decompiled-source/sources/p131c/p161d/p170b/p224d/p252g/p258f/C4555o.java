package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.o */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/o.class */
public final class C4555o extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Bundle f16826e;

    /* renamed from: f */
    public final /* synthetic */ zzt f16827f;

    /* renamed from: g */
    public final /* synthetic */ zzag f16828g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4555o(zzag zzagVar, Bundle bundle, zzt zztVar) {
        super(zzagVar);
        this.f16828g = zzagVar;
        this.f16826e = bundle;
        this.f16827f = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16828g.f29421i;
        zzvVar.performAction(this.f16826e, this.f16827f, this.f29422a);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: b */
    public final void mo10432b() {
        this.f16827f.mo9452d(null);
    }
}

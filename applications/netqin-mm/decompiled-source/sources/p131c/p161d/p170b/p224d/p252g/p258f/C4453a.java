package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.a */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/a.class */
public final class C4453a extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Bundle f16676e;

    /* renamed from: f */
    public final /* synthetic */ zzag f16677f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4453a(zzag zzagVar, Bundle bundle) {
        super(zzagVar);
        this.f16677f = zzagVar;
        this.f16676e = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16677f.f29421i;
        zzvVar.setConditionalUserProperty(this.f16676e, this.f29422a);
    }
}

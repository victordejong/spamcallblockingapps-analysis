package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.g */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/g.class */
public final class C4495g extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16745e;

    /* renamed from: f */
    public final /* synthetic */ zzag f16746f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4495g(zzag zzagVar, String str) {
        super(zzagVar);
        this.f16746f = zzagVar;
        this.f16745e = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16746f.f29421i;
        zzvVar.endAdUnitExposure(this.f16745e, this.f29423b);
    }
}

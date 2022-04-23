package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/c.class */
public final class C4467c extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16693e;

    /* renamed from: f */
    public final /* synthetic */ String f16694f;

    /* renamed from: g */
    public final /* synthetic */ zzt f16695g;

    /* renamed from: h */
    public final /* synthetic */ zzag f16696h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4467c(zzag zzagVar, String str, String str2, zzt zztVar) {
        super(zzagVar);
        this.f16696h = zzagVar;
        this.f16693e = str;
        this.f16694f = str2;
        this.f16695g = zztVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16696h.f29421i;
        zzvVar.getConditionalUserProperties(this.f16693e, this.f16694f, this.f16695g);
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: b */
    public final void mo10432b() {
        this.f16695g.mo9452d(null);
    }
}

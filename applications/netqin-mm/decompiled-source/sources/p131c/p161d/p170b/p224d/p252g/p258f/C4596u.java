package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.u */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/u.class */
public final class C4596u extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Long f16892e;

    /* renamed from: f */
    public final /* synthetic */ String f16893f;

    /* renamed from: g */
    public final /* synthetic */ String f16894g;

    /* renamed from: h */
    public final /* synthetic */ Bundle f16895h;

    /* renamed from: i */
    public final /* synthetic */ boolean f16896i;

    /* renamed from: j */
    public final /* synthetic */ boolean f16897j;

    /* renamed from: k */
    public final /* synthetic */ zzag f16898k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4596u(zzag zzagVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzagVar);
        this.f16898k = zzagVar;
        this.f16892e = l;
        this.f16893f = str;
        this.f16894g = str2;
        this.f16895h = bundle;
        this.f16896i = z;
        this.f16897j = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        Long l = this.f16892e;
        long longValue = l == null ? this.f29422a : l.longValue();
        zzvVar = this.f16898k.f29421i;
        zzvVar.logEvent(this.f16893f, this.f16894g, this.f16895h, this.f16896i, this.f16897j, longValue);
    }
}

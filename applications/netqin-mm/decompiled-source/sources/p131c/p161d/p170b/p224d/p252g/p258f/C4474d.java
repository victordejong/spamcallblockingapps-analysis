package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/d.class */
public final class C4474d extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16719e;

    /* renamed from: f */
    public final /* synthetic */ String f16720f;

    /* renamed from: g */
    public final /* synthetic */ Bundle f16721g;

    /* renamed from: h */
    public final /* synthetic */ zzag f16722h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4474d(zzag zzagVar, String str, String str2, Bundle bundle) {
        super(zzagVar);
        this.f16722h = zzagVar;
        this.f16719e = str;
        this.f16720f = str2;
        this.f16721g = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16722h.f29421i;
        zzvVar.clearConditionalUserProperty(this.f16719e, this.f16720f, this.f16721g);
    }
}

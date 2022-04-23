package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.p */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/p.class */
public final class C4562p extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ int f16831e = 5;

    /* renamed from: f */
    public final /* synthetic */ String f16832f;

    /* renamed from: g */
    public final /* synthetic */ Object f16833g;

    /* renamed from: h */
    public final /* synthetic */ zzag f16834h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4562p(zzag zzagVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.f16834h = zzagVar;
        this.f16832f = str;
        this.f16833g = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16834h.f29421i;
        zzvVar.logHealthData(this.f16831e, this.f16832f, ObjectWrapper.m17020a(this.f16833g), ObjectWrapper.m17020a((Object) null), ObjectWrapper.m17020a((Object) null));
    }
}

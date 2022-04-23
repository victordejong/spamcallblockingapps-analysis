package p131c.p161d.p170b.p224d.p252g.p258f;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.x */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/x.class */
public final class C4614x extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Activity f16923e;

    /* renamed from: f */
    public final /* synthetic */ zzag.C7273b f16924f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4614x(zzag.C7273b bVar, Activity activity) {
        super(zzag.this);
        this.f16924f = bVar;
        this.f16923e = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = zzag.this.f29421i;
        zzvVar.onActivityPaused(ObjectWrapper.m17020a(this.f16923e), this.f29423b);
    }
}

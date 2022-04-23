package p131c.p161d.p170b.p224d.p252g.p258f;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/e.class */
public final class C4481e extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ Activity f16734e;

    /* renamed from: f */
    public final /* synthetic */ String f16735f;

    /* renamed from: g */
    public final /* synthetic */ String f16736g;

    /* renamed from: h */
    public final /* synthetic */ zzag f16737h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4481e(zzag zzagVar, Activity activity, String str, String str2) {
        super(zzagVar);
        this.f16737h = zzagVar;
        this.f16734e = activity;
        this.f16735f = str;
        this.f16736g = str2;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16737h.f29421i;
        zzvVar.setCurrentScreen(ObjectWrapper.m17020a(this.f16734e), this.f16735f, this.f16736g, this.f29422a);
    }
}

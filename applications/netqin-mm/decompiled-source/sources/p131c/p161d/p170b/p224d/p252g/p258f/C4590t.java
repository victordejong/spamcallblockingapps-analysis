package p131c.p161d.p170b.p224d.p252g.p258f;

import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzv;
/* renamed from: c.d.b.d.g.f.t */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/t.class */
public final class C4590t extends zzag.AbstractRunnableC7272a {

    /* renamed from: e */
    public final /* synthetic */ String f16880e;

    /* renamed from: f */
    public final /* synthetic */ String f16881f;

    /* renamed from: g */
    public final /* synthetic */ Object f16882g;

    /* renamed from: h */
    public final /* synthetic */ boolean f16883h;

    /* renamed from: i */
    public final /* synthetic */ zzag f16884i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4590t(zzag zzagVar, String str, String str2, Object obj, boolean z) {
        super(zzagVar);
        this.f16884i = zzagVar;
        this.f16880e = str;
        this.f16881f = str2;
        this.f16882g = obj;
        this.f16883h = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.AbstractRunnableC7272a
    /* renamed from: a */
    public final void mo10433a() throws RemoteException {
        zzv zzvVar;
        zzvVar = this.f16884i.f29421i;
        zzvVar.setUserProperty(this.f16880e, this.f16881f, ObjectWrapper.m17020a(this.f16882g), this.f16883h, this.f29422a);
    }
}

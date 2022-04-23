package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaoy;
import com.google.android.gms.internal.ads.zzaph;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzcug;
import com.google.android.gms.internal.ads.zzcuu;
import com.google.android.gms.internal.ads.zzva;
/* renamed from: c.d.b.d.g.a.xo */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xo.class */
public final class BinderC4222xo extends zzaoy {

    /* renamed from: a */
    public zzctc<zzaph, zzcuu> f16060a;

    /* renamed from: b */
    public final /* synthetic */ zzcug f16061b;

    public BinderC4222xo(zzcug zzcugVar, zzctc<zzaph, zzcuu> zzctcVar) {
        this.f16061b = zzcugVar;
        this.f16060a = zzctcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    /* renamed from: a */
    public final void mo16498a(zzva zzvaVar) throws RemoteException {
        this.f16060a.f26498c.mo13784b(zzvaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    /* renamed from: b */
    public final void mo16497b(String str) throws RemoteException {
        this.f16060a.f26498c.mo13791a(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    /* renamed from: t */
    public final void mo16496t(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.f16061b.f26545c = (View) ObjectWrapper.m17021Q(iObjectWrapper);
        this.f16060a.f26498c.mo13775x();
    }
}

package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzagi;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzzw;
/* renamed from: c.d.b.d.g.a.yh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/yh0.class */
public final class yh0 extends bi0<zzaei> {

    /* renamed from: b */
    public final /* synthetic */ FrameLayout f16219b;

    /* renamed from: c */
    public final /* synthetic */ FrameLayout f16220c;

    /* renamed from: d */
    public final /* synthetic */ Context f16221d;

    /* renamed from: e */
    public final /* synthetic */ zzvx f16222e;

    public yh0(zzvx zzvxVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f16222e = zzvxVar;
        this.f16219b = frameLayout;
        this.f16220c = frameLayout2;
        this.f16221d = context;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaei mo26004a() {
        zzvx.m11182a(this.f16221d, "native_ad_view_delegate");
        return new zzzw();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaei mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11126d(ObjectWrapper.m17020a(this.f16219b), ObjectWrapper.m17020a(this.f16220c));
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzaei mo26002b() throws RemoteException {
        zzagi zzagiVar;
        zzagiVar = this.f16222e.f29064d;
        return zzagiVar.m16780a(this.f16221d, this.f16219b, this.f16220c);
    }
}

package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzaqp;
import com.google.android.gms.internal.ads.zzaqu;
import com.google.android.gms.internal.ads.zzbbt;
import com.google.android.gms.internal.ads.zzbbv;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxp;
/* renamed from: c.d.b.d.g.a.th0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/th0.class */
public final class th0 extends bi0<zzaqp> {

    /* renamed from: b */
    public final /* synthetic */ Context f15408b;

    /* renamed from: c */
    public final /* synthetic */ zzanb f15409c;

    public th0(zzvx zzvxVar, Context context, zzanb zzanbVar) {
        this.f15408b = context;
        this.f15409c = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ zzaqp mo26004a() {
        return null;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaqp mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11137a(ObjectWrapper.m17020a(this.f15408b), this.f15409c, 202510000);
    }

    /* renamed from: f */
    public final zzaqp mo26002b() {
        try {
            return ((zzaqu) zzbbt.m15847a(this.f15408b, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", sh0.f15308a)).mo16409a(ObjectWrapper.m17020a(this.f15408b), this.f15409c, 202510000);
        } catch (RemoteException | zzbbv | NullPointerException e) {
            return null;
        }
    }
}

package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabf;
import com.google.android.gms.internal.ads.zzabi;
import com.google.android.gms.internal.ads.zzabk;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
/* renamed from: c.d.b.d.g.a.a5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a5.class */
public final class C3343a5 extends zzayl {

    /* renamed from: c */
    public final /* synthetic */ zzayb f12066c;

    public C3343a5(zzayb zzaybVar) {
        this.f12066c = zzaybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    /* renamed from: a */
    public final void mo15673a() {
        Context context;
        zzbbx zzbbxVar;
        Object obj;
        zzabi zzabiVar;
        context = this.f12066c.f24614e;
        zzbbxVar = this.f12066c.f24615f;
        zzabf zzabfVar = new zzabf(context, zzbbxVar.f24759a);
        obj = this.f12066c.f24610a;
        synchronized (obj) {
            try {
                zzp.m17960l();
                zzabiVar = this.f12066c.f24616g;
                zzabk.m16894a(zzabiVar, zzabfVar);
            } catch (IllegalArgumentException e) {
                zzbbq.m15853c("Cannot config CSI reporter.", e);
            }
        }
    }
}

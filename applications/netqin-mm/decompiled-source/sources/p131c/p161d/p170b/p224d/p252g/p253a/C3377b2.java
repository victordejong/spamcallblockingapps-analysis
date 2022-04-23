package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbck;
/* renamed from: c.d.b.d.g.a.b2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b2.class */
public final class C3377b2 implements zzbck<zzaki> {

    /* renamed from: a */
    public final /* synthetic */ zzalm f12326a;

    public C3377b2(zzalm zzalmVar) {
        this.f12326a = zzalmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    /* renamed from: a */
    public final /* synthetic */ void mo15830a(zzaki zzakiVar) {
        final zzaki zzakiVar2 = zzakiVar;
        zzbbz.f24768e.execute(new Runnable(this, zzakiVar2) { // from class: c.d.b.d.g.a.d2

            /* renamed from: a */
            public final C3377b2 f12602a;

            /* renamed from: b */
            public final zzaki f12603b;

            {
                this.f12602a = this;
                this.f12603b = zzakiVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbad zzbadVar;
                C3377b2 b2Var = this.f12602a;
                zzaki zzakiVar3 = this.f12603b;
                zzbadVar = b2Var.f12326a.f24170d;
                zzbadVar.mo15974a(zzakiVar3);
                zzakiVar3.destroy();
            }
        });
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.amh;
import com.google.android.gms.internal.ads.aoz;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cdt.class */
public final class cdt<R extends aoz<AdT>, AdT extends amh> implements cev<R, ciy<AdT>> {

    /* renamed from: a */
    private R f12792a;

    /* renamed from: b */
    private final Executor f12793b = crv.m10766a();

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final crt<ciy<AdT>> mo11429a(cew cewVar, cex<R> cexVar) {
        aoy<R> mo11387a = cexVar.mo11387a(cewVar.f12844b);
        mo11387a.mo12852a(new cfc(true));
        this.f12792a = mo11387a.mo12850b();
        ang mo12051c = this.f12792a.mo12051c();
        ciy ciyVar = new ciy();
        return crb.m10789c((crt) (cewVar.f12843a != null ? mo12051c.m12892a(cewVar.f12843a) : mo12051c.m12897a())).m10791a(new cqt(this, ciyVar, mo12051c) { // from class: com.google.android.gms.internal.ads.cdw

            /* renamed from: a */
            private final cdt f12796a;

            /* renamed from: b */
            private final ciy f12797b;

            /* renamed from: c */
            private final ang f12798c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12796a = this;
                this.f12797b = ciyVar;
                this.f12798c = mo12051c;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                cdt cdtVar = this.f12796a;
                ciy ciyVar2 = this.f12797b;
                ang angVar = this.f12798c;
                chd chdVar = (chd) obj;
                ciyVar2.f13159b = chdVar;
                Iterator<cgr> it = chdVar.f13035b.f13024a.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    for (String str : it.next().f12979a) {
                        if (!str.contains("FirstPartyRenderer")) {
                            z = false;
                            break loop0;
                        }
                        z = true;
                    }
                }
                return !z ? crg.m10778a((Object) null) : angVar.m12893a(crg.m10778a(chdVar));
            }
        }, this.f12793b).m10792a(new coe(ciyVar) { // from class: com.google.android.gms.internal.ads.cdv

            /* renamed from: a */
            private final ciy f12795a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12795a = ciyVar;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                ciy ciyVar2 = this.f12795a;
                ciyVar2.f13160c = (AdT) obj;
                return ciyVar2;
            }
        }, this.f12793b);
    }

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final /* synthetic */ Object mo11430a() {
        return this.f12792a;
    }
}

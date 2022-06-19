package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clj.class */
public final class clj<R extends aqx<AdT>, AdT extends anp> implements cmh<R, crj<AdT>> {

    /* renamed from: a */
    private R f46028a;

    /* renamed from: b */
    private final Executor f46029b = dba.INSTANCE;

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final dbt<crj<AdT>> mo17411a(cmm cmmVar, cmj<R> cmjVar) {
        aqw<R> mo17386a = cmjVar.mo17386a(cmmVar.f46080b);
        mo17386a.mo18455a(new cmp(true));
        R mo18453b = mo17386a.mo18453b();
        this.f46028a = mo18453b;
        aor mo17838c = mo18453b.mo17838c();
        crj crjVar = new crj();
        return dbc.m16907c((dbt) (cmmVar.f46079a != null ? mo17838c.m18506a(cmmVar.f46079a) : mo17838c.m18508a())).m16910a(new daq(this, crjVar, mo17838c) { // from class: com.google.android.gms.internal.ads.cli

            /* renamed from: a */
            private final clj f46025a;

            /* renamed from: b */
            private final crj f46026b;

            /* renamed from: c */
            private final aor f46027c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46025a = this;
                this.f46026b = crjVar;
                this.f46027c = mo17838c;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                crj crjVar2 = this.f46026b;
                aor aorVar = this.f46027c;
                cpk cpkVar = (cpk) obj;
                crjVar2.f46430b = cpkVar;
                Iterator<cov> it2 = cpkVar.f46319b.f46313a.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    for (String str : it2.next().f46247a) {
                        if (!str.contains("FirstPartyRenderer")) {
                            z = false;
                            break loop0;
                        }
                        z = true;
                    }
                }
                return !z ? dbh.m16899a((Object) null) : aorVar.m18507a(dbh.m16899a(cpkVar));
            }
        }, this.f46029b).m16911a(new cxu(crjVar) { // from class: com.google.android.gms.internal.ads.cll

            /* renamed from: a */
            private final crj f46035a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46035a = crjVar;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                crj crjVar2 = this.f46035a;
                crjVar2.f46431c = (AdT) obj;
                return crjVar2;
            }
        }, this.f46029b);
    }

    @Override // com.google.android.gms.internal.ads.cmh
    /* renamed from: a */
    public final /* synthetic */ Object mo17412a() {
        return this.f46028a;
    }
}

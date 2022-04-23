package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clj.class */
public final class clj<R extends aqx<AdT>, AdT extends anp> implements cmh<R, crj<AdT>> {

    /* renamed from: a  reason: collision with root package name */
    private R f26025a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f26026b = dba.INSTANCE;

    @Override // com.google.android.gms.internal.ads.cmh
    public final dbt<crj<AdT>> a(cmm cmmVar, cmj<R> cmjVar) {
        aqw<R> a2 = cmjVar.a(cmmVar.f26072b);
        a2.a(new cmp(true));
        R b2 = a2.b();
        this.f26025a = b2;
        final aor c2 = b2.c();
        final crj crjVar = new crj();
        return dbc.c((dbt) (cmmVar.f26071a != null ? c2.a(cmmVar.f26071a) : c2.a())).a(new daq(this, crjVar, c2) { // from class: com.google.android.gms.internal.ads.cli

            /* renamed from: a  reason: collision with root package name */
            private final clj f26022a;

            /* renamed from: b  reason: collision with root package name */
            private final crj f26023b;

            /* renamed from: c  reason: collision with root package name */
            private final aor f26024c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26022a = this;
                this.f26023b = crjVar;
                this.f26024c = c2;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                crj crjVar2 = this.f26023b;
                aor aorVar = this.f26024c;
                cpk cpkVar = (cpk) obj;
                crjVar2.f26302b = cpkVar;
                r8 = false;
                boolean z = false;
                loop0: for (cov covVar : cpkVar.f26222b.f26216a) {
                    for (String str : covVar.f26183a) {
                        if (!str.contains("FirstPartyRenderer")) {
                            break loop0;
                        }
                        z = true;
                    }
                }
                return !z ? dbh.a((Object) null) : aorVar.a(dbh.a(cpkVar));
            }
        }, this.f26026b).a(new cxu(crjVar) { // from class: com.google.android.gms.internal.ads.cll

            /* renamed from: a  reason: collision with root package name */
            private final crj f26031a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26031a = crjVar;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [AdT extends com.google.android.gms.internal.ads.anp, com.google.android.gms.internal.ads.anp] */
            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                crj crjVar2 = this.f26031a;
                crjVar2.f26303c = (anp) obj;
                return crjVar2;
            }
        }, this.f26026b);
    }

    @Override // com.google.android.gms.internal.ads.cmh
    public final /* synthetic */ Object a() {
        return this.f26025a;
    }
}

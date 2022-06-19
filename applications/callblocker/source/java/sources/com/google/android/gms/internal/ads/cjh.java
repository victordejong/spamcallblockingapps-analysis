package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.amh;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cjh.class */
public final class cjh<AdT extends amh> {

    /* renamed from: a */
    private final cik f13167a;
    @GuardedBy("this")

    /* renamed from: b */
    private cjn f13168b;
    @GuardedBy("this")

    /* renamed from: c */
    private csa<ciy<AdT>> f13169c;
    @GuardedBy("this")

    /* renamed from: d */
    private crt<ciy<AdT>> f13170d;

    /* renamed from: f */
    private final cir f13172f;

    /* renamed from: g */
    private final cjo<AdT> f13173g;
    @GuardedBy("this")

    /* renamed from: e */
    private int f13171e = ciw.f13148e;

    /* renamed from: i */
    private final crh<ciy<AdT>> f13175i = new cjm(this);

    /* renamed from: h */
    private final LinkedList<cjn> f13174h = new LinkedList<>();

    public cjh(cir cirVar, cik cikVar, cjo<AdT> cjoVar) {
        this.f13172f = cirVar;
        this.f13167a = cikVar;
        this.f13173g = cjoVar;
        this.f13167a.m11248a(new cin(this) { // from class: com.google.android.gms.internal.ads.cjj

            /* renamed from: a */
            private final cjh f13177a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13177a = this;
            }

            @Override // com.google.android.gms.internal.ads.cin
            /* renamed from: a */
            public final void mo11199a() {
                this.f13177a.m11213a();
            }
        });
    }

    /* renamed from: b */
    private final boolean m11207b() {
        return this.f13170d == null || this.f13170d.isDone();
    }

    /* renamed from: c */
    public final void m11203c(cjn cjnVar) {
        while (m11207b()) {
            if (cjnVar == null && this.f13174h.isEmpty()) {
                return;
            }
            if (cjnVar == null) {
                cjnVar = this.f13174h.remove();
            }
            if (cjnVar.mo11197b() != null && this.f13172f.mo11229b(cjnVar.mo11197b())) {
                this.f13168b = cjnVar.mo11196c();
                this.f13169c = csa.m10752h();
                this.f13170d = this.f13173g.mo11194a(this.f13168b);
                crg.m10781a(this.f13170d, this.f13175i, cjnVar.mo11198a());
                return;
            }
            cjnVar = null;
        }
        if (cjnVar != null) {
            this.f13174h.add(cjnVar);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11212a(ciy ciyVar) {
        crt m10778a;
        synchronized (this) {
            m10778a = crg.m10778a(new cjl(ciyVar, this.f13168b));
        }
        return m10778a;
    }

    /* renamed from: a */
    public final /* synthetic */ void m11213a() {
        synchronized (this) {
            m11203c(this.f13168b);
        }
    }

    /* renamed from: a */
    public final void m11208a(cjn cjnVar) {
        this.f13174h.add(cjnVar);
    }

    /* renamed from: b */
    public final crt<cjl<AdT>> m11205b(cjn cjnVar) {
        crt<cjl<AdT>> crtVar;
        synchronized (this) {
            if (m11207b()) {
                crtVar = null;
            } else {
                this.f13171e = ciw.f13150g;
                crtVar = null;
                if (this.f13168b.mo11197b() != null) {
                    crtVar = null;
                    if (cjnVar.mo11197b() != null) {
                        crtVar = null;
                        if (this.f13168b.mo11197b().equals(cjnVar.mo11197b())) {
                            this.f13171e = ciw.f13149f;
                            crtVar = crg.m10782a(this.f13169c, new cqt(this) { // from class: com.google.android.gms.internal.ads.cjk

                                /* renamed from: a */
                                private final cjh f13178a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f13178a = this;
                                }

                                @Override // com.google.android.gms.internal.ads.cqt
                                /* renamed from: a */
                                public final crt mo7012a(Object obj) {
                                    return this.f13178a.m11212a((ciy) obj);
                                }
                            }, cjnVar.mo11198a());
                        }
                    }
                }
            }
        }
        return crtVar;
    }
}

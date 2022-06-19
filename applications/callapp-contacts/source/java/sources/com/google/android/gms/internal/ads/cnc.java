package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cnc.class */
public final class cnc extends AdMetadataListener implements aro, arp, asd, atb, atu, cmi {

    /* renamed from: f */
    private final cqs f46133f;

    /* renamed from: g */
    private final AtomicReference<AdMetadataListener> f46134g = new AtomicReference<>();

    /* renamed from: a */
    final AtomicReference<AbstractC12975uy> f46128a = new AtomicReference<>();

    /* renamed from: b */
    final AtomicReference<AbstractC12968ur> f46129b = new AtomicReference<>();

    /* renamed from: h */
    private final AtomicReference<AbstractC12949tz> f46135h = new AtomicReference<>();

    /* renamed from: c */
    final AtomicReference<AbstractC12976uz> f46130c = new AtomicReference<>();

    /* renamed from: d */
    final AtomicReference<AbstractC12940tq> f46131d = new AtomicReference<>();

    /* renamed from: e */
    final AtomicReference<emd> f46132e = new AtomicReference<>();

    /* renamed from: i */
    private cnc f46136i = null;

    public cnc(cqs cqsVar) {
        this.f46133f = cqsVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46128a, cnf.f46138a);
                clw.m17416a(cncVar2.f46135h, cne.f46137a);
                return;
            }
            cncVar = cncVar3;
        }
    }

    /* renamed from: a */
    public final void m17407a(AdMetadataListener adMetadataListener) {
        this.f46134g.set(adMetadataListener);
    }

    @Override // com.google.android.gms.internal.ads.cmi
    /* renamed from: a */
    public final void mo17406a(cmi cmiVar) {
        this.f46136i = (cnc) cmiVar;
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46129b, new cma(abstractC12939tp) { // from class: com.google.android.gms.internal.ads.cnj

                    /* renamed from: a */
                    private final AbstractC12939tp f46144a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46144a = abstractC12939tp;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        AbstractC12939tp abstractC12939tp2 = this.f46144a;
                        ((AbstractC12968ur) obj).mo14080a(new BinderC12990vm(abstractC12939tp2.mo14154a(), abstractC12939tp2.mo14153b()));
                    }
                });
                clw.m17416a(cncVar2.f46130c, new cma(abstractC12939tp, str, str2) { // from class: com.google.android.gms.internal.ads.cni

                    /* renamed from: a */
                    private final AbstractC12939tp f46141a;

                    /* renamed from: b */
                    private final String f46142b;

                    /* renamed from: c */
                    private final String f46143c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46141a = abstractC12939tp;
                        this.f46142b = str;
                        this.f46143c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        AbstractC12939tp abstractC12939tp2 = this.f46141a;
                        ((AbstractC12976uz) obj).mo14086a(new BinderC12990vm(abstractC12939tp2.mo14154a(), abstractC12939tp2.mo14153b()), this.f46142b, this.f46143c);
                    }
                });
                clw.m17416a(cncVar2.f46135h, new cma(abstractC12939tp) { // from class: com.google.android.gms.internal.ads.cnl

                    /* renamed from: a */
                    private final AbstractC12939tp f46148a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46148a = abstractC12939tp;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12949tz) obj).mo14126a(this.f46148a);
                    }
                });
                clw.m17416a(cncVar2.f46131d, new cma(abstractC12939tp, str, str2) { // from class: com.google.android.gms.internal.ads.cnk

                    /* renamed from: a */
                    private final AbstractC12939tp f46145a;

                    /* renamed from: b */
                    private final String f46146b;

                    /* renamed from: c */
                    private final String f46147c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46145a = abstractC12939tp;
                        this.f46146b = str;
                        this.f46147c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12940tq) obj).mo14152a(this.f46145a, this.f46146b, this.f46147c);
                    }
                });
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m17404a(AbstractC12949tz abstractC12949tz) {
        this.f46135h.set(abstractC12949tz);
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                int i = zzvhVar.errorCode;
                clw.m17416a(cncVar2.f46128a, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cnr

                    /* renamed from: a */
                    private final zzvh f46154a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46154a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12975uy) obj).mo14071a(this.f46154a);
                    }
                });
                clw.m17416a(cncVar2.f46128a, new cma(i) { // from class: com.google.android.gms.internal.ads.cnt

                    /* renamed from: a */
                    private final int f46156a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46156a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12975uy) obj).mo14072a(this.f46156a);
                    }
                });
                clw.m17416a(cncVar2.f46135h, new cma(i) { // from class: com.google.android.gms.internal.ads.cns

                    /* renamed from: a */
                    private final int f46155a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46155a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12949tz) obj).mo14127a(this.f46155a);
                    }
                });
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.atu
    /* renamed from: a */
    public final void mo17403a(zzvv zzvvVar) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46132e, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.cnq

                    /* renamed from: a */
                    private final zzvv f46153a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46153a = zzvvVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((emd) obj).mo14203a(this.f46153a);
                    }
                });
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.asd
    /* renamed from: a_ */
    public final void mo17402a_(zzvh zzvhVar) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46129b, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cnm

                    /* renamed from: a */
                    private final zzvh f46149a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46149a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12968ur) obj).mo14079a(this.f46149a);
                    }
                });
                clw.m17416a(cncVar2.f46129b, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cnp

                    /* renamed from: a */
                    private final zzvh f46152a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46152a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((AbstractC12968ur) obj).mo14081a(this.f46152a.errorCode);
                    }
                });
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46129b, cnv.f46158a);
                clw.m17416a(cncVar2.f46135h, cnu.f46157a);
                clw.m17416a(cncVar2.f46129b, cnx.f46160a);
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                cncVar2.f46133f.m17313a();
                clw.m17416a(cncVar2.f46129b, cnw.f46159a);
                clw.m17416a(cncVar2.f46135h, cnz.f46162a);
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46135h, cnh.f46140a);
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46135h, cng.f46139a);
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar;
            cnc cncVar3 = cncVar2.f46136i;
            if (cncVar3 == null) {
                clw.m17416a(cncVar2.f46135h, cnn.f46150a);
                return;
            }
            cncVar = cncVar3;
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        cnc cncVar = this.f46136i;
        if (cncVar != null) {
            cncVar.onAdMetadataChanged();
        } else {
            clw.m17416a(this.f46134g, cno.f46151a);
        }
    }
}

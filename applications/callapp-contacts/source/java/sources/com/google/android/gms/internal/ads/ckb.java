package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ckb.class */
public final class ckb implements zzp, arp, atk, atu, cmi {

    /* renamed from: f */
    private final cqs f45956f;

    /* renamed from: g */
    private final AtomicReference<egc> f45957g = new AtomicReference<>();

    /* renamed from: a */
    final AtomicReference<egh> f45951a = new AtomicReference<>();

    /* renamed from: b */
    final AtomicReference<egi> f45952b = new AtomicReference<>();

    /* renamed from: c */
    final AtomicReference<atk> f45953c = new AtomicReference<>();

    /* renamed from: d */
    final AtomicReference<zzp> f45954d = new AtomicReference<>();

    /* renamed from: e */
    final AtomicReference<emd> f45955e = new AtomicReference<>();

    /* renamed from: h */
    private ckb f45958h = null;

    public ckb(cqs cqsVar) {
        this.f45956f = cqsVar;
    }

    /* renamed from: a */
    public static ckb m17432a(ckb ckbVar) {
        ckb ckbVar2 = new ckb(ckbVar.f45956f);
        ckbVar2.mo17406a((cmi) ckbVar);
        return ckbVar2;
    }

    @Override // com.google.android.gms.internal.ads.atk
    /* renamed from: a */
    public final void mo17433a() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45953c, ckm.f45969a);
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.cmi
    /* renamed from: a */
    public final void mo17406a(cmi cmiVar) {
        this.f45958h = (ckb) cmiVar;
    }

    /* renamed from: a */
    public final void m17431a(egb egbVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45957g, new cma(egbVar) { // from class: com.google.android.gms.internal.ads.ckd

                    /* renamed from: a */
                    private final egb f45960a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45960a = egbVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((egc) obj).mo15073a(this.f45960a);
                    }
                });
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    /* renamed from: a */
    public final void m17430a(egc egcVar) {
        this.f45957g.set(egcVar);
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45957g, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cki

                    /* renamed from: a */
                    private final zzvh f45965a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45965a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((egc) obj).mo15072a(this.f45965a);
                    }
                });
                clw.m17416a(ckbVar2.f45957g, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.ckh

                    /* renamed from: a */
                    private final zzvh f45964a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45964a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((egc) obj).mo15074a(this.f45964a.errorCode);
                    }
                });
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.atu
    /* renamed from: a */
    public final void mo17403a(zzvv zzvvVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45955e, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.cke

                    /* renamed from: a */
                    private final zzvv f45961a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45961a = zzvvVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((emd) obj).mo14203a(this.f45961a);
                    }
                });
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    /* renamed from: b */
    public final void m17429b() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                ckbVar2.f45956f.m17313a();
                clw.m17416a(ckbVar2.f45951a, ckk.f45967a);
                clw.m17416a(ckbVar2.f45952b, ckj.f45966a);
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45954d, ckf.f45962a);
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45954d, new cma(zzlVar) { // from class: com.google.android.gms.internal.ads.ckg

                    /* renamed from: a */
                    private final zzl f45963a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45963a = zzlVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    /* renamed from: a */
                    public final void mo17391a(Object obj) {
                        ((zzp) obj).zza(this.f45963a);
                    }
                });
                return;
            }
            ckbVar = ckbVar3;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar;
            ckb ckbVar3 = ckbVar2.f45958h;
            if (ckbVar3 == null) {
                clw.m17416a(ckbVar2.f45954d, ckl.f45968a);
                clw.m17416a(ckbVar2.f45952b, cko.f45971a);
                clw.m17416a(ckbVar2.f45952b, ckn.f45970a);
                return;
            }
            ckbVar = ckbVar3;
        }
    }
}

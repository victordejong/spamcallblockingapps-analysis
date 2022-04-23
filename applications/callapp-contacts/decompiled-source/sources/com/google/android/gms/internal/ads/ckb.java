package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ckb.class */
public final class ckb implements zzp, arp, atk, atu, cmi {
    private final cqs f;
    private final AtomicReference<egc> g = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<egh> f25969a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<egi> f25970b = new AtomicReference<>();

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<atk> f25971c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<zzp> f25972d = new AtomicReference<>();
    final AtomicReference<emd> e = new AtomicReference<>();
    private ckb h = null;

    public ckb(cqs cqsVar) {
        this.f = cqsVar;
    }

    public static ckb a(ckb ckbVar) {
        ckb ckbVar2 = new ckb(ckbVar.f);
        ckbVar2.a((cmi) ckbVar);
        return ckbVar2;
    }

    @Override // com.google.android.gms.internal.ads.atk
    public final void a() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.f25971c, ckm.f25983a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cmi
    public final void a(cmi cmiVar) {
        this.h = (ckb) cmiVar;
    }

    public final void a(final egb egbVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.g, new cma(egbVar) { // from class: com.google.android.gms.internal.ads.ckd

                    /* renamed from: a  reason: collision with root package name */
                    private final egb f25974a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25974a = egbVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((egc) obj).a(this.f25974a);
                    }
                });
                return;
            }
        }
    }

    public final void a(egc egcVar) {
        this.g.set(egcVar);
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(final zzvh zzvhVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.g, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cki

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvh f25979a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25979a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((egc) obj).a(this.f25979a);
                    }
                });
                clw.a(ckbVar.g, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.ckh

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvh f25978a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25978a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((egc) obj).a(this.f25978a.errorCode);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atu
    public final void a(final zzvv zzvvVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.e, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.cke

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvv f25975a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25975a = zzvvVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((emd) obj).a(this.f25975a);
                    }
                });
                return;
            }
        }
    }

    public final void b() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                ckbVar.f.a();
                clw.a(ckbVar.f25969a, ckk.f25981a);
                clw.a(ckbVar.f25970b, ckj.f25980a);
                return;
            }
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
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.f25972d, ckf.f25976a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(final zzl zzlVar) {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.f25972d, new cma(zzlVar) { // from class: com.google.android.gms.internal.ads.ckg

                    /* renamed from: a  reason: collision with root package name */
                    private final zzl f25977a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25977a = zzlVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((zzp) obj).zza(this.f25977a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        ckb ckbVar = this;
        while (true) {
            ckb ckbVar2 = ckbVar.h;
            if (ckbVar2 != null) {
                ckbVar = ckbVar2;
            } else {
                clw.a(ckbVar.f25972d, ckl.f25982a);
                clw.a(ckbVar.f25970b, cko.f25985a);
                clw.a(ckbVar.f25970b, ckn.f25984a);
                return;
            }
        }
    }
}

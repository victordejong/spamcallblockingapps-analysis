package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cnc.class */
public final class cnc extends AdMetadataListener implements aro, arp, asd, atb, atu, cmi {
    private final cqs f;
    private final AtomicReference<AdMetadataListener> g = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<uy> f26107a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<ur> f26108b = new AtomicReference<>();
    private final AtomicReference<tz> h = new AtomicReference<>();

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<uz> f26109c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<tq> f26110d = new AtomicReference<>();
    final AtomicReference<emd> e = new AtomicReference<>();
    private cnc i = null;

    public cnc(cqs cqsVar) {
        this.f = cqsVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.f26107a, cnf.f26112a);
                clw.a(cncVar.h, cne.f26111a);
                return;
            }
        }
    }

    public final void a(AdMetadataListener adMetadataListener) {
        this.g.set(adMetadataListener);
    }

    @Override // com.google.android.gms.internal.ads.cmi
    public final void a(cmi cmiVar) {
        this.i = (cnc) cmiVar;
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(final tp tpVar, final String str, final String str2) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.f26108b, new cma(tpVar) { // from class: com.google.android.gms.internal.ads.cnj

                    /* renamed from: a  reason: collision with root package name */
                    private final tp f26118a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26118a = tpVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        tp tpVar2 = this.f26118a;
                        ((ur) obj).a(new vm(tpVar2.a(), tpVar2.b()));
                    }
                });
                clw.a(cncVar.f26109c, new cma(tpVar, str, str2) { // from class: com.google.android.gms.internal.ads.cni

                    /* renamed from: a  reason: collision with root package name */
                    private final tp f26115a;

                    /* renamed from: b  reason: collision with root package name */
                    private final String f26116b;

                    /* renamed from: c  reason: collision with root package name */
                    private final String f26117c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26115a = tpVar;
                        this.f26116b = str;
                        this.f26117c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        tp tpVar2 = this.f26115a;
                        ((uz) obj).a(new vm(tpVar2.a(), tpVar2.b()), this.f26116b, this.f26117c);
                    }
                });
                clw.a(cncVar.h, new cma(tpVar) { // from class: com.google.android.gms.internal.ads.cnl

                    /* renamed from: a  reason: collision with root package name */
                    private final tp f26122a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26122a = tpVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((tz) obj).a(this.f26122a);
                    }
                });
                clw.a(cncVar.f26110d, new cma(tpVar, str, str2) { // from class: com.google.android.gms.internal.ads.cnk

                    /* renamed from: a  reason: collision with root package name */
                    private final tp f26119a;

                    /* renamed from: b  reason: collision with root package name */
                    private final String f26120b;

                    /* renamed from: c  reason: collision with root package name */
                    private final String f26121c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26119a = tpVar;
                        this.f26120b = str;
                        this.f26121c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((tq) obj).a(this.f26119a, this.f26120b, this.f26121c);
                    }
                });
                return;
            }
        }
    }

    @Deprecated
    public final void a(tz tzVar) {
        this.h.set(tzVar);
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(final zzvh zzvhVar) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                final int i = zzvhVar.errorCode;
                clw.a(cncVar.f26107a, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cnr

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvh f26128a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26128a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((uy) obj).a(this.f26128a);
                    }
                });
                clw.a(cncVar.f26107a, new cma(i) { // from class: com.google.android.gms.internal.ads.cnt

                    /* renamed from: a  reason: collision with root package name */
                    private final int f26130a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26130a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((uy) obj).a(this.f26130a);
                    }
                });
                clw.a(cncVar.h, new cma(i) { // from class: com.google.android.gms.internal.ads.cns

                    /* renamed from: a  reason: collision with root package name */
                    private final int f26129a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26129a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((tz) obj).a(this.f26129a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atu
    public final void a(final zzvv zzvvVar) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.e, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.cnq

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvv f26127a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26127a = zzvvVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((emd) obj).a(this.f26127a);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asd
    public final void a_(final zzvh zzvhVar) {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.f26108b, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cnm

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvh f26123a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26123a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((ur) obj).a(this.f26123a);
                    }
                });
                clw.a(cncVar.f26108b, new cma(zzvhVar) { // from class: com.google.android.gms.internal.ads.cnp

                    /* renamed from: a  reason: collision with root package name */
                    private final zzvh f26126a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26126a = zzvhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cma
                    public final void a(Object obj) {
                        ((ur) obj).a(this.f26126a.errorCode);
                    }
                });
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.f26108b, cnv.f26132a);
                clw.a(cncVar.h, cnu.f26131a);
                clw.a(cncVar.f26108b, cnx.f26134a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                cncVar.f.a();
                clw.a(cncVar.f26108b, cnw.f26133a);
                clw.a(cncVar.h, cnz.f26136a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.h, cnh.f26114a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.h, cng.f26113a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
        cnc cncVar = this;
        while (true) {
            cnc cncVar2 = cncVar.i;
            if (cncVar2 != null) {
                cncVar = cncVar2;
            } else {
                clw.a(cncVar.h, cnn.f26124a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        cnc cncVar = this.i;
        if (cncVar != null) {
            cncVar.onAdMetadataChanged();
        } else {
            clw.a(this.g, cno.f26125a);
        }
    }
}

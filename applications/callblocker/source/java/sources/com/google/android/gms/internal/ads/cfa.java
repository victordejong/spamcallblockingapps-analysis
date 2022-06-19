package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.C2391a;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cfa.class */
public final class cfa extends C2391a implements AbstractC2792app, apv, aqe, arg, arw, ces {

    /* renamed from: a */
    private final cik f12851a;

    /* renamed from: b */
    private final AtomicReference<C2391a> f12852b = new AtomicReference<>();

    /* renamed from: c */
    private final AtomicReference<AbstractC3482sa> f12853c = new AtomicReference<>();

    /* renamed from: d */
    private final AtomicReference<AbstractC3479ry> f12854d = new AtomicReference<>();

    /* renamed from: e */
    private final AtomicReference<AbstractC3456rb> f12855e = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicReference<AbstractC3485sd> f12856f = new AtomicReference<>();

    /* renamed from: g */
    private final AtomicReference<AbstractC3450qw> f12857g = new AtomicReference<>();

    /* renamed from: h */
    private final AtomicReference<eau> f12858h = new AtomicReference<>();

    /* renamed from: i */
    private cfa f12859i = null;

    public cfa(cik cikVar) {
        this.f12851a = cikVar;
    }

    /* renamed from: a */
    public static cfa m11424a(cfa cfaVar) {
        cfa cfaVar2 = new cfa(cfaVar.f12851a);
        cfaVar2.mo11425a((ces) cfaVar);
        return cfaVar2;
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12853c, cfe.f12873a);
                cel.m11438a(cfaVar2.f12855e, cfd.f12872a);
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12853c, new cek(i) { // from class: com.google.android.gms.internal.ads.cfo

                    /* renamed from: a */
                    private final int f12887a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12887a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((AbstractC3482sa) obj).mo7197a(this.f12887a);
                    }
                });
                cel.m11438a(cfaVar2.f12855e, new cek(i) { // from class: com.google.android.gms.internal.ads.cfn

                    /* renamed from: a */
                    private final int f12886a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12886a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((AbstractC3456rb) obj).mo7260a(this.f12886a);
                    }
                });
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    /* renamed from: a */
    public final void m11426a(C2391a c2391a) {
        this.f12852b.set(c2391a);
    }

    @Override // com.google.android.gms.internal.ads.ces
    /* renamed from: a */
    public final void mo11425a(ces cesVar) {
        this.f12859i = (cfa) cesVar;
    }

    @Override // com.google.android.gms.internal.ads.arw
    /* renamed from: a */
    public final void mo11423a(dyf dyfVar) {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12858h, new cek(dyfVar) { // from class: com.google.android.gms.internal.ads.cfl

                    /* renamed from: a */
                    private final dyf f12884a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12884a = dyfVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((eau) obj).mo7912a(this.f12884a);
                    }
                });
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    /* renamed from: a */
    public final void m11422a(eau eauVar) {
        this.f12858h.set(eauVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: a */
    public final void mo11421a(AbstractC3445qr abstractC3445qr, String str, String str2) {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12854d, new cek(abstractC3445qr) { // from class: com.google.android.gms.internal.ads.cfg

                    /* renamed from: a */
                    private final AbstractC3445qr f12877a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12877a = abstractC3445qr;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        AbstractC3445qr abstractC3445qr2 = this.f12877a;
                        ((AbstractC3479ry) obj).mo7200a(new BinderC3490si(abstractC3445qr2.mo7292a(), abstractC3445qr2.mo7291b()));
                    }
                });
                cel.m11438a(cfaVar2.f12856f, new cek(abstractC3445qr, str, str2) { // from class: com.google.android.gms.internal.ads.cff

                    /* renamed from: a */
                    private final AbstractC3445qr f12874a;

                    /* renamed from: b */
                    private final String f12875b;

                    /* renamed from: c */
                    private final String f12876c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12874a = abstractC3445qr;
                        this.f12875b = str;
                        this.f12876c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        AbstractC3445qr abstractC3445qr2 = this.f12874a;
                        ((AbstractC3485sd) obj).mo7196a(new BinderC3490si(abstractC3445qr2.mo7292a(), abstractC3445qr2.mo7291b()), this.f12875b, this.f12876c);
                    }
                });
                cel.m11438a(cfaVar2.f12855e, new cek(abstractC3445qr) { // from class: com.google.android.gms.internal.ads.cfi

                    /* renamed from: a */
                    private final AbstractC3445qr f12881a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12881a = abstractC3445qr;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((AbstractC3456rb) obj).mo7258a(this.f12881a);
                    }
                });
                cel.m11438a(cfaVar2.f12857g, new cek(abstractC3445qr, str, str2) { // from class: com.google.android.gms.internal.ads.cfh

                    /* renamed from: a */
                    private final AbstractC3445qr f12878a;

                    /* renamed from: b */
                    private final String f12879b;

                    /* renamed from: c */
                    private final String f12880c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12878a = abstractC3445qr;
                        this.f12879b = str;
                        this.f12880c = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((AbstractC3450qw) obj).mo7290a(this.f12878a, this.f12879b, this.f12880c);
                    }
                });
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m11420a(AbstractC3450qw abstractC3450qw) {
        this.f12857g.set(abstractC3450qw);
    }

    @Deprecated
    /* renamed from: a */
    public final void m11419a(AbstractC3456rb abstractC3456rb) {
        this.f12855e.set(abstractC3456rb);
    }

    /* renamed from: a */
    public final void m11418a(AbstractC3479ry abstractC3479ry) {
        this.f12854d.set(abstractC3479ry);
    }

    /* renamed from: a */
    public final void m11417a(AbstractC3482sa abstractC3482sa) {
        this.f12853c.set(abstractC3482sa);
    }

    /* renamed from: a */
    public final void m11416a(AbstractC3485sd abstractC3485sd) {
        this.f12856f.set(abstractC3485sd);
    }

    @Override // com.google.android.gms.internal.ads.aqe
    /* renamed from: b */
    public final void mo11415b(int i) {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12854d, new cek(i) { // from class: com.google.android.gms.internal.ads.cfj

                    /* renamed from: a */
                    private final int f12882a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12882a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((AbstractC3479ry) obj).mo7201a(this.f12882a);
                    }
                });
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: c */
    public final void mo11414c() {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12854d, cfq.f12889a);
                cel.m11438a(cfaVar2.f12855e, cfp.f12888a);
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: d */
    public final void mo11413d() {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cfaVar2.f12851a.m11249a();
                cel.m11438a(cfaVar2.f12854d, cfs.f12891a);
                cel.m11438a(cfaVar2.f12855e, cfr.f12890a);
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: f */
    public final void mo11412f() {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12855e, cfu.f12893a);
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: g */
    public final void mo11411g() {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12855e, cft.f12892a);
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: h */
    public final void mo11410h() {
        cfa cfaVar = this;
        while (true) {
            cfa cfaVar2 = cfaVar;
            if (cfaVar2.f12859i == null) {
                cel.m11438a(cfaVar2.f12855e, cfk.f12883a);
                return;
            }
            cfaVar = cfaVar2.f12859i;
        }
    }

    @Override // com.google.android.gms.ads.reward.C2391a
    /* renamed from: k_ */
    public final void mo11372k_() {
        if (this.f12859i != null) {
            this.f12859i.mo11372k_();
        } else {
            cel.m11438a(this.f12852b, cfm.f12885a);
        }
    }
}

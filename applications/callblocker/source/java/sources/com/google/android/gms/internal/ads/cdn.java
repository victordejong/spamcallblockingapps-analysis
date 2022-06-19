package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cdn.class */
public final class cdn implements apv, arl, ces {

    /* renamed from: a */
    private final cik f12783a;

    /* renamed from: b */
    private final AtomicReference<dve> f12784b = new AtomicReference<>();

    /* renamed from: c */
    private final AtomicReference<dvi> f12785c = new AtomicReference<>();

    /* renamed from: d */
    private final AtomicReference<arl> f12786d = new AtomicReference<>();

    /* renamed from: e */
    private cdn f12787e = null;

    public cdn(cik cikVar) {
        this.f12783a = cikVar;
    }

    /* renamed from: a */
    public static cdn m11452a(cdn cdnVar) {
        cdn cdnVar2 = new cdn(cdnVar.f12783a);
        cdnVar2.mo11425a((ces) cdnVar);
        return cdnVar2;
    }

    /* renamed from: a */
    public final void m11454a() {
        cdn cdnVar = this;
        while (true) {
            cdn cdnVar2 = cdnVar;
            if (cdnVar2.f12787e == null) {
                cdnVar2.f12783a.m11249a();
                cel.m11438a(cdnVar2.f12785c, cds.f12791a);
                return;
            }
            cdnVar = cdnVar2.f12787e;
        }
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        cdn cdnVar = this;
        while (true) {
            cdn cdnVar2 = cdnVar;
            if (cdnVar2.f12787e == null) {
                cel.m11438a(cdnVar2.f12784b, new cek(i) { // from class: com.google.android.gms.internal.ads.cdp

                    /* renamed from: a */
                    private final int f12788a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12788a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((dve) obj).mo8512a(this.f12788a);
                    }
                });
                return;
            }
            cdnVar = cdnVar2.f12787e;
        }
    }

    /* renamed from: a */
    public final void m11453a(arl arlVar) {
        this.f12786d.set(arlVar);
    }

    @Override // com.google.android.gms.internal.ads.ces
    /* renamed from: a */
    public final void mo11425a(ces cesVar) {
        this.f12787e = (cdn) cesVar;
    }

    /* renamed from: a */
    public final void m11451a(dvd dvdVar) {
        cdn cdnVar = this;
        while (true) {
            cdn cdnVar2 = cdnVar;
            if (cdnVar2.f12787e == null) {
                cel.m11438a(cdnVar2.f12784b, new cek(dvdVar) { // from class: com.google.android.gms.internal.ads.cdq

                    /* renamed from: a */
                    private final dvd f12789a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12789a = dvdVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cek
                    /* renamed from: a */
                    public final void mo11397a(Object obj) {
                        ((dve) obj).mo8511a(this.f12789a);
                    }
                });
                return;
            }
            cdnVar = cdnVar2.f12787e;
        }
    }

    /* renamed from: a */
    public final void m11450a(dve dveVar) {
        this.f12784b.set(dveVar);
    }

    /* renamed from: a */
    public final void m11449a(dvi dviVar) {
        this.f12785c.set(dviVar);
    }

    @Override // com.google.android.gms.internal.ads.arl
    /* renamed from: s */
    public final void mo11448s() {
        cdn cdnVar = this;
        while (true) {
            cdn cdnVar2 = cdnVar;
            if (cdnVar2.f12787e == null) {
                cel.m11438a(cdnVar2.f12786d, cdr.f12790a);
                return;
            }
            cdnVar = cdnVar2.f12787e;
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ehn;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjz.class */
public final class bjz implements arp, ash, atb, auf, awi, eir {

    /* renamed from: a */
    private final ehk f44126a;

    /* renamed from: b */
    private boolean f44127b = false;

    public bjz(ehk ehkVar, cmp cmpVar) {
        this.f44126a = ehkVar;
        ehkVar.m15047a(ehn.C12444a.EnumC12446b.AD_REQUEST);
        if (cmpVar != null) {
            ehkVar.m15047a(ehn.C12444a.EnumC12446b.REQUEST_IS_PREFETCH);
        }
    }

    @Override // com.google.android.gms.internal.ads.awi
    /* renamed from: G_ */
    public final void mo17796G_() {
        this.f44126a.m15047a(ehn.C12444a.EnumC12446b.REQUEST_FAILED_TO_LOAD_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_LOADED);
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
        this.f44126a.m15048a(new ehj(cpkVar) { // from class: com.google.android.gms.internal.ads.bkc

            /* renamed from: a */
            private final cpk f44134a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44134a = cpkVar;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            /* renamed from: a */
            public final void mo15050a(eht.C12494n.C12495a c12495a) {
                cpk cpkVar2 = this.f44134a;
                eht.C12447a.C12449b m16334k = c12495a.m14959i().m16334k();
                eht.C12447a m14959i = c12495a.m14959i();
                c12495a.m14968a(m16334k.m15036a(((eht.C12485j.C12486a) (m14959i.zzbzc == null ? eht.C12485j.m14991a() : m14959i.zzbzc).m16334k()).m14988a(cpkVar2.f46319b.f46314b.f46290b)));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.awi
    /* renamed from: a */
    public final void mo17795a(eht.C12471g c12471g) {
        this.f44126a.m15048a(new ehj(c12471g) { // from class: com.google.android.gms.internal.ads.bkb

            /* renamed from: a */
            private final eht.C12471g f44133a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44133a = c12471g;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            /* renamed from: a */
            public final void mo15050a(eht.C12494n.C12495a c12495a) {
                c12495a.m14966a(this.f44133a);
            }
        });
        this.f44126a.m15047a(ehn.C12444a.EnumC12446b.REQUEST_LOADED_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        switch (zzvhVar.errorCode) {
            case 1:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FAILED_TO_LOAD);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.awi
    /* renamed from: a */
    public final void mo17794a(boolean z) {
        this.f44126a.m15047a(z ? ehn.C12444a.EnumC12446b.REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED : ehn.C12444a.EnumC12446b.REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        synchronized (this) {
            this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_IMPRESSION);
        }
    }

    @Override // com.google.android.gms.internal.ads.awi
    /* renamed from: b */
    public final void mo17793b(eht.C12471g c12471g) {
        this.f44126a.m15048a(new ehj(c12471g) { // from class: com.google.android.gms.internal.ads.bke

            /* renamed from: a */
            private final eht.C12471g f44136a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44136a = c12471g;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            /* renamed from: a */
            public final void mo15050a(eht.C12494n.C12495a c12495a) {
                c12495a.m14966a(this.f44136a);
            }
        });
        this.f44126a.m15047a(ehn.C12444a.EnumC12446b.REQUEST_SAVED_TO_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.awi
    /* renamed from: b */
    public final void mo17792b(boolean z) {
        this.f44126a.m15047a(z ? ehn.C12444a.EnumC12446b.NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED : ehn.C12444a.EnumC12446b.NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.awi
    /* renamed from: c */
    public final void mo17791c(eht.C12471g c12471g) {
        this.f44126a.m15048a(new ehj(c12471g) { // from class: com.google.android.gms.internal.ads.bkd

            /* renamed from: a */
            private final eht.C12471g f44135a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44135a = c12471g;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            /* renamed from: a */
            public final void mo15050a(eht.C12494n.C12495a c12495a) {
                c12495a.m14966a(this.f44135a);
            }
        });
        this.f44126a.m15047a(ehn.C12444a.EnumC12446b.REQUEST_PREFETCH_INTERCEPTED);
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f44127b) {
                this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_SUBSEQUENT_CLICK);
                return;
            }
            this.f44126a.m15047a(ehn.C12444a.EnumC12446b.AD_FIRST_CLICK);
            this.f44127b = true;
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dwk;
import com.google.android.gms.internal.ads.dwv;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bga.class */
public final class bga implements apv, aqi, arg, ash, atb, dxs {

    /* renamed from: a */
    private final dwi f11181a;
    @GuardedBy("this")

    /* renamed from: b */
    private boolean f11182b = false;
    @GuardedBy("this")

    /* renamed from: c */
    private boolean f11183c = false;

    public bga(dwi dwiVar, @Nullable cfc cfcVar) {
        this.f11181a = dwiVar;
        dwiVar.m8442a(dwk.C3018a.EnumC3019a.AD_REQUEST);
        if (cfcVar != null) {
            dwiVar.m8442a(dwk.C3018a.EnumC3019a.REQUEST_IS_PREFETCH);
        }
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_LOADED);
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        switch (i) {
            case 1:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FAILED_TO_LOAD);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11830a(chd chdVar) {
        this.f11181a.m8441a(new dwl(chdVar) { // from class: com.google.android.gms.internal.ads.bgd

            /* renamed from: a */
            private final chd f11187a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11187a = chdVar;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                c3069a.m8317a(c3069a.m8308j().m10078p().m8419a(c3069a.m8308j().m8429a().m10078p().m8352a(this.f11187a.f13035b.f13025b.f13006b)));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo11979a(dwv.C3045g c3045g) {
        this.f11181a.m8441a(new dwl(c3045g) { // from class: com.google.android.gms.internal.ads.bgc

            /* renamed from: a */
            private final dwv.C3045g f11186a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11186a = c3045g;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                c3069a.m8315a(this.f11186a);
            }
        });
        this.f11181a.m8442a(dwk.C3018a.EnumC3019a.REQUEST_LOADED_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11829a(C3423pw c3423pw) {
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo11978a(boolean z) {
        this.f11181a.m8442a(z ? dwk.C3018a.EnumC3019a.REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED : dwk.C3018a.EnumC3019a.REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        synchronized (this) {
            this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_IMPRESSION);
        }
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: b */
    public final void mo11977b(dwv.C3045g c3045g) {
        this.f11181a.m8441a(new dwl(c3045g) { // from class: com.google.android.gms.internal.ads.bgf

            /* renamed from: a */
            private final dwv.C3045g f11189a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11189a = c3045g;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                c3069a.m8315a(this.f11189a);
            }
        });
        this.f11181a.m8442a(dwk.C3018a.EnumC3019a.REQUEST_SAVED_TO_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: b */
    public final void mo11976b(boolean z) {
        this.f11181a.m8442a(z ? dwk.C3018a.EnumC3019a.NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED : dwk.C3018a.EnumC3019a.NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: c */
    public final void mo11975c(dwv.C3045g c3045g) {
        this.f11181a.m8441a(new dwl(c3045g) { // from class: com.google.android.gms.internal.ads.bge

            /* renamed from: a */
            private final dwv.C3045g f11188a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11188a = c3045g;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                c3069a.m8315a(this.f11188a);
            }
        });
        this.f11181a.m8442a(dwk.C3018a.EnumC3019a.REQUEST_PREFETCH_INTERCEPTED);
    }

    @Override // com.google.android.gms.internal.ads.dxs
    /* renamed from: e */
    public final void mo8200e() {
        synchronized (this) {
            if (!this.f11183c) {
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_FIRST_CLICK);
                this.f11183c = true;
            } else {
                this.f11181a.m8442a(dwk.C3018a.EnumC3019a.AD_SUBSEQUENT_CLICK);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: i_ */
    public final void mo11974i_() {
        this.f11181a.m8442a(dwk.C3018a.EnumC3019a.REQUEST_FAILED_TO_LOAD_FROM_CACHE);
    }
}

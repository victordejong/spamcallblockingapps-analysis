package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzua;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcln.class */
public final class zzcln implements zzbui, zzbuz, zzbvs, zzbws, zzbyo, zzux {

    /* renamed from: a */
    public final zzts f26216a;

    /* renamed from: b */
    public boolean f26217b = false;

    public zzcln(zzts zztsVar, zzdmd zzdmdVar) {
        this.f26216a = zztsVar;
        zztsVar.m11424a(zztu.zza.zzb.AD_REQUEST);
        if (zzdmdVar != null) {
            zztsVar.m11424a(zztu.zza.zzb.REQUEST_IS_PREFETCH);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        synchronized (this) {
            this.f26216a.m11424a(zztu.zza.zzb.AD_IMPRESSION);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14002a(zzatc zzatcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14001a(final zzdog zzdogVar) {
        this.f26216a.m11425a(new zztr(zzdogVar) { // from class: c.d.b.d.g.a.vk

            /* renamed from: a */
            public final zzdog f15870a;

            {
                this.f15870a = zzdogVar;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar) {
                zzdog zzdogVar2 = this.f15870a;
                zzua.zza.zzb d = zzaVar.m11309s().m12397d();
                zzua.zze.zza d2 = zzaVar.m11309s().m11411m().m12397d();
                d2.m11351a(zzdogVar2.f27634b.f27630b.f27612b);
                d.m11407a(d2);
                zzaVar.m11319a(d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    /* renamed from: a */
    public final void mo14083a(final zzua.zzb zzbVar) {
        this.f26216a.m11425a(new zztr(zzbVar) { // from class: c.d.b.d.g.a.uk

            /* renamed from: a */
            public final zzua.zzb f15652a;

            {
                this.f15652a = zzbVar;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar) {
                zzaVar.m11317a(this.f15652a);
            }
        });
        this.f26216a.m11424a(zztu.zza.zzb.REQUEST_LOADED_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(zzva zzvaVar) {
        switch (zzvaVar.f28995a) {
            case 1:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.f26216a.m11424a(zztu.zza.zzb.AD_FAILED_TO_LOAD);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    /* renamed from: a */
    public final void mo14082a(boolean z) {
        this.f26216a.m11424a(z ? zztu.zza.zzb.REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED : zztu.zza.zzb.REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    /* renamed from: b */
    public final void mo14081b(final zzua.zzb zzbVar) {
        this.f26216a.m11425a(new zztr(zzbVar) { // from class: c.d.b.d.g.a.xk

            /* renamed from: a */
            public final zzua.zzb f16055a;

            {
                this.f16055a = zzbVar;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar) {
                zzaVar.m11317a(this.f16055a);
            }
        });
        this.f26216a.m11424a(zztu.zza.zzb.REQUEST_SAVED_TO_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    /* renamed from: c */
    public final void mo14080c(final zzua.zzb zzbVar) {
        this.f26216a.m11425a(new zztr(zzbVar) { // from class: c.d.b.d.g.a.wk

            /* renamed from: a */
            public final zzua.zzb f15954a;

            {
                this.f15954a = zzbVar;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar) {
                zzaVar.m11317a(this.f15954a);
            }
        });
        this.f26216a.m11424a(zztu.zza.zzb.REQUEST_PREFETCH_INTERCEPTED);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    /* renamed from: c */
    public final void mo14079c(boolean z) {
        this.f26216a.m11424a(z ? zztu.zza.zzb.NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED : zztu.zza.zzb.NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.zzbyo
    /* renamed from: j */
    public final void mo14078j() {
        this.f26216a.m11424a(zztu.zza.zzb.REQUEST_FAILED_TO_LOAD_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        synchronized (this) {
            if (!this.f26217b) {
                this.f26216a.m11424a(zztu.zza.zzb.AD_FIRST_CLICK);
                this.f26217b = true;
                return;
            }
            this.f26216a.m11424a(zztu.zza.zzb.AD_SUBSEQUENT_CLICK);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        this.f26216a.m11424a(zztu.zza.zzb.AD_LOADED);
    }
}

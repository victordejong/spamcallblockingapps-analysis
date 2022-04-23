package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ehn;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bjz.class */
public final class bjz implements arp, ash, atb, auf, awi, eir {

    /* renamed from: a  reason: collision with root package name */
    private final ehk f24574a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f24575b = false;

    public bjz(ehk ehkVar, cmp cmpVar) {
        this.f24574a = ehkVar;
        ehkVar.a(ehn.a.b.AD_REQUEST);
        if (cmpVar != null) {
            ehkVar.a(ehn.a.b.REQUEST_IS_PREFETCH);
        }
    }

    @Override // com.google.android.gms.internal.ads.awi
    public final void G_() {
        this.f24574a.a(ehn.a.b.REQUEST_FAILED_TO_LOAD_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        this.f24574a.a(ehn.a.b.AD_LOADED);
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(final cpk cpkVar) {
        this.f24574a.a(new ehj(cpkVar) { // from class: com.google.android.gms.internal.ads.bkc

            /* renamed from: a  reason: collision with root package name */
            private final cpk f24582a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24582a = cpkVar;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            public final void a(eht.n.a aVar) {
                cpk cpkVar2 = this.f24582a;
                eht.a.b k = aVar.i().k();
                eht.a i = aVar.i();
                aVar.a(k.a(((eht.j.a) (i.zzbzc == null ? eht.j.a() : i.zzbzc).k()).a(cpkVar2.f26222b.f26217b.f26197b)));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.awi
    public final void a(final eht.g gVar) {
        this.f24574a.a(new ehj(gVar) { // from class: com.google.android.gms.internal.ads.bkb

            /* renamed from: a  reason: collision with root package name */
            private final eht.g f24581a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24581a = gVar;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            public final void a(eht.n.a aVar) {
                aVar.a(this.f24581a);
            }
        });
        this.f24574a.a(ehn.a.b.REQUEST_LOADED_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(zzvh zzvhVar) {
        switch (zzvhVar.errorCode) {
            case 1:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                return;
            case 2:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                return;
            case 3:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_NO_FILL);
                return;
            case 4:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_TIMEOUT);
                return;
            case 5:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_CANCELLED);
                return;
            case 6:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_NO_ERROR);
                return;
            case 7:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD_NOT_FOUND);
                return;
            default:
                this.f24574a.a(ehn.a.b.AD_FAILED_TO_LOAD);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.awi
    public final void a(boolean z) {
        this.f24574a.a(z ? ehn.a.b.REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED : ehn.a.b.REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        synchronized (this) {
            this.f24574a.a(ehn.a.b.AD_IMPRESSION);
        }
    }

    @Override // com.google.android.gms.internal.ads.awi
    public final void b(final eht.g gVar) {
        this.f24574a.a(new ehj(gVar) { // from class: com.google.android.gms.internal.ads.bke

            /* renamed from: a  reason: collision with root package name */
            private final eht.g f24584a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24584a = gVar;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            public final void a(eht.n.a aVar) {
                aVar.a(this.f24584a);
            }
        });
        this.f24574a.a(ehn.a.b.REQUEST_SAVED_TO_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.awi
    public final void b(boolean z) {
        this.f24574a.a(z ? ehn.a.b.NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED : ehn.a.b.NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED);
    }

    @Override // com.google.android.gms.internal.ads.awi
    public final void c(final eht.g gVar) {
        this.f24574a.a(new ehj(gVar) { // from class: com.google.android.gms.internal.ads.bkd

            /* renamed from: a  reason: collision with root package name */
            private final eht.g f24583a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24583a = gVar;
            }

            @Override // com.google.android.gms.internal.ads.ehj
            public final void a(eht.n.a aVar) {
                aVar.a(this.f24583a);
            }
        });
        this.f24574a.a(ehn.a.b.REQUEST_PREFETCH_INTERCEPTED);
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        synchronized (this) {
            if (!this.f24575b) {
                this.f24574a.a(ehn.a.b.AD_FIRST_CLICK);
                this.f24575b = true;
                return;
            }
            this.f24574a.a(ehn.a.b.AD_SUBSEQUENT_CLICK);
        }
    }
}

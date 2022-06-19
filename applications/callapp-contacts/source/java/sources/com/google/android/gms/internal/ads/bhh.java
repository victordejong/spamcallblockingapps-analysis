package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhh.class */
public final class bhh implements zzp, zzx, eir, AbstractC12586go, AbstractC12588gq {

    /* renamed from: a */
    private eir f43935a;

    /* renamed from: b */
    private AbstractC12586go f43936b;

    /* renamed from: c */
    private zzp f43937c;

    /* renamed from: d */
    private AbstractC12588gq f43938d;

    /* renamed from: e */
    private zzx f43939e;

    private bhh() {
    }

    public /* synthetic */ bhh(bhd bhdVar) {
        this();
    }

    /* renamed from: a */
    public final void m17862a(eir eirVar, AbstractC12586go abstractC12586go, zzp zzpVar, AbstractC12588gq abstractC12588gq, zzx zzxVar) {
        synchronized (this) {
            this.f43935a = eirVar;
            this.f43936b = abstractC12586go;
            this.f43937c = zzpVar;
            this.f43938d = abstractC12588gq;
            this.f43939e = zzxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12586go
    /* renamed from: a */
    public final void mo14637a(String str, Bundle bundle) {
        synchronized (this) {
            AbstractC12586go abstractC12586go = this.f43936b;
            if (abstractC12586go != null) {
                abstractC12586go.mo14637a(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12588gq
    /* renamed from: a */
    public final void mo14636a(String str, String str2) {
        synchronized (this) {
            AbstractC12588gq abstractC12588gq = this.f43938d;
            if (abstractC12588gq != null) {
                abstractC12588gq.mo14636a(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        synchronized (this) {
            eir eirVar = this.f43935a;
            if (eirVar != null) {
                eirVar.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            zzp zzpVar = this.f43937c;
            if (zzpVar != null) {
                zzpVar.onPause();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            zzp zzpVar = this.f43937c;
            if (zzpVar != null) {
                zzpVar.onResume();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        synchronized (this) {
            zzp zzpVar = this.f43937c;
            if (zzpVar != null) {
                zzpVar.onUserLeaveHint();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        synchronized (this) {
            zzp zzpVar = this.f43937c;
            if (zzpVar != null) {
                zzpVar.zza(zzlVar);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        synchronized (this) {
            zzp zzpVar = this.f43937c;
            if (zzpVar != null) {
                zzpVar.zzvz();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx
    public final void zzws() {
        synchronized (this) {
            zzx zzxVar = this.f43939e;
            if (zzxVar != null) {
                zzxVar.zzws();
            }
        }
    }
}

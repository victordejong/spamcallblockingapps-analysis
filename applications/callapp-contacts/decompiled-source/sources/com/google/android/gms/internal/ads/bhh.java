package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhh.class */
public final class bhh implements zzp, zzx, eir, go, gq {

    /* renamed from: a  reason: collision with root package name */
    private eir f24445a;

    /* renamed from: b  reason: collision with root package name */
    private go f24446b;

    /* renamed from: c  reason: collision with root package name */
    private zzp f24447c;

    /* renamed from: d  reason: collision with root package name */
    private gq f24448d;
    private zzx e;

    private bhh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bhh(bhd bhdVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(eir eirVar, go goVar, zzp zzpVar, gq gqVar, zzx zzxVar) {
        synchronized (this) {
            this.f24445a = eirVar;
            this.f24446b = goVar;
            this.f24447c = zzpVar;
            this.f24448d = gqVar;
            this.e = zzxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.go
    public final void a(String str, Bundle bundle) {
        synchronized (this) {
            go goVar = this.f24446b;
            if (goVar != null) {
                goVar.a(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.gq
    public final void a(String str, String str2) {
        synchronized (this) {
            gq gqVar = this.f24448d;
            if (gqVar != null) {
                gqVar.a(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        synchronized (this) {
            eir eirVar = this.f24445a;
            if (eirVar != null) {
                eirVar.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            zzp zzpVar = this.f24447c;
            if (zzpVar != null) {
                zzpVar.onPause();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            zzp zzpVar = this.f24447c;
            if (zzpVar != null) {
                zzpVar.onResume();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        synchronized (this) {
            zzp zzpVar = this.f24447c;
            if (zzpVar != null) {
                zzpVar.onUserLeaveHint();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        synchronized (this) {
            zzp zzpVar = this.f24447c;
            if (zzpVar != null) {
                zzpVar.zza(zzlVar);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        synchronized (this) {
            zzp zzpVar = this.f24447c;
            if (zzpVar != null) {
                zzpVar.zzvz();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx
    public final void zzws() {
        synchronized (this) {
            zzx zzxVar = this.e;
            if (zzxVar != null) {
                zzxVar.zzws();
            }
        }
    }
}

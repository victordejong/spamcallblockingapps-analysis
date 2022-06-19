package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ady.class */
final class ady implements zzp {

    /* renamed from: a */
    private adt f40030a;

    /* renamed from: b */
    private zzp f40031b;

    public ady(adt adtVar, zzp zzpVar) {
        this.f40030a = adtVar;
        this.f40031b = zzpVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        zzp zzpVar = this.f40031b;
        if (zzpVar != null) {
            zzpVar.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        zzp zzpVar = this.f40031b;
        if (zzpVar != null) {
            zzpVar.zza(zzlVar);
        }
        this.f40030a.mo13730t();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        zzp zzpVar = this.f40031b;
        if (zzpVar != null) {
            zzpVar.zzvz();
        }
        this.f40030a.mo13729u();
    }
}

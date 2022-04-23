package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ady.class */
final class ady implements zzp {

    /* renamed from: a  reason: collision with root package name */
    private adt f23170a;

    /* renamed from: b  reason: collision with root package name */
    private zzp f23171b;

    public ady(adt adtVar, zzp zzpVar) {
        this.f23170a = adtVar;
        this.f23171b = zzpVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        zzp zzpVar = this.f23171b;
        if (zzpVar != null) {
            zzpVar.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        zzp zzpVar = this.f23171b;
        if (zzpVar != null) {
            zzpVar.zza(zzlVar);
        }
        this.f23170a.t();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        zzp zzpVar = this.f23171b;
        if (zzpVar != null) {
            zzpVar.zzvz();
        }
        this.f23170a.u();
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bag.class */
public final class bag implements zzp {

    /* renamed from: a */
    private final atj f43393a;

    /* renamed from: b */
    private final aye f43394b;

    public bag(atj atjVar, aye ayeVar) {
        this.f43393a = atjVar;
        this.f43394b = ayeVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        this.f43393a.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        this.f43393a.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        this.f43393a.onUserLeaveHint();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.f43393a.zza(zzlVar);
        this.f43394b.m18325b();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        this.f43393a.zzvz();
        this.f43394b.m18326a();
    }
}

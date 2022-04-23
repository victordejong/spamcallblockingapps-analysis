package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bag.class */
public final class bag implements zzp {

    /* renamed from: a  reason: collision with root package name */
    private final atj f24074a;

    /* renamed from: b  reason: collision with root package name */
    private final aye f24075b;

    public bag(atj atjVar, aye ayeVar) {
        this.f24074a = atjVar;
        this.f24075b = ayeVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        this.f24074a.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        this.f24074a.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        this.f24074a.onUserLeaveHint();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.f24074a.zza(zzlVar);
        this.f24075b.b();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        this.f24074a.zzvz();
        this.f24075b.a();
    }
}

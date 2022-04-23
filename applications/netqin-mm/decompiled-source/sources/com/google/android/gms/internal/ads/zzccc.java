package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccc.class */
public final class zzccc implements zzp {

    /* renamed from: a */
    public final zzbwa f25696a;

    /* renamed from: b */
    public final zzbzx f25697b;

    public zzccc(zzbwa zzbwaVar, zzbzx zzbzxVar) {
        this.f25696a = zzbwaVar;
        this.f25697b = zzbzxVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        this.f25696a.mo13537B1();
        this.f25697b.m14870q();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        this.f25696a.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        this.f25696a.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
        this.f25696a.mo13529u1();
        this.f25697b.m14869s();
    }
}

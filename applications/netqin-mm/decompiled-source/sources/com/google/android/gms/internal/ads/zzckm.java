package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckm.class */
public final class zzckm implements zzbuy {

    /* renamed from: a */
    public final zzbgj f26185a;

    public zzckm(zzbgj zzbgjVar) {
        this.f26185a = !((Boolean) zzwm.m11166e().m16921a(zzabb.f23845l0)).booleanValue() ? null : zzbgjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: a */
    public final void mo14003a(Context context) {
        zzbgj zzbgjVar = this.f26185a;
        if (zzbgjVar != null) {
            zzbgjVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: c */
    public final void mo13999c(Context context) {
        zzbgj zzbgjVar = this.f26185a;
        if (zzbgjVar != null) {
            zzbgjVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: d */
    public final void mo13998d(Context context) {
        zzbgj zzbgjVar = this.f26185a;
        if (zzbgjVar != null) {
            zzbgjVar.onPause();
        }
    }
}

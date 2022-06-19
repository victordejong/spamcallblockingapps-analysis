package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
/* renamed from: com.google.android.gms.internal.ads.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/s.class */
public final class BinderC12896s extends emh {

    /* renamed from: a */
    private final OnPaidEventListener f49775a;

    public BinderC12896s(OnPaidEventListener onPaidEventListener) {
        this.f49775a = onPaidEventListener;
    }

    @Override // com.google.android.gms.internal.ads.emd
    /* renamed from: a */
    public final void mo14203a(zzvv zzvvVar) {
        if (this.f49775a != null) {
            this.f49775a.onPaidEvent(AdValue.zza(zzvvVar.zzadj, zzvvVar.zzadk, zzvvVar.zzadl));
        }
    }
}

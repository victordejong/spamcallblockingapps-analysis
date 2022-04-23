package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/s.class */
public final class s extends emh {

    /* renamed from: a  reason: collision with root package name */
    private final OnPaidEventListener f28368a;

    public s(OnPaidEventListener onPaidEventListener) {
        this.f28368a = onPaidEventListener;
    }

    @Override // com.google.android.gms.internal.ads.emd
    public final void a(zzvv zzvvVar) {
        if (this.f28368a != null) {
            this.f28368a.onPaidEvent(AdValue.zza(zzvvVar.zzadj, zzvvVar.zzadk, zzvvVar.zzadl));
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaab.class */
public final class zzaab extends zzyl {

    /* renamed from: a */
    public final OnPaidEventListener f23623a;

    public zzaab(OnPaidEventListener onPaidEventListener) {
        this.f23623a = onPaidEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    /* renamed from: a */
    public final void mo11118a(zzvp zzvpVar) {
        if (this.f23623a != null) {
            this.f23623a.m18101a(AdValue.m18127a(zzvpVar.f29050b, zzvpVar.f29051c, zzvpVar.f29052d));
        }
    }
}

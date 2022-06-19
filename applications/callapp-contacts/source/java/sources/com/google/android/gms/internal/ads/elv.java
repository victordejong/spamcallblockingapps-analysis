package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elv.class */
public final class elv extends elt {

    /* renamed from: a */
    private final MuteThisAdListener f49168a;

    public elv(MuteThisAdListener muteThisAdListener) {
        this.f49168a = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.elu
    /* renamed from: a */
    public final void mo14803a() {
        this.f49168a.onAdMuted();
    }
}

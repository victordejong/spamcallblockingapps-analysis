package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elv.class */
public final class elv extends elt {

    /* renamed from: a  reason: collision with root package name */
    private final MuteThisAdListener f27945a;

    public elv(MuteThisAdListener muteThisAdListener) {
        this.f27945a = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.elu
    public final void a() {
        this.f27945a.onAdMuted();
    }
}

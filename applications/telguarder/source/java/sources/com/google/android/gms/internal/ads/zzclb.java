package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclb.class */
public final class zzclb implements zzeqb<zzclc> {
    private final zzeqo<Clock> zzfsz;

    public zzclb(zzeqo<Clock> zzeqoVar) {
        this.zzfsz = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzclc(this.zzfsz.get());
    }
}

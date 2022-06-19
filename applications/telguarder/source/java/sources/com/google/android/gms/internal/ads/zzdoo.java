package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoo.class */
public final class zzdoo implements zzeqb<Clock> {
    private final zzdol zzhmi;

    public zzdoo(zzdol zzdolVar) {
        this.zzhmi = zzdolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Clock) zzeqh.zza(DefaultClock.getInstance(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

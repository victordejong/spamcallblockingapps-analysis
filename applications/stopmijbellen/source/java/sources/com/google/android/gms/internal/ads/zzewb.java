package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewb.class */
public final /* synthetic */ class zzewb implements zzfpv {
    public static final /* synthetic */ zzewb zza = new zzewb();

    private /* synthetic */ zzewb() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    public final Object apply(Object obj) {
        AdvertisingIdClient.Info info = (AdvertisingIdClient.Info) obj;
        Objects.requireNonNull(info);
        return new zzewd(info, null);
    }
}

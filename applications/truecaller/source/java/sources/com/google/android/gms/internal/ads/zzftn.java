package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzghi;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftn.class */
public final class zzftn<KeyFormatProtoT extends zzghi, KeyProtoT extends zzghi> {
    public final zzfts<KeyFormatProtoT, KeyProtoT> zza;

    public zzftn(zzfts<KeyFormatProtoT, KeyProtoT> zzftsVar) {
        this.zza = zzftsVar;
    }

    public final KeyProtoT zza(zzgex zzgexVar) throws GeneralSecurityException, zzggm {
        KeyFormatProtoT zzc = this.zza.zzc(zzgexVar);
        this.zza.zzb(zzc);
        return this.zza.zzd(zzc);
    }
}

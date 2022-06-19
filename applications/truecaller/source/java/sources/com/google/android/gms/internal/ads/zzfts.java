package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzghi;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfts.class */
public abstract class zzfts<KeyFormatProtoT extends zzghi, KeyT> {
    private final Class<KeyFormatProtoT> zza;

    public zzfts(Class<KeyFormatProtoT> cls) {
        this.zza = cls;
    }

    public final Class<KeyFormatProtoT> zza() {
        return this.zza;
    }

    public abstract void zzb(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public abstract KeyFormatProtoT zzc(zzgex zzgexVar) throws zzggm;

    public abstract KeyT zzd(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public Map<String, zzftr<KeyFormatProtoT>> zze() throws GeneralSecurityException {
        return Collections.emptyMap();
    }
}

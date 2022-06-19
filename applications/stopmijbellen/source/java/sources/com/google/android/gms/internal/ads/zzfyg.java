package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzglv;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyg.class */
public abstract class zzfyg<KeyFormatProtoT extends zzglv, KeyT> {
    private final Class<KeyFormatProtoT> zza;

    public zzfyg(Class<KeyFormatProtoT> cls) {
        this.zza = cls;
    }

    public abstract KeyFormatProtoT zza(zzgjf zzgjfVar) throws zzgkx;

    public final Class<KeyFormatProtoT> zzb() {
        return this.zza;
    }

    public abstract KeyT zzc(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public Map<String, zzfyf<KeyFormatProtoT>> zzd() throws GeneralSecurityException {
        return Collections.emptyMap();
    }

    public abstract void zze(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
}

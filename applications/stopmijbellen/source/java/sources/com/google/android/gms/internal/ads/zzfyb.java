package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzglv;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyb.class */
public final class zzfyb<KeyFormatProtoT extends zzglv, KeyProtoT extends zzglv> {
    public final zzfyg<KeyFormatProtoT, KeyProtoT> zza;

    public zzfyb(zzfyg<KeyFormatProtoT, KeyProtoT> zzfygVar) {
        this.zza = zzfygVar;
    }

    public final KeyProtoT zza(zzgjf zzgjfVar) throws GeneralSecurityException, zzgkx {
        KeyFormatProtoT zza = this.zza.zza(zzgjfVar);
        this.zza.zze(zza);
        return this.zza.zzc(zza);
    }
}

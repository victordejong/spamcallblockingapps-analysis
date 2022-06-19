package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgic.class */
public final class zzgic extends ThreadLocal<Mac> {
    public final /* synthetic */ zzgid zza;

    public zzgic(zzgid zzgidVar) {
        this.zza = zzgidVar;
    }

    /* renamed from: zza */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzghp<zzghu, Mac> zzghpVar = zzghp.zzb;
            str = this.zza.zzb;
            Mac zza = zzghpVar.zza(str);
            key = this.zza.zzc;
            zza.init(key);
            return zza;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}

package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.zzglv;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyi.class */
public abstract class zzfyi<KeyProtoT extends zzglv> {
    private final Class<KeyProtoT> zza;
    private final Map<Class<?>, zzfyh<?, KeyProtoT>> zzb;
    private final Class<?> zzc;

    @SafeVarargs
    public zzfyi(Class<KeyProtoT> cls, zzfyh<?, KeyProtoT>... zzfyhVarArr) {
        this.zza = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            zzfyh<?, KeyProtoT> zzfyhVar = zzfyhVarArr[i];
            if (hashMap.containsKey(zzfyhVar.zza())) {
                String valueOf = String.valueOf(zzfyhVar.zza().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            hashMap.put(zzfyhVar.zza(), zzfyhVar);
        }
        this.zzc = zzfyhVarArr[0].zza();
        this.zzb = Collections.unmodifiableMap(hashMap);
    }

    public zzfyg<?, KeyProtoT> zza() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract KeyProtoT zzb(zzgjf zzgjfVar) throws zzgkx;

    public final Class<?> zzc() {
        return this.zzc;
    }

    public final Class<KeyProtoT> zzd() {
        return this.zza;
    }

    public final <P> P zze(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        zzfyh<?, KeyProtoT> zzfyhVar = this.zzb.get(cls);
        if (zzfyhVar != null) {
            return (P) zzfyhVar.zzb(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalArgumentException(C0608b.m7625j(new StringBuilder(String.valueOf(canonicalName).length() + 41), "Requested primitive class ", canonicalName, " not supported."));
    }

    public abstract String zzf();

    public final Set<Class<?>> zzg() {
        return this.zzb.keySet();
    }

    public abstract void zzh(KeyProtoT keyprotot) throws GeneralSecurityException;

    public int zzi() {
        return 1;
    }

    public abstract int zzj();
}

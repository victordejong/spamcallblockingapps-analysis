package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjx.class */
public final class zzgjx {
    public static final zzgjx zza = new zzgjx(true);
    private static volatile boolean zzb = false;
    private static volatile zzgjx zzc;
    private static volatile zzgjx zzd;
    private final Map<zzgjw, zzgkj<?, ?>> zze;

    public zzgjx() {
        this.zze = new HashMap();
    }

    public zzgjx(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzgjx zza() {
        zzgjx zzgjxVar = zzc;
        zzgjx zzgjxVar2 = zzgjxVar;
        if (zzgjxVar == null) {
            synchronized (zzgjx.class) {
                try {
                    zzgjx zzgjxVar3 = zzc;
                    zzgjxVar2 = zzgjxVar3;
                    if (zzgjxVar3 == null) {
                        zzgjxVar2 = zza;
                        zzc = zzgjxVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzgjxVar2;
    }

    public static zzgjx zzb() {
        zzgjx zzgjxVar = zzd;
        if (zzgjxVar != null) {
            return zzgjxVar;
        }
        synchronized (zzgjx.class) {
            try {
                zzgjx zzgjxVar2 = zzd;
                if (zzgjxVar2 != null) {
                    return zzgjxVar2;
                }
                zzgjx zzb2 = zzgkf.zzb(zzgjx.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzglv> zzgkj<ContainingType, ?> zzc(ContainingType containingtype, int i) {
        return (zzgkj<ContainingType, ?>) this.zze.get(new zzgjw(containingtype, i));
    }
}

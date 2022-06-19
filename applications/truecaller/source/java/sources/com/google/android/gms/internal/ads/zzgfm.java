package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfm.class */
public final class zzgfm {
    public static final zzgfm zza = new zzgfm(true);
    private static volatile boolean zzb = false;
    private static volatile zzgfm zzc;
    private static volatile zzgfm zzd;
    private final Map<zzgfl, zzgfy<?, ?>> zze;

    public zzgfm() {
        this.zze = new HashMap();
    }

    public zzgfm(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzgfm zza() {
        zzgfm zzgfmVar = zzc;
        zzgfm zzgfmVar2 = zzgfmVar;
        if (zzgfmVar == null) {
            synchronized (zzgfm.class) {
                try {
                    zzgfm zzgfmVar3 = zzc;
                    zzgfmVar2 = zzgfmVar3;
                    if (zzgfmVar3 == null) {
                        zzgfmVar2 = zza;
                        zzc = zzgfmVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzgfmVar2;
    }

    public static zzgfm zzb() {
        zzgfm zzgfmVar = zzd;
        if (zzgfmVar != null) {
            return zzgfmVar;
        }
        synchronized (zzgfm.class) {
            try {
                zzgfm zzgfmVar2 = zzd;
                if (zzgfmVar2 != null) {
                    return zzgfmVar2;
                }
                zzgfm zzb2 = zzgfu.zzb(zzgfm.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzghi> zzgfy<ContainingType, ?> zzc(ContainingType containingtype, int i) {
        return (zzgfy<ContainingType, ?>) this.zze.get(new zzgfl(containingtype, i));
    }
}

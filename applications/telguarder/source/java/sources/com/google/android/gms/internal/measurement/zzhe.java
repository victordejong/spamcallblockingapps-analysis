package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhe.class */
public final class zzhe {
    static final zzhe zza = new zzhe(true);
    private static volatile boolean zzb = false;
    private static volatile zzhe zzc;
    private static volatile zzhe zzd;
    private final Map<zzhd, zzhq<?, ?>> zze;

    zzhe() {
        this.zze = new HashMap();
    }

    zzhe(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzhe zza() {
        zzhe zzheVar = zzc;
        zzhe zzheVar2 = zzheVar;
        if (zzheVar == null) {
            synchronized (zzhe.class) {
                try {
                    zzhe zzheVar3 = zzc;
                    zzheVar2 = zzheVar3;
                    if (zzheVar3 == null) {
                        zzheVar2 = zza;
                        zzc = zzheVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzheVar2;
    }

    public static zzhe zzb() {
        zzhe zzheVar = zzd;
        if (zzheVar != null) {
            return zzheVar;
        }
        synchronized (zzhe.class) {
            try {
                zzhe zzheVar2 = zzd;
                if (zzheVar2 != null) {
                    return zzheVar2;
                }
                zzhe zzb2 = zzhm.zzb(zzhe.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzix> zzhq<ContainingType, ?> zzc(ContainingType containingtype, int i) {
        return (zzhq<ContainingType, ?>) this.zze.get(new zzhd(containingtype, i));
    }
}

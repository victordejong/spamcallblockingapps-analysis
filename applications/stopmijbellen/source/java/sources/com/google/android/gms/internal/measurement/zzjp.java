package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjp.class */
public final class zzjp {
    public static final zzjp zza = new zzjp(true);
    private static volatile boolean zzb = false;
    private static volatile zzjp zzc;
    private static volatile zzjp zzd;
    private final Map<zzjo, zzkb<?, ?>> zze;

    public zzjp() {
        this.zze = new HashMap();
    }

    public zzjp(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzjp zza() {
        zzjp zzjpVar = zzc;
        zzjp zzjpVar2 = zzjpVar;
        if (zzjpVar == null) {
            synchronized (zzjp.class) {
                try {
                    zzjp zzjpVar3 = zzc;
                    zzjpVar2 = zzjpVar3;
                    if (zzjpVar3 == null) {
                        zzjpVar2 = zza;
                        zzc = zzjpVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzjpVar2;
    }

    public static zzjp zzb() {
        zzjp zzjpVar = zzd;
        if (zzjpVar != null) {
            return zzjpVar;
        }
        synchronized (zzjp.class) {
            try {
                zzjp zzjpVar2 = zzd;
                if (zzjpVar2 != null) {
                    return zzjpVar2;
                }
                zzjp zzb2 = zzjx.zzb(zzjp.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzli> zzkb<ContainingType, ?> zzc(ContainingType containingtype, int i) {
        return (zzkb<ContainingType, ?>) this.zze.get(new zzjo(containingtype, i));
    }
}

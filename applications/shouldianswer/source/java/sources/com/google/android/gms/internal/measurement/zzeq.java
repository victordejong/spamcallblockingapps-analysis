package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeq.class */
public class zzeq {
    private static volatile boolean zza = false;
    private static boolean zzb = true;
    private static volatile zzeq zzc;
    private static volatile zzeq zzd;
    private static final zzeq zze = new zzeq(true);
    private final Map<zza, zzfd.zzf<?, ?>> zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeq$zza.class */
    public static final class zza {
        private final Object zza;
        private final int zzb;

        zza(Object obj, int i) {
            this.zza = obj;
            this.zzb = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zza == zzaVar.zza && this.zzb == zzaVar.zzb;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.zza) * 65535) + this.zzb;
        }
    }

    zzeq() {
        this.zzf = new HashMap();
    }

    private zzeq(boolean z) {
        this.zzf = Collections.emptyMap();
    }

    public static zzeq zza() {
        zzeq zzeqVar = zzc;
        zzeq zzeqVar2 = zzeqVar;
        if (zzeqVar == null) {
            synchronized (zzeq.class) {
                try {
                    zzeq zzeqVar3 = zzc;
                    zzeqVar2 = zzeqVar3;
                    if (zzeqVar3 == null) {
                        zzeqVar2 = zze;
                        zzc = zzeqVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzeqVar2;
    }

    public static zzeq zzb() {
        zzeq zzeqVar = zzd;
        if (zzeqVar != null) {
            return zzeqVar;
        }
        synchronized (zzeq.class) {
            try {
                zzeq zzeqVar2 = zzd;
                if (zzeqVar2 != null) {
                    return zzeqVar2;
                }
                zzeq zza2 = zzfb.zza(zzeq.class);
                zzd = zza2;
                return zza2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzgo> zzfd.zzf<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzfd.zzf<ContainingType, ?>) this.zzf.get(new zza(containingtype, i));
    }
}

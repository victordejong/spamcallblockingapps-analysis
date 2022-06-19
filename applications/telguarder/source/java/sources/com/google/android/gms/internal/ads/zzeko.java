package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeko.class */
public class zzeko {
    private static volatile boolean zzing = false;
    private static boolean zzinh = true;
    private static volatile zzeko zzini;
    private static volatile zzeko zzinj;
    private static final zzeko zzink = new zzeko(true);
    private final Map<zza, zzelb.zzf<?, ?>> zzinl;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeko$zza.class */
    public static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i) {
            this.object = obj;
            this.number = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.object == zzaVar.object && this.number == zzaVar.number;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }
    }

    zzeko() {
        this.zzinl = new HashMap();
    }

    private zzeko(boolean z) {
        this.zzinl = Collections.emptyMap();
    }

    public static zzeko zzbhw() {
        zzeko zzekoVar = zzini;
        zzeko zzekoVar2 = zzekoVar;
        if (zzekoVar == null) {
            synchronized (zzeko.class) {
                try {
                    zzeko zzekoVar3 = zzini;
                    zzekoVar2 = zzekoVar3;
                    if (zzekoVar3 == null) {
                        zzekoVar2 = zzink;
                        zzini = zzekoVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzekoVar2;
    }

    public static zzeko zzbhx() {
        zzeko zzekoVar = zzinj;
        if (zzekoVar != null) {
            return zzekoVar;
        }
        synchronized (zzeko.class) {
            try {
                zzeko zzekoVar2 = zzinj;
                if (zzekoVar2 != null) {
                    return zzekoVar2;
                }
                zzeko zzc = zzekz.zzc(zzeko.class);
                zzinj = zzc;
                return zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends zzemo> zzelb.zzf<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzelb.zzf<ContainingType, ?>) this.zzinl.get(new zza(containingtype, i));
    }
}

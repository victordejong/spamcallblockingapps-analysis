package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzgs;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzgd.class */
public class zzgd {
    private static volatile boolean zzsv = false;
    private static boolean zzsw = true;
    private static volatile zzgd zzsx;
    private static volatile zzgd zzsy;
    private static final zzgd zzsz = new zzgd(true);
    private final Map<zza, zzgs.zzg<?, ?>> zzta;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzgd$zza.class */
    public static final class zza {
        private final int number;
        private final Object object;

        public zza(Object obj, int i) {
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

    public zzgd() {
        this.zzta = new HashMap();
    }

    private zzgd(boolean z) {
        this.zzta = Collections.emptyMap();
    }

    public static zzgd zzfk() {
        return new zzgd();
    }

    public static zzgd zzfl() {
        zzgd zzgdVar = zzsx;
        zzgd zzgdVar2 = zzgdVar;
        if (zzgdVar == null) {
            synchronized (zzgd.class) {
                try {
                    zzgd zzgdVar3 = zzsx;
                    zzgdVar2 = zzgdVar3;
                    if (zzgdVar3 == null) {
                        zzgdVar2 = zzsz;
                        zzsx = zzgdVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzgdVar2;
    }

    public static zzgd zzfm() {
        zzgd zzgdVar = zzsy;
        zzgd zzgdVar2 = zzgdVar;
        if (zzgdVar == null) {
            synchronized (zzgd.class) {
                try {
                    zzgd zzgdVar3 = zzsy;
                    zzgdVar2 = zzgdVar3;
                    if (zzgdVar3 == null) {
                        zzgdVar2 = zzgr.zzc(zzgd.class);
                        zzsy = zzgdVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzgdVar2;
    }

    public final <ContainingType extends zzic> zzgs.zzg<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzgs.zzg<ContainingType, ?>) this.zzta.get(new zza(containingtype, i));
    }

    public final void zza(zzgs.zzg<?, ?> zzgVar) {
        this.zzta.put(new zza(zzgVar.zzwz, zzgVar.zzxb.number), zzgVar);
    }
}

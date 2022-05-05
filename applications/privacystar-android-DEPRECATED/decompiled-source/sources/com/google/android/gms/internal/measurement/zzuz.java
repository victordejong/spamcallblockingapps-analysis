package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuz.class */
public class zzuz {
    private static volatile boolean zzbvj = false;
    private static volatile zzuz zzbvl;
    private final Map<zza, zzvm.zzd<?, ?>> zzbvn;
    private static final Class<?> zzbvk = zzvn();
    static final zzuz zzbvm = new zzuz(true);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuz$zza.class */
    static final class zza {
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

    zzuz() {
        this.zzbvn = new HashMap();
    }

    private zzuz(boolean z) {
        this.zzbvn = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzuz zzvm() {
        return zzvk.zzd(zzuz.class);
    }

    private static Class<?> zzvn() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzuz zzvo() {
        return zzuy.zzvl();
    }

    public static zzuz zzvp() {
        zzuz zzuzVar = zzbvl;
        zzuz zzuzVar2 = zzuzVar;
        if (zzuzVar == null) {
            synchronized (zzuz.class) {
                try {
                    zzuz zzuzVar3 = zzbvl;
                    zzuzVar2 = zzuzVar3;
                    if (zzuzVar3 == null) {
                        zzuzVar2 = zzuy.zzvm();
                        zzbvl = zzuzVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzuzVar2;
    }

    public final <ContainingType extends zzwt> zzvm.zzd<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzvm.zzd<ContainingType, ?>) this.zzbvn.get(new zza(containingtype, i));
    }
}

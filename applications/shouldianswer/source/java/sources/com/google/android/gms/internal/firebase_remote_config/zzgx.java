package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgx.class */
public class zzgx {
    private static volatile boolean zzqa = false;
    private static volatile zzgx zzqc;
    private final Map<zza, zzhi.zzc<?, ?>> zzqe;
    private static final Class<?> zzqb = zzgg();
    static final zzgx zzqd = new zzgx(true);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgx$zza.class */
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

    zzgx() {
        this.zzqe = new HashMap();
    }

    private zzgx(boolean z) {
        this.zzqe = Collections.emptyMap();
    }

    private static Class<?> zzgg() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzgx zzgh() {
        zzgx zzgxVar = zzqc;
        zzgx zzgxVar2 = zzgxVar;
        if (zzgxVar == null) {
            synchronized (zzgx.class) {
                try {
                    zzgx zzgxVar3 = zzqc;
                    zzgxVar2 = zzgxVar3;
                    if (zzgxVar3 == null) {
                        zzgxVar2 = zzgv.zzgf();
                        zzqc = zzgxVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzgxVar2;
    }

    public final <ContainingType extends zziq> zzhi.zzc<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzhi.zzc<ContainingType, ?>) this.zzqe.get(new zza(containingtype, i));
    }
}

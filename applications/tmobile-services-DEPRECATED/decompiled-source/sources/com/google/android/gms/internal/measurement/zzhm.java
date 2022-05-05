package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhz;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http2.C2445Settings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhm.class */
public class zzhm {

    /* renamed from: b */
    private static volatile zzhm f8497b;

    /* renamed from: c */
    private static volatile zzhm f8498c;

    /* renamed from: d */
    private static final zzhm f8499d = new zzhm(true);

    /* renamed from: a */
    private final Map<zza, zzhz.zzd<?, ?>> f8500a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhm$zza.class */
    private static final class zza {

        /* renamed from: a */
        private final Object f8501a;

        /* renamed from: b */
        private final int f8502b;

        zza(Object obj, int i) {
            this.f8501a = obj;
            this.f8502b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.f8501a == zzaVar.f8501a && this.f8502b == zzaVar.f8502b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f8501a) * C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f8502b;
        }
    }

    zzhm() {
        this.f8500a = new HashMap();
    }

    private zzhm(boolean z) {
        this.f8500a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static zzhm m12475a() {
        zzhm zzhmVar = f8497b;
        zzhm zzhmVar2 = zzhmVar;
        if (zzhmVar == null) {
            synchronized (zzhm.class) {
                try {
                    zzhm zzhmVar3 = f8497b;
                    zzhmVar2 = zzhmVar3;
                    if (zzhmVar3 == null) {
                        zzhmVar2 = f8499d;
                        f8497b = zzhmVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzhmVar2;
    }

    /* renamed from: c */
    public static zzhm m12473c() {
        zzhm zzhmVar = f8498c;
        if (zzhmVar != null) {
            return zzhmVar;
        }
        synchronized (zzhm.class) {
            try {
                zzhm zzhmVar2 = f8498c;
                if (zzhmVar2 != null) {
                    return zzhmVar2;
                }
                zzhm b = zzhy.m12435b(zzhm.class);
                f8498c = b;
                return b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final <ContainingType extends zzjh> zzhz.zzd<ContainingType, ?> m12474b(ContainingType containingtype, int i) {
        return (zzhz.zzd<ContainingType, ?>) this.f8500a.get(new zza(containingtype, i));
    }
}

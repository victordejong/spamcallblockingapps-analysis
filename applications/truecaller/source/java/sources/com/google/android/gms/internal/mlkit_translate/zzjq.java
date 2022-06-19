package com.google.android.gms.internal.mlkit_translate;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjq.class */
public class zzjq {
    private static volatile boolean zza = false;
    private static boolean zzb = true;
    private static volatile zzjq zzc;
    private static final zzjq zzd = new zzjq(true);
    private final Map<Object, Object> zze;

    public zzjq() {
        this.zze = new HashMap();
    }

    private zzjq(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzjq zza() {
        zzjq zzjqVar = zzc;
        zzjq zzjqVar2 = zzjqVar;
        if (zzjqVar == null) {
            synchronized (zzjq.class) {
                try {
                    zzjq zzjqVar3 = zzc;
                    zzjqVar2 = zzjqVar3;
                    if (zzjqVar3 == null) {
                        zzjqVar2 = zzd;
                        zzc = zzjqVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzjqVar2;
    }
}

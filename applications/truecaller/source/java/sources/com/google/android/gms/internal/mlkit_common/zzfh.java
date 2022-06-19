package com.google.android.gms.internal.mlkit_common;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfh.class */
public class zzfh {
    private static volatile boolean zza = false;
    private static boolean zzb = true;
    private static volatile zzfh zzc;
    private static final zzfh zzd = new zzfh(true);
    private final Map<Object, Object> zze;

    public zzfh() {
        this.zze = new HashMap();
    }

    private zzfh(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzfh zza() {
        zzfh zzfhVar = zzc;
        zzfh zzfhVar2 = zzfhVar;
        if (zzfhVar == null) {
            synchronized (zzfh.class) {
                try {
                    zzfh zzfhVar3 = zzc;
                    zzfhVar2 = zzfhVar3;
                    if (zzfhVar3 == null) {
                        zzfhVar2 = zzd;
                        zzc = zzfhVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzfhVar2;
    }
}

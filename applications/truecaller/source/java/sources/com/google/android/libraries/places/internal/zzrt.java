package com.google.android.libraries.places.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzrt.class */
public class zzrt {
    private static volatile boolean zza = false;
    private static boolean zzb = true;
    private static volatile zzrt zzc;
    private static final zzrt zzd = new zzrt(true);
    private final Map<Object, Object> zze;

    public zzrt() {
        this.zze = new HashMap();
    }

    private zzrt(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzrt zza() {
        zzrt zzrtVar = zzc;
        zzrt zzrtVar2 = zzrtVar;
        if (zzrtVar == null) {
            synchronized (zzrt.class) {
                try {
                    zzrt zzrtVar3 = zzc;
                    zzrtVar2 = zzrtVar3;
                    if (zzrtVar3 == null) {
                        zzrtVar2 = zzd;
                        zzc = zzrtVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzrtVar2;
    }
}

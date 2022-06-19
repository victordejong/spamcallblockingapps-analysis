package com.google.android.gms.internal.mlkit_language_id;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzef.class */
public class zzef {
    private static volatile boolean zza = false;
    private static boolean zzb = true;
    private static volatile zzef zzc;
    private static final zzef zzd = new zzef(true);
    private final Map<Object, Object> zze;

    public zzef() {
        this.zze = new HashMap();
    }

    private zzef(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzef zza() {
        zzef zzefVar = zzc;
        zzef zzefVar2 = zzefVar;
        if (zzefVar == null) {
            synchronized (zzef.class) {
                try {
                    zzef zzefVar3 = zzc;
                    zzefVar2 = zzefVar3;
                    if (zzefVar3 == null) {
                        zzefVar2 = zzd;
                        zzc = zzefVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzefVar2;
    }
}

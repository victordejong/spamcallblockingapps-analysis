package com.google.android.gms.internal.firebase_perf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdv.class */
public class zzdv {
    private static volatile boolean zzmx = false;
    private static boolean zzmy = true;
    private static volatile com.google.android.gms.internal.firebase-perf.zzdv zzmz;
    private static final com.google.android.gms.internal.firebase-perf.zzdv zzna = new zzdv(true);
    private final Map<Object, Object> zznb;

    zzdv() {
        this.zznb = new HashMap();
    }

    private zzdv(boolean z) {
        this.zznb = Collections.emptyMap();
    }

    public static com.google.android.gms.internal.firebase-perf.zzdv zzfw() {
        com.google.android.gms.internal.firebase-perf.zzdv zzdvVar = zzmz;
        com.google.android.gms.internal.firebase-perf.zzdv zzdvVar2 = zzdvVar;
        if (zzdvVar == null) {
            synchronized (com.google.android.gms.internal.firebase-perf.zzdv.class) {
                try {
                    com.google.android.gms.internal.firebase-perf.zzdv zzdvVar3 = zzmz;
                    zzdvVar2 = zzdvVar3;
                    if (zzdvVar3 == null) {
                        zzdvVar2 = zzna;
                        zzmz = zzdvVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzdvVar2;
    }
}

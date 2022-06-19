package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjj.class */
public final class zzjj {
    public static final zzjj zza = new zzjj(true);
    private static volatile boolean zzb = false;
    private static volatile zzjj zzc;
    private static volatile zzjj zzd;
    private final Map zze;

    public zzjj() {
        this.zze = new HashMap();
    }

    public zzjj(boolean z) {
        this.zze = Collections.emptyMap();
    }

    public static zzjj zza() {
        zzjj zzjjVar = zzc;
        zzjj zzjjVar2 = zzjjVar;
        if (zzjjVar == null) {
            synchronized (zzjj.class) {
                try {
                    zzjj zzjjVar3 = zzc;
                    zzjjVar2 = zzjjVar3;
                    if (zzjjVar3 == null) {
                        zzjjVar2 = zza;
                        zzc = zzjjVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzjjVar2;
    }

    public static zzjj zzb() {
        zzjj zzjjVar = zzd;
        if (zzjjVar != null) {
            return zzjjVar;
        }
        synchronized (zzjj.class) {
            try {
                zzjj zzjjVar2 = zzd;
                if (zzjjVar2 != null) {
                    return zzjjVar2;
                }
                zzjj zzb2 = zzjr.zzb(zzjj.class);
                zzd = zzb2;
                return zzb2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzjv zzc(zzlc zzlcVar, int i) {
        return (zzjv) this.zze.get(new zzji(zzlcVar, i));
    }
}

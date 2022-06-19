package com.google.android.gms.internal.ads;

import java.io.Closeable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfos.class */
public abstract class zzfos implements Closeable {
    public static zzfpe zza() {
        return new zzfpe();
    }

    public static zzfpe zzb(final int i, zzfpd zzfpdVar) {
        return new zzfpe(new zzfqs() { // from class: com.google.android.gms.internal.ads.zzfoq
            @Override // com.google.android.gms.internal.ads.zzfqs
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        }, zzfor.zza, zzfpdVar);
    }

    public static zzfpe zzc(zzfqs<Integer> zzfqsVar, zzfqs<Integer> zzfqsVar2, zzfpd zzfpdVar) {
        return new zzfpe(zzfqsVar, zzfqsVar2, zzfpdVar);
    }

    public static /* synthetic */ Integer zze() {
        return -1;
    }
}

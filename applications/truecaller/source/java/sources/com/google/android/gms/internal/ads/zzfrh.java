package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrh.class */
public final class zzfrh extends zzfre {
    private zzfrh() {
        super(null);
    }

    public /* synthetic */ zzfrh(zzfrf zzfrfVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzfre
    public final void zza(zzfri<?> zzfriVar, Set<Throwable> set, Set<Throwable> set2) {
        Set set3;
        synchronized (zzfriVar) {
            set3 = ((zzfri) zzfriVar).seenExceptions;
            if (set3 == null) {
                ((zzfri) zzfriVar).seenExceptions = set2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfre
    public final int zzb(zzfri<?> zzfriVar) {
        int i;
        int i2;
        synchronized (zzfriVar) {
            i = ((zzfri) zzfriVar).remaining;
            i2 = i - 1;
            ((zzfri) zzfriVar).remaining = i2;
        }
        return i2;
    }
}

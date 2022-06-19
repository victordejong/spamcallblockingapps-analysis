package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvu.class */
final class zzfvu extends zzfvr {
    private zzfvu() {
        super(null);
    }

    public /* synthetic */ zzfvu(zzfvt zzfvtVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvr
    public final int zza(zzfvv<?> zzfvvVar) {
        int i;
        int i2;
        synchronized (zzfvvVar) {
            i = ((zzfvv) zzfvvVar).remaining;
            i2 = i - 1;
            ((zzfvv) zzfvvVar).remaining = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfvr
    public final void zzb(zzfvv<?> zzfvvVar, @CheckForNull Set<Throwable> set, Set<Throwable> set2) {
        Set set3;
        synchronized (zzfvvVar) {
            set3 = ((zzfvv) zzfvvVar).seenExceptions;
            if (set3 == null) {
                ((zzfvv) zzfvvVar).seenExceptions = set2;
            }
        }
    }
}

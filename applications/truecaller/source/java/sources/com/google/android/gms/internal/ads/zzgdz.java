package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdz.class */
public final class zzgdz {
    private final ConcurrentHashMap<zzgdy, List<Throwable>> zza = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzb = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.zzb;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.zza.remove(poll);
            referenceQueue = this.zzb;
        }
        List<Throwable> list = this.zza.get(new zzgdy(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.zza.putIfAbsent(new zzgdy(th, this.zzb), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

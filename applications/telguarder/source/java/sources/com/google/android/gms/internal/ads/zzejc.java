package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejc.class */
final class zzejc {
    private final ConcurrentHashMap<zzejb, List<Throwable>> zzilg = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzilh = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzilh.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.zzilg.remove(reference);
            poll = this.zzilh.poll();
        }
        List<Throwable> list = this.zzilg.get(new zzejb(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.zzilg.putIfAbsent(new zzejb(th, this.zzilh), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

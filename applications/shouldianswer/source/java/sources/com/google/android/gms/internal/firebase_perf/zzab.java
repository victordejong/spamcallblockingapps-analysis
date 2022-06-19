package com.google.android.gms.internal.firebase_perf;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzab.class */
final class zzab {
    private final ConcurrentHashMap<zzae, List<Throwable>> zzv = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzw = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzw.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.zzv.remove(reference);
            poll = this.zzw.poll();
        }
        List<Throwable> list = this.zzv.get(new zzae(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.zzv.putIfAbsent(new zzae(th, this.zzw), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

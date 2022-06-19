package com.google.android.gms.internal.firebase_remote_config;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzec.class */
final class zzec {
    private final ConcurrentHashMap<zzef, List<Throwable>> zziu = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zziv = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zziv.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.zziu.remove(reference);
            poll = this.zziv.poll();
        }
        List<Throwable> list = this.zziu.get(new zzef(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.zziu.putIfAbsent(new zzef(th, this.zziv), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

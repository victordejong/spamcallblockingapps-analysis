package com.google.android.gms.internal.gcm;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzs.class */
final class zzs {
    private final ConcurrentHashMap<zzt, List<Throwable>> zzdt = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzdu = new ReferenceQueue<>();

    public final List<Throwable> zzd(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzdu.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.zzdt.remove(reference);
            poll = this.zzdu.poll();
        }
        List<Throwable> list = this.zzdt.get(new zzt(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.zzdt.putIfAbsent(new zzt(th, this.zzdu), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

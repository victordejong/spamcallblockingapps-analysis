package com.google.android.gms.internal.vision;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzdu.class */
public final class zzdu {
    private final ConcurrentHashMap<zzdx, List<Throwable>> zzme = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzmf = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzmf.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.zzme.remove(reference);
            poll = this.zzmf.poll();
        }
        List<Throwable> list = this.zzme.get(new zzdx(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.zzme.putIfAbsent(new zzdx(th, this.zzmf), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

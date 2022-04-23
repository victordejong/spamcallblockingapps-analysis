package com.google.android.gms.internal.gcm;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzs.class */
final class zzs {

    /* renamed from: a */
    private final ConcurrentHashMap<zzt, List<Throwable>> f7865a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f7866b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m14059a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f7866b.poll();
        while (poll != null) {
            this.f7865a.remove(poll);
            poll = this.f7866b.poll();
        }
        List<Throwable> list = this.f7865a.get(new zzt(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f7865a.putIfAbsent(new zzt(th, this.f7866b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

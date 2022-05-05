package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzm.class */
final class zzm {

    /* renamed from: a */
    private final ConcurrentHashMap<zzp, List<Throwable>> f7853a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f7854b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m14073a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f7854b.poll();
        while (poll != null) {
            this.f7853a.remove(poll);
            poll = this.f7854b.poll();
        }
        List<Throwable> list = this.f7853a.get(new zzp(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f7853a.putIfAbsent(new zzp(th, this.f7854b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/er.class */
final class er {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<eq, List<Throwable>> f28997a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b  reason: collision with root package name */
    private final ReferenceQueue<Throwable> f28998b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th) {
        ReferenceQueue<Throwable> referenceQueue = this.f28998b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f28997a.remove(poll);
            referenceQueue = this.f28998b;
        }
        List<Throwable> list = this.f28997a.get(new eq(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f28997a.putIfAbsent(new eq(th, this.f28998b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

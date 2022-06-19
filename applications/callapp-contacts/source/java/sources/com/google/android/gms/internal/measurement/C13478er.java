package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.er */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/er.class */
final class C13478er {

    /* renamed from: a */
    private final ConcurrentHashMap<C13477eq, List<Throwable>> f50696a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f50697b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m12891a(Throwable th) {
        ReferenceQueue<Throwable> referenceQueue = this.f50697b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f50696a.remove(poll);
            referenceQueue = this.f50697b;
        }
        List<Throwable> list = this.f50696a.get(new C13477eq(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f50696a.putIfAbsent(new C13477eq(th, this.f50697b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

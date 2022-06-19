package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.h4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h4.class */
final class C7391h4 {

    /* renamed from: a */
    private final ConcurrentHashMap<C7377g4, List<Throwable>> f34500a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f34501b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m7373a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f34501b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f34500a.remove(poll);
            referenceQueue = this.f34501b;
        }
        List<Throwable> list = this.f34500a.get(new C7377g4(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f34500a.putIfAbsent(new C7377g4(th, this.f34501b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

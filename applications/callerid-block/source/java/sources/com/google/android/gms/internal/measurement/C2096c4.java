package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.c4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/c4.class */
final class C2096c4 {

    /* renamed from: a */
    private final ConcurrentHashMap<C2091b4, List<Throwable>> f9735a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f9736b = new ReferenceQueue<>();

    C2096c4() {
    }

    /* renamed from: a */
    public final List<Throwable> m4418a(Throwable th, boolean z) {
        while (true) {
            Reference<? extends Throwable> poll = this.f9736b.poll();
            if (poll == null) {
                break;
            }
            this.f9735a.remove(poll);
        }
        List<Throwable> list = this.f9735a.get(new C2091b4(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f9735a.putIfAbsent(new C2091b4(th, this.f9736b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

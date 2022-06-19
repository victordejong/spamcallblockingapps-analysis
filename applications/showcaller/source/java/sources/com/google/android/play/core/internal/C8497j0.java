package com.google.android.play.core.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.play.core.internal.j0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/j0.class */
final class C8497j0 {

    /* renamed from: a */
    private final ConcurrentHashMap<C8495i0, List<Throwable>> f38041a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f38042b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m3508a(Throwable th) {
        while (true) {
            Reference<? extends Throwable> poll = this.f38042b.poll();
            if (poll == null) {
                break;
            }
            this.f38041a.remove(poll);
        }
        List<Throwable> list = this.f38041a.get(new C8495i0(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f38041a.putIfAbsent(new C8495i0(th, this.f38042b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

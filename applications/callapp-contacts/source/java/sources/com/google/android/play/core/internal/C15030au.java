package com.google.android.play.core.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.play.core.internal.au */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/au.class */
final class C15030au {

    /* renamed from: a */
    private final ConcurrentHashMap<C15029at, List<Throwable>> f54756a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f54757b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m9579a(Throwable th) {
        while (true) {
            Reference<? extends Throwable> poll = this.f54757b.poll();
            if (poll == null) {
                break;
            }
            this.f54756a.remove(poll);
        }
        List<Throwable> list = this.f54756a.get(new C15029at(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f54756a.putIfAbsent(new C15029at(th, this.f54757b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

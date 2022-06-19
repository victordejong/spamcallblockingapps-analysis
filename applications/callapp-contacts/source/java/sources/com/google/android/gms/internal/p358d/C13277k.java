package com.google.android.gms.internal.p358d;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.d.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/k.class */
final class C13277k {

    /* renamed from: a */
    private final ConcurrentHashMap<C13276j, List<Throwable>> f50532a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f50533b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m13505a(Throwable th) {
        ReferenceQueue<Throwable> referenceQueue = this.f50533b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f50532a.remove(poll);
            referenceQueue = this.f50533b;
        }
        List<Throwable> list = this.f50532a.get(new C13276j(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f50532a.putIfAbsent(new C13276j(th, this.f50533b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

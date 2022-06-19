package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lc3.class */
final class lc3 {

    /* renamed from: a */
    private final ConcurrentHashMap<kc3, List<Throwable>> f26039a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f26040b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m13584a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f26040b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f26039a.remove(poll);
            referenceQueue = this.f26040b;
        }
        List<Throwable> list = this.f26039a.get(new kc3(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f26039a.putIfAbsent(new kc3(th, this.f26040b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

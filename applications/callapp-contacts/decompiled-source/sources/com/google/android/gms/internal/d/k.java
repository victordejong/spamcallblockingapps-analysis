package com.google.android.gms.internal.d;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/k.class */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<j, List<Throwable>> f28872a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b  reason: collision with root package name */
    private final ReferenceQueue<Throwable> f28873b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th) {
        ReferenceQueue<Throwable> referenceQueue = this.f28873b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f28872a.remove(poll);
            referenceQueue = this.f28873b;
        }
        List<Throwable> list = this.f28872a.get(new j(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f28872a.putIfAbsent(new j(th, this.f28873b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

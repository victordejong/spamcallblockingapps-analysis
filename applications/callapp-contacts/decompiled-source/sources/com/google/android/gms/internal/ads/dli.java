package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dli.class */
final class dli {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<dlh, List<Throwable>> f26921a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b  reason: collision with root package name */
    private final ReferenceQueue<Throwable> f26922b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f26922b.poll();
        while (poll != null) {
            this.f26921a.remove(poll);
            poll = this.f26922b.poll();
        }
        List<Throwable> list = this.f26921a.get(new dlh(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f26921a.putIfAbsent(new dlh(th, this.f26922b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

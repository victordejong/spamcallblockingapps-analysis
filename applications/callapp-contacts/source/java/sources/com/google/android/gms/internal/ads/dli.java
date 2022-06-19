package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dli.class */
final class dli {

    /* renamed from: a */
    private final ConcurrentHashMap<dlh, List<Throwable>> f47179a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f47180b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m16509a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f47180b.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.f47179a.remove(reference);
            poll = this.f47180b.poll();
        }
        List<Throwable> list = this.f47179a.get(new dlh(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f47179a.putIfAbsent(new dlh(th, this.f47180b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

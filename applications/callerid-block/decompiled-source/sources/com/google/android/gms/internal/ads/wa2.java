package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wa2.class */
final class wa2 {

    /* renamed from: a */
    private final ConcurrentHashMap<va2, List<Throwable>> f8986a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f8987b = new ReferenceQueue<>();

    wa2() {
    }

    /* renamed from: a */
    public final List<Throwable> m5101a(Throwable th, boolean z) {
        while (true) {
            Reference<? extends Throwable> poll = this.f8987b.poll();
            if (poll == null) {
                break;
            }
            this.f8986a.remove(poll);
        }
        List<Throwable> list = this.f8986a.get(new va2(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f8986a.putIfAbsent(new va2(th, this.f8987b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

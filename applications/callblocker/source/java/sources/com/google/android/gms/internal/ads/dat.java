package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dat.class */
final class dat {

    /* renamed from: a */
    private final ConcurrentHashMap<daw, List<Throwable>> f13911a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f13912b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m10253a(Throwable th, boolean z) {
        Vector vector;
        Reference<? extends Throwable> poll = this.f13912b.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.f13911a.remove(reference);
            poll = this.f13912b.poll();
        }
        List<Throwable> list = this.f13911a.get(new daw(th, null));
        if (!z) {
            vector = list;
        } else {
            vector = list;
            if (list == null) {
                Vector vector2 = new Vector(2);
                List<Throwable> putIfAbsent = this.f13911a.putIfAbsent(new daw(th, this.f13912b), vector2);
                vector = putIfAbsent;
                if (putIfAbsent == null) {
                    vector = vector2;
                }
            }
        }
        return vector;
    }
}

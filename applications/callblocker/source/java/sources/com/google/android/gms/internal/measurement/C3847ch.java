package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.ch */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ch.class */
final class C3847ch {

    /* renamed from: a */
    private final ConcurrentHashMap<C3846cg, List<Throwable>> f17927a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f17928b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m5842a(Throwable th, boolean z) {
        Vector vector;
        Reference<? extends Throwable> poll = this.f17928b.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.f17927a.remove(reference);
            poll = this.f17928b.poll();
        }
        List<Throwable> list = this.f17927a.get(new C3846cg(th, null));
        if (list != null) {
            vector = list;
        } else {
            Vector vector2 = new Vector(2);
            List<Throwable> putIfAbsent = this.f17927a.putIfAbsent(new C3846cg(th, this.f17928b), vector2);
            vector = putIfAbsent;
            if (putIfAbsent == null) {
                vector = vector2;
            }
        }
        return vector;
    }
}

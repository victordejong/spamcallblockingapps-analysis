package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.consent_sdk.bm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bm.class */
final class C13211bm {

    /* renamed from: a */
    private final ConcurrentHashMap<C13210bl, List<Throwable>> f50394a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f50395b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m13557a(Throwable th) {
        Reference<? extends Throwable> poll = this.f50395b.poll();
        while (true) {
            Reference<? extends Throwable> reference = poll;
            if (reference == null) {
                break;
            }
            this.f50394a.remove(reference);
            poll = this.f50395b.poll();
        }
        List<Throwable> list = this.f50394a.get(new C13210bl(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f50394a.putIfAbsent(new C13210bl(th, this.f50395b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

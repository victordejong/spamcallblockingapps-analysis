package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bm.class */
final class bm {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<bl, List<Throwable>> f28763a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b  reason: collision with root package name */
    private final ReferenceQueue<Throwable> f28764b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th) {
        Reference<? extends Throwable> poll = this.f28764b.poll();
        while (poll != null) {
            this.f28763a.remove(poll);
            poll = this.f28764b.poll();
        }
        List<Throwable> list = this.f28763a.get(new bl(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f28763a.putIfAbsent(new bl(th, this.f28764b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

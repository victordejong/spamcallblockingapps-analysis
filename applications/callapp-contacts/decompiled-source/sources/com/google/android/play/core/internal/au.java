package com.google.android.play.core.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/au.class */
final class au {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<at, List<Throwable>> f31354a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b  reason: collision with root package name */
    private final ReferenceQueue<Throwable> f31355b = new ReferenceQueue<>();

    public final List<Throwable> a(Throwable th) {
        while (true) {
            Reference<? extends Throwable> poll = this.f31355b.poll();
            if (poll == null) {
                break;
            }
            this.f31354a.remove(poll);
        }
        List<Throwable> list = this.f31354a.get(new at(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f31354a.putIfAbsent(new at(th, this.f31355b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

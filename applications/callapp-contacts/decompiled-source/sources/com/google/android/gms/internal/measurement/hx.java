package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hx.class */
public final class hx {

    /* renamed from: a  reason: collision with root package name */
    private static final hx f29100a = new hx();

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, ia<?>> f29102c = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final ib f29101b = new hh();

    private hx() {
    }

    public static hx a() {
        return f29100a;
    }

    public final <T> ia<T> a(Class<T> cls) {
        gt.a(cls, "messageType");
        ia<?> iaVar = this.f29102c.get(cls);
        ia<T> iaVar2 = (ia<T>) iaVar;
        if (iaVar == null) {
            iaVar2 = this.f29101b.a(cls);
            gt.a(cls, "messageType");
            gt.a(iaVar2, "schema");
            ia<T> iaVar3 = (ia<T>) this.f29102c.putIfAbsent(cls, iaVar2);
            if (iaVar3 != null) {
                return iaVar3;
            }
        }
        return iaVar2;
    }
}

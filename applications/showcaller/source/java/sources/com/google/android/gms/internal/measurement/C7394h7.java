package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.measurement.h7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h7.class */
public final class C7394h7 {

    /* renamed from: a */
    private static final C7394h7 f34507a = new C7394h7();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, AbstractC7436k7<?>> f34509c = new ConcurrentHashMap();

    /* renamed from: b */
    private final AbstractC7450l7 f34508b = new C7532r6();

    private C7394h7() {
    }

    /* renamed from: a */
    public static C7394h7 m7368a() {
        return f34507a;
    }

    /* renamed from: b */
    public final <T> AbstractC7436k7<T> m7367b(Class<T> cls) {
        C7365f6.m7502b(cls, "messageType");
        AbstractC7436k7<?> abstractC7436k7 = this.f34509c.get(cls);
        AbstractC7436k7<?> abstractC7436k72 = abstractC7436k7;
        if (abstractC7436k7 == null) {
            abstractC7436k72 = this.f34508b.mo6962d(cls);
            C7365f6.m7502b(cls, "messageType");
            C7365f6.m7502b(abstractC7436k72, "schema");
            AbstractC7436k7<T> abstractC7436k73 = (AbstractC7436k7<T>) this.f34509c.putIfAbsent(cls, abstractC7436k72);
            if (abstractC7436k73 != null) {
                return abstractC7436k73;
            }
        }
        return (AbstractC7436k7<T>) abstractC7436k72;
    }
}

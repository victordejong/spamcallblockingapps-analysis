package com.google.android.gms.measurement.internal;

import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.a3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a3.class */
public final class C2219a3<V> {

    /* renamed from: h */
    private static final Object f9963h = new Object();

    /* renamed from: a */
    private final String f9964a;

    /* renamed from: b */
    private final AbstractC2371y2<V> f9965b;

    /* renamed from: c */
    private final V f9966c;

    /* renamed from: d */
    private final V f9967d;

    /* renamed from: e */
    private final Object f9968e = new Object();

    /* renamed from: f */
    private volatile V f9969f = null;

    /* renamed from: g */
    private volatile V f9970g = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C2219a3(String str, Object obj, Object obj2, AbstractC2371y2 abstractC2371y2, C2362x2 c2362x2) {
        this.f9964a = str;
        this.f9966c = obj;
        this.f9967d = obj2;
        this.f9965b = abstractC2371y2;
    }

    /* renamed from: a */
    public final String m4028a() {
        return this.f9964a;
    }

    /* renamed from: b */
    public final V m4027b(V v) {
        List<C2219a3> list;
        V v2;
        synchronized (this.f9968e) {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
        if (v != null) {
            return v;
        }
        if (C2380z2.f10512a == null) {
            return this.f9966c;
        }
        synchronized (f9963h) {
            if (C2287ka.m3885a()) {
                return this.f9970g == null ? this.f9966c : this.f9970g;
            }
            try {
                list = C2232c3.f10038a;
                for (C2219a3 c2219a3 : list) {
                    if (C2287ka.m3885a()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        AbstractC2371y2<V> abstractC2371y2 = c2219a3.f9965b;
                        v2 = null;
                        if (abstractC2371y2 != null) {
                            v2 = abstractC2371y2.zza();
                        }
                    } catch (IllegalStateException e) {
                        v2 = null;
                    }
                    synchronized (f9963h) {
                        c2219a3.f9970g = v2;
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC2371y2<V> abstractC2371y22 = this.f9965b;
            if (abstractC2371y22 == null) {
                return this.f9966c;
            }
            try {
                return abstractC2371y22.zza();
            } catch (IllegalStateException e3) {
                return this.f9966c;
            } catch (SecurityException e4) {
                return this.f9966c;
            }
        }
    }
}

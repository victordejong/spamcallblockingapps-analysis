package com.google.android.gms.measurement.internal;

import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.a3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a3.class */
public final class C7648a3<V> {

    /* renamed from: a */
    private static final Object f34973a = new Object();

    /* renamed from: b */
    private final String f34974b;

    /* renamed from: c */
    private final AbstractC7922y2<V> f34975c;

    /* renamed from: d */
    private final V f34976d;

    /* renamed from: e */
    private final V f34977e;

    /* renamed from: f */
    private final Object f34978f = new Object();

    /* renamed from: g */
    private volatile V f34979g = null;

    /* renamed from: h */
    private volatile V f34980h = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C7648a3(String str, Object obj, Object obj2, AbstractC7922y2 abstractC7922y2, C7911x2 c7911x2) {
        this.f34974b = str;
        this.f34976d = obj;
        this.f34977e = obj2;
        this.f34975c = abstractC7922y2;
    }

    /* renamed from: a */
    public final String m6590a() {
        return this.f34974b;
    }

    /* renamed from: b */
    public final V m6589b(V v) {
        List<C7648a3> list;
        V v2;
        synchronized (this.f34978f) {
        }
        if (v != null) {
            return v;
        }
        if (C7933z2.f35838a == null) {
            return this.f34976d;
        }
        synchronized (f34973a) {
            if (C7775ka.m6256a()) {
                return this.f34980h == null ? this.f34976d : this.f34980h;
            }
            try {
                list = C7672c3.f35062a;
                for (C7648a3 c7648a3 : list) {
                    if (C7775ka.m6256a()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        AbstractC7922y2<V> abstractC7922y2 = c7648a3.f34975c;
                        v2 = null;
                        if (abstractC7922y2 != null) {
                            v2 = abstractC7922y2.zza();
                        }
                    } catch (IllegalStateException e) {
                        v2 = null;
                    }
                    synchronized (f34973a) {
                        c7648a3.f34980h = v2;
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC7922y2<V> abstractC7922y22 = this.f34975c;
            if (abstractC7922y22 == null) {
                return this.f34976d;
            }
            try {
                return abstractC7922y22.zza();
            } catch (IllegalStateException e3) {
                return this.f34976d;
            } catch (SecurityException e4) {
                return this.f34976d;
            }
        }
    }
}

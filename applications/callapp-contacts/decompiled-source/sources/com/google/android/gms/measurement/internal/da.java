package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/da.class */
public final class da<V> {
    private static final Object f = new Object();

    /* renamed from: a  reason: collision with root package name */
    final String f29477a;

    /* renamed from: b  reason: collision with root package name */
    private final cy<V> f29478b;

    /* renamed from: c  reason: collision with root package name */
    private final V f29479c;

    /* renamed from: d  reason: collision with root package name */
    private final V f29480d;
    private final Object e = new Object();
    private volatile V g = null;
    private volatile V h = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ da(String str, Object obj, Object obj2, cy cyVar, cx cxVar) {
        this.f29477a = str;
        this.f29479c = obj;
        this.f29480d = obj2;
        this.f29478b = cyVar;
    }

    public final V a(V v) {
        V v2;
        synchronized (this.e) {
        }
        if (v != null) {
            return v;
        }
        if (cz.f29476a == null) {
            return this.f29479c;
        }
        synchronized (f) {
            if (kk.a()) {
                return this.h == null ? this.f29479c : this.h;
            }
            try {
                for (da daVar : dc.a()) {
                    if (!kk.a()) {
                        try {
                            cy<V> cyVar = daVar.f29478b;
                            v2 = null;
                            if (cyVar != null) {
                                v2 = cyVar.a();
                            }
                        } catch (IllegalStateException e) {
                            v2 = null;
                        }
                        synchronized (f) {
                            daVar.h = v2;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException e2) {
            }
            cy<V> cyVar2 = this.f29478b;
            if (cyVar2 == null) {
                return this.f29479c;
            }
            try {
                return cyVar2.a();
            } catch (IllegalStateException e3) {
                return this.f29479c;
            } catch (SecurityException e4) {
                return this.f29479c;
            }
        }
    }
}

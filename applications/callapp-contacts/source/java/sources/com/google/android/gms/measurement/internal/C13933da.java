package com.google.android.gms.measurement.internal;

import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.da */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/da.class */
public final class C13933da<V> {

    /* renamed from: f */
    private static final Object f51270f = new Object();

    /* renamed from: a */
    final String f51271a;

    /* renamed from: b */
    private final AbstractC13930cy<V> f51272b;

    /* renamed from: c */
    private final V f51273c;

    /* renamed from: d */
    private final V f51274d;

    /* renamed from: e */
    private final Object f51275e = new Object();

    /* renamed from: g */
    private volatile V f51276g = null;

    /* renamed from: h */
    private volatile V f51277h = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C13933da(String str, Object obj, Object obj2, AbstractC13930cy abstractC13930cy, C13929cx c13929cx) {
        this.f51271a = str;
        this.f51273c = obj;
        this.f51274d = obj2;
        this.f51272b = abstractC13930cy;
    }

    /* renamed from: a */
    public final V m12117a(V v) {
        List<C13933da> list;
        V v2;
        synchronized (this.f51275e) {
        }
        if (v != null) {
            return v;
        }
        if (C13931cz.f51269a == null) {
            return this.f51273c;
        }
        synchronized (f51270f) {
            if (C14133kk.m11527a()) {
                return this.f51277h == null ? this.f51273c : this.f51277h;
            }
            try {
                list = C13935dc.f51311aG;
                for (C13933da c13933da : list) {
                    if (C14133kk.m11527a()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        AbstractC13930cy<V> abstractC13930cy = c13933da.f51272b;
                        v2 = null;
                        if (abstractC13930cy != null) {
                            v2 = abstractC13930cy.mo11512a();
                        }
                    } catch (IllegalStateException e) {
                        v2 = null;
                    }
                    synchronized (f51270f) {
                        c13933da.f51277h = v2;
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC13930cy<V> abstractC13930cy2 = this.f51272b;
            if (abstractC13930cy2 == null) {
                return this.f51273c;
            }
            try {
                return abstractC13930cy2.mo11512a();
            } catch (IllegalStateException e3) {
                return this.f51273c;
            } catch (SecurityException e4) {
                return this.f51273c;
            }
        }
    }
}

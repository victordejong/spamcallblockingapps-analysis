package com.google.android.gms.measurement.internal;

import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.dr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dr.class */
public final class C4256dr<V> {

    /* renamed from: f */
    private static final Object f18685f = new Object();

    /* renamed from: a */
    private final String f18686a;

    /* renamed from: b */
    private final AbstractC4254dp<V> f18687b;

    /* renamed from: c */
    private final V f18688c;

    /* renamed from: d */
    private final V f18689d;

    /* renamed from: e */
    private final Object f18690e;

    /* renamed from: g */
    private volatile V f18691g;

    /* renamed from: h */
    private volatile V f18692h;

    /* JADX INFO: Access modifiers changed from: private */
    public C4256dr(String str, V v, V v2, AbstractC4254dp<V> abstractC4254dp) {
        this.f18690e = new Object();
        this.f18691g = null;
        this.f18692h = null;
        this.f18686a = str;
        this.f18688c = v;
        this.f18689d = v2;
        this.f18687b = abstractC4254dp;
    }

    /* renamed from: a */
    public final V m4707a(V v) {
        List<C4256dr> list;
        V v2;
        synchronized (this.f18690e) {
            V v3 = this.f18691g;
        }
        if (v == null) {
            if (C4253do.f18684a == null) {
                v = this.f18688c;
            } else {
                C4439kk c4439kk = C4253do.f18684a;
                synchronized (f18685f) {
                    if (C4439kk.m4052a()) {
                        v = this.f18692h == null ? this.f18688c : this.f18692h;
                    } else {
                        try {
                            list = C4452t.f19435aR;
                            for (C4256dr c4256dr : list) {
                                if (C4439kk.m4052a()) {
                                    throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                                }
                                try {
                                    v2 = c4256dr.f18687b != null ? c4256dr.f18687b.mo3918a() : null;
                                } catch (IllegalStateException e) {
                                    v2 = null;
                                }
                                synchronized (f18685f) {
                                    c4256dr.f18692h = v2;
                                }
                            }
                        } catch (SecurityException e2) {
                        }
                        if (this.f18687b == null) {
                            C4439kk c4439kk2 = C4253do.f18684a;
                            v = this.f18688c;
                        } else {
                            try {
                                v = this.f18687b.mo3918a();
                            } catch (IllegalStateException e3) {
                                C4439kk c4439kk3 = C4253do.f18684a;
                                v = this.f18688c;
                            } catch (SecurityException e4) {
                                C4439kk c4439kk4 = C4253do.f18684a;
                                v = this.f18688c;
                            }
                        }
                    }
                }
            }
        }
        return v;
    }

    /* renamed from: a */
    public final String m4708a() {
        return this.f18686a;
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.AbstractC5685e0;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c60.class */
public final class c60 extends cj0<x40> {

    /* renamed from: d */
    private final AbstractC5685e0<x40> f21112d;

    /* renamed from: c */
    private final Object f21111c = new Object();

    /* renamed from: e */
    private boolean f21113e = false;

    /* renamed from: f */
    private int f21114f = 0;

    public c60(AbstractC5685e0<x40> abstractC5685e0) {
        this.f21112d = abstractC5685e0;
    }

    /* renamed from: f */
    public final x50 m16116f() {
        x50 x50Var = new x50(this);
        synchronized (this.f21111c) {
            m16034b(new y50(this, x50Var), new z50(this, x50Var));
            C6155o.m17015m(this.f21114f >= 0);
            this.f21114f++;
        }
        return x50Var;
    }

    /* renamed from: g */
    public final void m16115g() {
        synchronized (this.f21111c) {
            C6155o.m17015m(this.f21114f > 0);
            C5722o1.m17990k("Releasing 1 reference for JS Engine");
            this.f21114f--;
            m16113i();
        }
    }

    /* renamed from: h */
    public final void m16114h() {
        synchronized (this.f21111c) {
            C6155o.m17015m(this.f21114f >= 0);
            C5722o1.m17990k("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f21113e = true;
            m16113i();
        }
    }

    /* renamed from: i */
    protected final void m16113i() {
        synchronized (this.f21111c) {
            C6155o.m17015m(this.f21114f >= 0);
            if (!this.f21113e || this.f21114f != 0) {
                C5722o1.m17990k("There are still references to the engine. Not destroying.");
            } else {
                C5722o1.m17990k("No reference is left (including root). Cleaning up engine.");
                m16034b(new b60(this), new yi0());
            }
        }
    }
}

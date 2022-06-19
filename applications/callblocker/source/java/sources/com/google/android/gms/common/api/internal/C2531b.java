package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.C2471a.AbstractC2475d;
import com.google.android.gms.common.internal.C2657q;
/* renamed from: com.google.android.gms.common.api.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b.class */
public final class C2531b<O extends C2471a.AbstractC2475d> {

    /* renamed from: a */
    private final boolean f7132a = false;

    /* renamed from: b */
    private final int f7133b;

    /* renamed from: c */
    private final C2471a<O> f7134c;

    /* renamed from: d */
    private final O f7135d;

    private C2531b(C2471a<O> c2471a, O o) {
        this.f7134c = c2471a;
        this.f7135d = o;
        this.f7133b = C2657q.m13991a(this.f7134c, this.f7135d);
    }

    /* renamed from: a */
    public static <O extends C2471a.AbstractC2475d> C2531b<O> m14356a(C2471a<O> c2471a, O o) {
        return new C2531b<>(c2471a, o);
    }

    /* renamed from: a */
    public final String m14357a() {
        return this.f7134c.m14455c();
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof C2531b)) {
                z = false;
            } else {
                C2531b c2531b = (C2531b) obj;
                if (this.f7132a || c2531b.f7132a || !C2657q.m13992a(this.f7134c, c2531b.f7134c) || !C2657q.m13992a(this.f7135d, c2531b.f7135d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return this.f7133b;
    }
}

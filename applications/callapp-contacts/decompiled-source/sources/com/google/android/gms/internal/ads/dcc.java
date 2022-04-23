package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcc.class */
public final class dcc<V> extends dag.h<V> {
    private dcc() {
    }

    public static <V> dcc<V> h() {
        return new dcc<>();
    }

    @Override // com.google.android.gms.internal.ads.dag
    public final boolean a(Throwable th) {
        return super.a(th);
    }

    @Override // com.google.android.gms.internal.ads.dag
    public final boolean b(V v) {
        return super.b((dcc<V>) v);
    }
}

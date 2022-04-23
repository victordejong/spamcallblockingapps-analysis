package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/k.class */
public final class k {
    private k() {
    }

    public static <R extends m> i<R> a(R r, g gVar) {
        o.a(r, "Result must not be null");
        v vVar = new v(gVar);
        vVar.a((v) r);
        return new m(vVar);
    }
}

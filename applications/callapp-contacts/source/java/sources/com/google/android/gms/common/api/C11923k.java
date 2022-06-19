package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.C11905m;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/k.class */
public final class C11923k {
    private C11923k() {
    }

    /* renamed from: a */
    public static <R extends AbstractC11925m> AbstractC11830i<R> m19290a(R r, AbstractC11826g abstractC11826g) {
        C12045o.m19161a(r, "Result must not be null");
        C11934v c11934v = new C11934v(abstractC11826g);
        c11934v.m19438a((C11934v) r);
        return new C11905m(c11934v);
    }
}

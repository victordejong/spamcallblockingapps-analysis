package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.AbstractC6003f;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n.class */
public class C6151n {

    /* renamed from: a */
    private static final AbstractC6145l0 f19579a = new C6136i0();

    /* renamed from: com.google.android.gms.common.internal.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/n$a.class */
    public interface AbstractC6152a<R extends AbstractC6007i, T> {
        @RecentlyNullable
        /* renamed from: a */
        T mo17028a(@RecentlyNonNull R r);
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <R extends AbstractC6007i, T> AbstractC7966g<T> m17030a(@RecentlyNonNull AbstractC6003f<R> abstractC6003f, @RecentlyNonNull AbstractC6152a<R, T> abstractC6152a) {
        AbstractC6145l0 abstractC6145l0 = f19579a;
        C7968h c7968h = new C7968h();
        abstractC6003f.mo17452a(new C6139j0(abstractC6003f, c7968h, abstractC6152a, abstractC6145l0));
        return c7968h.m5807a();
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static <R extends AbstractC6007i> AbstractC7966g<Void> m17029b(@RecentlyNonNull AbstractC6003f<R> abstractC6003f) {
        return m17030a(abstractC6003f, new C6142k0());
    }
}

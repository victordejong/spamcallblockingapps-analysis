package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.internal.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/n.class */
public final class C12043n {

    /* renamed from: a */
    private static final AbstractC11986al f39565a = new C11983ai();

    /* renamed from: com.google.android.gms.common.internal.n$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/n$a.class */
    public interface AbstractC12044a<R extends AbstractC11925m, T> {
        /* renamed from: a */
        T mo11403a(R r);
    }

    /* renamed from: a */
    public static <R extends AbstractC11925m> AbstractC14185h<Void> m19165a(AbstractC11921j<R> abstractC11921j) {
        return m19164a(abstractC11921j, new C11985ak());
    }

    /* renamed from: a */
    public static <R extends AbstractC11925m, T> AbstractC14185h<T> m19164a(AbstractC11921j<R> abstractC11921j, AbstractC12044a<R, T> abstractC12044a) {
        AbstractC11986al abstractC11986al = f39565a;
        C14186i c14186i = new C14186i();
        abstractC11921j.mo19292a(new C11984aj(abstractC11921j, c14186i, abstractC12044a, abstractC11986al));
        return c14186i.f52142a;
    }
}

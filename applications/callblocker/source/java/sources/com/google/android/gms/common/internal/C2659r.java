package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.android.gms.common.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/r.class */
public class C2659r {

    /* renamed from: a */
    private static final AbstractC2661b f7418a = new C2599ab();

    /* renamed from: com.google.android.gms.common.internal.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/r$a.class */
    public interface AbstractC2660a<R extends AbstractC2500h, T> {
        /* renamed from: a */
        T mo13987a(R r);
    }

    /* renamed from: com.google.android.gms.common.internal.r$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/r$b.class */
    public interface AbstractC2661b {
        /* renamed from: a */
        ApiException mo13986a(Status status);
    }

    /* renamed from: a */
    public static <R extends AbstractC2500h> AbstractC4469g<Void> m13989a(AbstractC2495e<R> abstractC2495e) {
        return m13988a(abstractC2495e, new C2601ad());
    }

    /* renamed from: a */
    public static <R extends AbstractC2500h, T> AbstractC4469g<T> m13988a(AbstractC2495e<R> abstractC2495e, AbstractC2660a<R, T> abstractC2660a) {
        AbstractC2661b abstractC2661b = f7418a;
        C4470h c4470h = new C4470h();
        abstractC2495e.mo14388a(new C2600ac(abstractC2495e, c4470h, abstractC2660a, abstractC2661b));
        return c4470h.m3889a();
    }
}

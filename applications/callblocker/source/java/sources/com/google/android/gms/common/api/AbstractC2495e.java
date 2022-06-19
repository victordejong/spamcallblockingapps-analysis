package com.google.android.gms.common.api;

import com.google.android.gms.common.api.AbstractC2500h;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.common.api.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/e.class */
public abstract class AbstractC2495e<R extends AbstractC2500h> {

    /* renamed from: com.google.android.gms.common.api.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/e$a.class */
    public interface AbstractC2496a {
        /* renamed from: a */
        void mo14140a(Status status);
    }

    /* renamed from: a */
    public abstract R mo14389a(long j, TimeUnit timeUnit);

    /* renamed from: a */
    public void mo14388a(AbstractC2496a abstractC2496a) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public abstract void mo14387a(AbstractC2501i<? super R> abstractC2501i);

    /* renamed from: a */
    public abstract boolean mo14390a();
}

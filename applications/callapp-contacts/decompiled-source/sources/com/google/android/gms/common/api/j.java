package com.google.android.gms.common.api;

import com.google.android.gms.common.api.m;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/j.class */
public abstract class j<R extends m> {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/j$a.class */
    public interface a {
        void a(Status status);
    }

    public abstract R a(long j, TimeUnit timeUnit);

    public void a(a aVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(n<? super R> nVar);
}

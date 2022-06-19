package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crb.class */
public class crb<V> extends crl<V> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.crb] */
    /* renamed from: c */
    public static <V> crb<V> m10789c(crt<V> crtVar) {
        return crtVar instanceof crb ? (crb) crtVar : new crd(crtVar);
    }

    /* renamed from: a */
    public final crb<V> m10793a(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (crb) crg.m10784a(this, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: a */
    public final <T> crb<T> m10792a(coe<? super V, T> coeVar, Executor executor) {
        cor.m10936a(coeVar);
        cqk cqkVar = new cqk(this, coeVar);
        mo6734a((Runnable) cqkVar, crv.m10765a(executor, cqkVar));
        return cqkVar;
    }

    /* renamed from: a */
    public final <T> crb<T> m10791a(cqt<? super V, T> cqtVar, Executor executor) {
        cor.m10936a(executor);
        cql cqlVar = new cql(this, cqtVar);
        mo6734a((Runnable) cqlVar, crv.m10765a(executor, cqlVar));
        return cqlVar;
    }

    /* renamed from: a */
    public final <X extends Throwable> crb<V> m10790a(Class<X> cls, coe<? super X, ? extends V> coeVar, Executor executor) {
        cqg cqgVar = new cqg(this, cls, coeVar);
        mo6734a((Runnable) cqgVar, crv.m10765a(executor, cqgVar));
        return cqgVar;
    }
}

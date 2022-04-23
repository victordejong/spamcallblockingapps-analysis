package com.criteo.publisher;

import com.criteo.publisher.p020a0.C1928p;
import com.criteo.publisher.p030w.C2158a;
import com.criteo.publisher.p030w.C2159b;
import java.util.concurrent.ExecutionException;
/* renamed from: com.criteo.publisher.m */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/m.class */
public abstract class AbstractRunnableC2020m implements Runnable {

    /* renamed from: a */
    public final C2158a f2187a = C2159b.m35576b(AbstractRunnableC2020m.class);

    /* renamed from: b */
    public final StackTraceElement[] f2188b = Thread.currentThread().getStackTrace();

    /* renamed from: a */
    public abstract void mo35563a() throws Throwable;

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo35563a();
        } catch (Throwable th) {
            ExecutionException executionException = new ExecutionException(th);
            executionException.setStackTrace(this.f2188b);
            if (th instanceof RuntimeException) {
                C1928p.m36001a((Throwable) executionException);
            } else {
                this.f2187a.m35579a(executionException);
            }
        }
    }
}

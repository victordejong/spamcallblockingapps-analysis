package p131c.p161d.p266c.p275i.p276a;

import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: c.d.c.i.a.f */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/f.class */
public abstract class AbstractC5098f<V> extends AbstractC5103i<V> {

    /* renamed from: c.d.c.i.a.f$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/f$a.class */
    public static abstract class AbstractC5099a<V> extends AbstractC5098f<V> implements AbstractFuture.AbstractC7753h<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l
        /* renamed from: a */
        public final void mo7696a(Runnable runnable, Executor executor) {
            super.mo7696a(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }
    }
}

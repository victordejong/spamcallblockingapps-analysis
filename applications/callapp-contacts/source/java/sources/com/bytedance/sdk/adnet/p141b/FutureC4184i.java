package com.bytedance.sdk.adnet.p141b;

import android.os.SystemClock;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.Request;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.bytedance.sdk.adnet.b.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/i.class */
public class FutureC4184i<T> implements C4218m.AbstractC4219a<T>, Future<C4218m<T>> {

    /* renamed from: a */
    private Request<?> f15320a;

    /* renamed from: b */
    private boolean f15321b = false;

    /* renamed from: c */
    private C4218m<T> f15322c;

    private FutureC4184i() {
    }

    /* renamed from: a */
    public static <E> FutureC4184i<E> m36235a() {
        return new FutureC4184i<>();
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    private C4218m<T> m36233a(Long l) throws InterruptedException, TimeoutException {
        synchronized (this) {
            if (this.f15321b) {
                return this.f15322c;
            }
            if (l == null) {
                while (!isDone()) {
                    wait(0L);
                }
            } else if (l.longValue() > 0) {
                char uptimeMillis = SystemClock.uptimeMillis();
                long longValue = l.longValue() + uptimeMillis;
                while (!isDone() && uptimeMillis < longValue) {
                    wait(longValue - uptimeMillis);
                    uptimeMillis = SystemClock.uptimeMillis();
                }
            }
            if (!this.f15321b) {
                throw new TimeoutException();
            }
            return this.f15322c;
        }
    }

    /* renamed from: a */
    public C4218m<T> get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        return m36233a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
    /* renamed from: a */
    public void mo33422a(C4218m<T> c4218m) {
        synchronized (this) {
            this.f15321b = true;
            this.f15322c = c4218m;
            notifyAll();
        }
    }

    /* renamed from: b */
    public C4218m<T> get() throws InterruptedException {
        try {
            return m36233a((Long) null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
    /* renamed from: b */
    public void mo33419b(C4218m<T> c4218m) {
        synchronized (this) {
            this.f15321b = true;
            this.f15322c = c4218m;
            notifyAll();
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f15320a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f15320a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f15320a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f15321b) {
                if (!isCancelled()) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }
}

package com.bytedance.sdk.adnet.b;

import android.os.SystemClock;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.m;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/i.class */
public class i<T> implements m.a<T>, Future<m<T>> {

    /* renamed from: a  reason: collision with root package name */
    private Request<?> f8245a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8246b = false;

    /* renamed from: c  reason: collision with root package name */
    private m<T> f8247c;

    private i() {
    }

    public static <E> i<E> a() {
        return new i<>();
    }

    private m<T> a(Long l) throws InterruptedException, TimeoutException {
        synchronized (this) {
            if (this.f8246b) {
                return this.f8247c;
            }
            if (l == null) {
                while (!isDone()) {
                    wait(0L);
                }
            } else if (l.longValue() > 0) {
                long uptimeMillis = SystemClock.uptimeMillis();
                long longValue = l.longValue() + uptimeMillis;
                while (!isDone() && uptimeMillis < longValue) {
                    wait(longValue - uptimeMillis);
                    uptimeMillis = SystemClock.uptimeMillis();
                }
            }
            if (this.f8246b) {
                return this.f8247c;
            }
            throw new TimeoutException();
        }
    }

    /* renamed from: a */
    public m<T> get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        return a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // com.bytedance.sdk.adnet.core.m.a
    public void a(m<T> mVar) {
        synchronized (this) {
            this.f8246b = true;
            this.f8247c = mVar;
            notifyAll();
        }
    }

    /* renamed from: b */
    public m<T> get() throws InterruptedException {
        try {
            return a((Long) null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.adnet.core.m.a
    public void b(m<T> mVar) {
        synchronized (this) {
            this.f8246b = true;
            this.f8247c = mVar;
            notifyAll();
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f8245a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f8245a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f8245a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f8246b) {
                if (!isCancelled()) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }
}

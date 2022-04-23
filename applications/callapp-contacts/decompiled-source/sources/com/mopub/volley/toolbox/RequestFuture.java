package com.mopub.volley.toolbox;

import android.os.SystemClock;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/RequestFuture.class */
public class RequestFuture<T> implements Response.ErrorListener, Response.Listener<T>, Future<T> {

    /* renamed from: a  reason: collision with root package name */
    private Request<?> f34875a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f34876b = false;

    /* renamed from: c  reason: collision with root package name */
    private T f34877c;

    /* renamed from: d  reason: collision with root package name */
    private VolleyError f34878d;

    private RequestFuture() {
    }

    private T a(Long l) throws InterruptedException, ExecutionException, TimeoutException {
        synchronized (this) {
            if (this.f34878d != null) {
                throw new ExecutionException(this.f34878d);
            } else if (this.f34876b) {
                return this.f34877c;
            } else {
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
                if (this.f34878d != null) {
                    throw new ExecutionException(this.f34878d);
                } else if (this.f34876b) {
                    return this.f34877c;
                } else {
                    throw new TimeoutException();
                }
            }
        }
    }

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f34875a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f34875a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        try {
            return a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f34875a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f34876b && this.f34878d == null) {
                if (!isCancelled()) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        synchronized (this) {
            this.f34878d = volleyError;
            notifyAll();
        }
    }

    @Override // com.mopub.volley.Response.Listener
    public void onResponse(T t) {
        synchronized (this) {
            this.f34876b = true;
            this.f34877c = t;
            notifyAll();
        }
    }

    public void setRequest(Request<?> request) {
        this.f34875a = request;
    }
}

package com.mopub.volley.toolbox;

import android.os.SystemClock;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/RequestFuture.class */
public class RequestFuture<T> implements Future<T>, Response.Listener<T>, Response.ErrorListener {

    /* renamed from: a */
    public Request<?> f35205a;

    /* renamed from: b */
    public boolean f35206b = false;

    /* renamed from: c */
    public T f35207c;

    /* renamed from: d */
    public VolleyError f35208d;

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    /* renamed from: a */
    public final T m3670a(Long l) throws InterruptedException, ExecutionException, TimeoutException {
        synchronized (this) {
            if (this.f35208d != null) {
                throw new ExecutionException(this.f35208d);
            } else if (this.f35206b) {
                return this.f35207c;
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
                if (this.f35208d != null) {
                    throw new ExecutionException(this.f35208d);
                } else if (this.f35206b) {
                    return this.f35207c;
                } else {
                    throw new TimeoutException();
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f35205a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f35205a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        try {
            return m3670a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m3670a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f35205a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f35206b && this.f35208d == null) {
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
            this.f35208d = volleyError;
            notifyAll();
        }
    }

    @Override // com.mopub.volley.Response.Listener
    public void onResponse(T t) {
        synchronized (this) {
            this.f35206b = true;
            this.f35207c = t;
            notifyAll();
        }
    }

    public void setRequest(Request<?> request) {
        this.f35205a = request;
    }
}

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
    public Request<?> f9612a;

    /* renamed from: b */
    public boolean f9613b = false;

    /* renamed from: c */
    public T f9614c;

    /* renamed from: d */
    public VolleyError f9615d;

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    /* renamed from: a */
    public final T m29872a(Long l) throws InterruptedException, ExecutionException, TimeoutException {
        synchronized (this) {
            if (this.f9615d != null) {
                throw new ExecutionException(this.f9615d);
            } else if (this.f9613b) {
                return this.f9614c;
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
                if (this.f9615d != null) {
                    throw new ExecutionException(this.f9615d);
                } else if (this.f9613b) {
                    return this.f9614c;
                } else {
                    throw new TimeoutException();
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f9612a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f9612a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        try {
            return m29872a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m29872a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f9612a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f9613b && this.f9615d == null) {
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
            this.f9615d = volleyError;
            notifyAll();
        }
    }

    @Override // com.mopub.volley.Response.Listener
    public void onResponse(T t) {
        synchronized (this) {
            this.f9613b = true;
            this.f9614c = t;
            notifyAll();
        }
    }

    public void setRequest(Request<?> request) {
        this.f9612a = request;
    }
}

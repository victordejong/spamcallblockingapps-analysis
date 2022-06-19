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

    /* renamed from: a */
    private Request<?> f60471a;

    /* renamed from: b */
    private boolean f60472b = false;

    /* renamed from: c */
    private T f60473c;

    /* renamed from: d */
    private VolleyError f60474d;

    private RequestFuture() {
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: a */
    private T m5979a(Long l) throws InterruptedException, ExecutionException, TimeoutException {
        synchronized (this) {
            if (this.f60474d == null) {
                if (this.f60472b) {
                    return this.f60473c;
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
                if (this.f60474d != null) {
                    throw new ExecutionException(this.f60474d);
                }
                if (!this.f60472b) {
                    throw new TimeoutException();
                }
                return this.f60473c;
            }
            throw new ExecutionException(this.f60474d);
        }
    }

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f60471a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f60471a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        try {
            return m5979a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m5979a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f60471a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f60472b && this.f60474d == null) {
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
            this.f60474d = volleyError;
            notifyAll();
        }
    }

    @Override // com.mopub.volley.Response.Listener
    public void onResponse(T t) {
        synchronized (this) {
            this.f60472b = true;
            this.f60473c = t;
            notifyAll();
        }
    }

    public void setRequest(Request<?> request) {
        this.f60471a = request;
    }
}

package com.mopub.volley.toolbox;

import android.os.SystemClock;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/RequestFuture.class */
public class RequestFuture<T> implements Future<T>, Response.Listener<T>, Response.ErrorListener {

    /* renamed from: a */
    public Request<?> f5586a;

    /* renamed from: b */
    public boolean f5587b = false;

    /* renamed from: c */
    public T f5588c;

    /* renamed from: d */
    public VolleyError f5589d;

    private RequestFuture() {
    }

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: a */
    public final T m3088a(Long l) {
        synchronized (this) {
            if (this.f5589d == null) {
                if (this.f5587b) {
                    return this.f5588c;
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
                if (this.f5589d != null) {
                    throw new ExecutionException(this.f5589d);
                }
                if (!this.f5587b) {
                    throw new TimeoutException();
                }
                return this.f5588c;
            }
            throw new ExecutionException(this.f5589d);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.f5586a == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.f5586a.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public T get() {
        try {
            return m3088a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return m3088a(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f5586a;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f5587b && this.f5589d == null) {
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
            this.f5589d = volleyError;
            notifyAll();
        }
    }

    @Override // com.mopub.volley.Response.Listener
    public void onResponse(T t) {
        synchronized (this) {
            this.f5587b = true;
            this.f5588c = t;
            notifyAll();
        }
    }

    public void setRequest(Request<?> request) {
        this.f5586a = request;
    }
}

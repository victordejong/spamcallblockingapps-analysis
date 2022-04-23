package com.bumptech.glide.e;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.b.d;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.engine.GlideException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/f.class */
public final class f<R> implements c<R>, g<R> {

    /* renamed from: a  reason: collision with root package name */
    private static final a f7307a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final int f7308b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7309c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f7310d;
    private final a e;
    private R f;
    private d g;
    private boolean h;
    private boolean i;
    private boolean j;
    private GlideException k;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/f$a.class */
    static final class a {
        a() {
        }
    }

    public f(int i, int i2) {
        this(i, i2, true, f7307a);
    }

    f(int i, int i2, boolean z, a aVar) {
        this.f7308b = i;
        this.f7309c = i2;
        this.f7310d = z;
        this.e = aVar;
    }

    private R a(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        synchronized (this) {
            if (this.f7310d && !isDone()) {
                k.b();
            }
            if (this.h) {
                throw new CancellationException();
            } else if (this.j) {
                throw new ExecutionException(this.k);
            } else if (this.i) {
                return this.f;
            } else {
                if (l == null) {
                    wait(0L);
                } else if (l.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    long longValue = l.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        wait(longValue - currentTimeMillis);
                        currentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                } else if (this.j) {
                    throw new ExecutionException(this.k);
                } else if (this.h) {
                    throw new CancellationException();
                } else if (this.i) {
                    return this.f;
                } else {
                    throw new TimeoutException();
                }
            }
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void a() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(Drawable drawable) {
        synchronized (this) {
        }
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(i iVar) {
        iVar.a(this.f7308b, this.f7309c);
    }

    @Override // com.bumptech.glide.e.a.j
    public final void a(R r, d<? super R> dVar) {
        synchronized (this) {
        }
    }

    @Override // com.bumptech.glide.e.g
    public final boolean a(GlideException glideException, Object obj, j<R> jVar, boolean z) {
        synchronized (this) {
            this.j = true;
            this.k = glideException;
            notifyAll();
        }
        return false;
    }

    @Override // com.bumptech.glide.e.g
    public final boolean a(R r, Object obj, j<R> jVar, com.bumptech.glide.load.a aVar, boolean z) {
        synchronized (this) {
            this.i = true;
            this.f = r;
            notifyAll();
        }
        return false;
    }

    @Override // com.bumptech.glide.manager.m
    public final void b() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(Drawable drawable) {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void b(i iVar) {
    }

    @Override // com.bumptech.glide.manager.m
    public final void c() {
    }

    @Override // com.bumptech.glide.e.a.j
    public final void c(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.h = true;
            notifyAll();
            d dVar = null;
            if (z) {
                dVar = this.g;
                this.g = null;
            }
            if (dVar == null) {
                return true;
            }
            dVar.b();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public final R get() throws InterruptedException, ExecutionException {
        try {
            return a((Long) null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public final R get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return a(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // com.bumptech.glide.e.a.j
    public final d getRequest() {
        d dVar;
        synchronized (this) {
            dVar = this.g;
        }
        return dVar;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.h;
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.h && !this.i) {
                if (!this.j) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.a.j
    public final void setRequest(d dVar) {
        synchronized (this) {
            this.g = dVar;
        }
    }
}

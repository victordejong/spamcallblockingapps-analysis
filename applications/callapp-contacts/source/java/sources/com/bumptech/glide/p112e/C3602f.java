package com.bumptech.glide.p112e;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.p113a.AbstractC3584i;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.bumptech.glide.p116g.C3644k;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.bumptech.glide.e.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/f.class */
public final class C3602f<R> implements AbstractFutureC3598c<R>, AbstractC3604g<R> {

    /* renamed from: a */
    private static final C3603a f13664a = new C3603a();

    /* renamed from: b */
    private final int f13665b;

    /* renamed from: c */
    private final int f13666c;

    /* renamed from: d */
    private final boolean f13667d;

    /* renamed from: e */
    private final C3603a f13668e;

    /* renamed from: f */
    private R f13669f;

    /* renamed from: g */
    private AbstractC3599d f13670g;

    /* renamed from: h */
    private boolean f13671h;

    /* renamed from: i */
    private boolean f13672i;

    /* renamed from: j */
    private boolean f13673j;

    /* renamed from: k */
    private GlideException f13674k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.e.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/f$a.class */
    public static final class C3603a {
        C3603a() {
        }
    }

    public C3602f(int i, int i2) {
        this(i, i2, true, f13664a);
    }

    C3602f(int i, int i2, boolean z, C3603a c3603a) {
        this.f13665b = i;
        this.f13666c = i2;
        this.f13667d = z;
        this.f13668e = c3603a;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* renamed from: a */
    private R m37659a(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        synchronized (this) {
            if (this.f13667d && !isDone()) {
                C3644k.m37572b();
            }
            if (!this.f13671h) {
                if (this.f13673j) {
                    throw new ExecutionException(this.f13674k);
                }
                if (this.f13672i) {
                    return this.f13669f;
                }
                if (l == null) {
                    wait(0L);
                } else if (l.longValue() > 0) {
                    char currentTimeMillis = System.currentTimeMillis();
                    long longValue = l.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        wait(longValue - currentTimeMillis);
                        currentTimeMillis = System.currentTimeMillis();
                    }
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                if (this.f13673j) {
                    throw new ExecutionException(this.f13674k);
                }
                if (this.f13671h) {
                    throw new CancellationException();
                }
                if (!this.f13672i) {
                    throw new TimeoutException();
                }
                return this.f13669f;
            }
            throw new CancellationException();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo27009a(Drawable drawable) {
        synchronized (this) {
        }
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo37660a(AbstractC3584i abstractC3584i) {
        abstractC3584i.mo37651a(this.f13665b, this.f13666c);
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: a */
    public final void mo27008a(R r, AbstractC3595d<? super R> abstractC3595d) {
        synchronized (this) {
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3604g
    /* renamed from: a */
    public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j<R> abstractC3585j, boolean z) {
        synchronized (this) {
            this.f13673j = true;
            this.f13674k = glideException;
            notifyAll();
        }
        return false;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3604g
    /* renamed from: a */
    public final boolean mo26383a(R r, Object obj, AbstractC3585j<R> abstractC3585j, EnumC3658a enumC3658a, boolean z) {
        synchronized (this) {
            this.f13672i = true;
            this.f13669f = r;
            notifyAll();
        }
        return false;
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37199b(Drawable drawable) {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: b */
    public final void mo37658b(AbstractC3584i abstractC3584i) {
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: c */
    public final void mo37148c() {
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    /* renamed from: c */
    public final void mo37657c(Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f13671h = true;
            notifyAll();
            AbstractC3599d abstractC3599d = null;
            if (z) {
                abstractC3599d = this.f13670g;
                this.f13670g = null;
            }
            if (abstractC3599d == null) {
                return true;
            }
            abstractC3599d.mo37632b();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public final R get() throws InterruptedException, ExecutionException {
        try {
            return m37659a((Long) null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public final R get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m37659a(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    public final AbstractC3599d getRequest() {
        AbstractC3599d abstractC3599d;
        synchronized (this) {
            abstractC3599d = this.f13670g;
        }
        return abstractC3599d;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.f13671h;
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.f13671h && !this.f13672i) {
                if (!this.f13673j) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
    public final void setRequest(AbstractC3599d abstractC3599d) {
        synchronized (this) {
            this.f13670g = abstractC3599d;
        }
    }
}

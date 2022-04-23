package p530d.p541c.p565w.p567b;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9862c;
/* renamed from: d.c.w.b.b */
/* loaded from: classes2-dex2jar.jar:d/c/w/b/b.class */
public final class C9857b extends AbstractC9845s {

    /* renamed from: b */
    public final Handler f37085b;

    /* renamed from: d.c.w.b.b$a */
    /* loaded from: classes2-dex2jar.jar:d/c/w/b/b$a.class */
    public static final class C9858a extends AbstractC9845s.AbstractC9848c {

        /* renamed from: a */
        public final Handler f37086a;

        /* renamed from: b */
        public volatile boolean f37087b;

        public C9858a(Handler handler) {
            this.f37086a = handler;
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit) {
            if (runnable == null) {
                throw new NullPointerException("run == null");
            } else if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            } else if (this.f37087b) {
                return C9862c.m1826a();
            } else {
                RunnableC9859b bVar = new RunnableC9859b(this.f37086a, C9815a.m1928a(runnable));
                Message obtain = Message.obtain(this.f37086a, bVar);
                obtain.obj = this;
                this.f37086a.sendMessageDelayed(obtain, timeUnit.toMillis(j));
                if (!this.f37087b) {
                    return bVar;
                }
                this.f37086a.removeCallbacks(bVar);
                return C9862c.m1826a();
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f37087b = true;
            this.f37086a.removeCallbacksAndMessages(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f37087b;
        }
    }

    /* renamed from: d.c.w.b.b$b */
    /* loaded from: classes2-dex2jar.jar:d/c/w/b/b$b.class */
    public static final class RunnableC9859b implements Runnable, AbstractC9861b {

        /* renamed from: a */
        public final Handler f37088a;

        /* renamed from: b */
        public final Runnable f37089b;

        /* renamed from: c */
        public volatile boolean f37090c;

        public RunnableC9859b(Handler handler, Runnable runnable) {
            this.f37088a = handler;
            this.f37089b = runnable;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f37090c = true;
            this.f37088a.removeCallbacks(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f37090c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f37089b.run();
            } catch (Throwable th) {
                C9815a.m1923b(th);
            }
        }
    }

    public C9857b(Handler handler) {
        this.f37085b = handler;
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9845s.AbstractC9848c mo1834a() {
        return new C9858a(this.f37085b);
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1833a(Runnable runnable, long j, TimeUnit timeUnit) {
        if (runnable == null) {
            throw new NullPointerException("run == null");
        } else if (timeUnit != null) {
            RunnableC9859b bVar = new RunnableC9859b(this.f37085b, C9815a.m1928a(runnable));
            this.f37085b.postDelayed(bVar, timeUnit.toMillis(j));
            return bVar;
        } else {
            throw new NullPointerException("unit == null");
        }
    }
}

package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.mopub.mobileads.AdData;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24276c;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24540s;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24551v;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.p1.c0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0.class */
public final class C24681c0 {

    /* renamed from: d */
    public static final C24684c f69165d = new C24684c(2, -9223372036854775807L, null);

    /* renamed from: e */
    public static final C24684c f69166e = new C24684c(3, -9223372036854775807L, null);

    /* renamed from: a */
    public final ExecutorService f69167a;

    /* renamed from: b */
    public HandlerC24685d<? extends AbstractC24686e> f69168b;

    /* renamed from: c */
    public IOException f69169c;

    /* renamed from: e.m.a.c.p1.c0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$b.class */
    public interface AbstractC24683b<T extends AbstractC24686e> {
        /* renamed from: m */
        void mo4773m(T t, long j, long j2, boolean z);

        /* renamed from: n */
        void mo4772n(T t, long j, long j2);

        /* renamed from: r */
        C24684c mo4771r(T t, long j, long j2, IOException iOException, int i);
    }

    /* renamed from: e.m.a.c.p1.c0$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$c.class */
    public static final class C24684c {

        /* renamed from: a */
        public final int f69170a;

        /* renamed from: b */
        public final long f69171b;

        public C24684c(int i, long j, C24682a c24682a) {
            this.f69170a = i;
            this.f69171b = j;
        }
    }

    /* renamed from: e.m.a.c.p1.c0$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$d.class */
    public final class HandlerC24685d<T extends AbstractC24686e> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f69172a;

        /* renamed from: b */
        public final T f69173b;

        /* renamed from: c */
        public final long f69174c;

        /* renamed from: d */
        public AbstractC24683b<T> f69175d;

        /* renamed from: e */
        public IOException f69176e;

        /* renamed from: f */
        public int f69177f;

        /* renamed from: g */
        public volatile Thread f69178g;

        /* renamed from: h */
        public volatile boolean f69179h;

        /* renamed from: i */
        public volatile boolean f69180i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC24685d(Looper looper, T t, AbstractC24683b<T> abstractC24683b, int i, long j) {
            super(looper);
            C24681c0.this = r5;
            this.f69173b = t;
            this.f69175d = abstractC24683b;
            this.f69172a = i;
            this.f69174c = j;
        }

        /* renamed from: a */
        public void m4770a(boolean z) {
            this.f69180i = z;
            this.f69176e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f69179h = true;
                ((C24540s.C24541a) this.f69173b).f68566g = true;
                Thread thread = this.f69178g;
                if (thread != null) {
                    thread.interrupt();
                }
            }
            if (z) {
                C24681c0.this.f69168b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                AbstractC24683b<T> abstractC24683b = this.f69175d;
                Objects.requireNonNull(abstractC24683b);
                abstractC24683b.mo4773m(this.f69173b, elapsedRealtime, elapsedRealtime - this.f69174c, true);
                this.f69175d = null;
            }
        }

        /* renamed from: b */
        public void m4769b(long j) {
            C26232y.m2286x(C24681c0.this.f69168b == null);
            C24681c0 c24681c0 = C24681c0.this;
            c24681c0.f69168b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
                return;
            }
            this.f69176e = null;
            c24681c0.f69167a.execute(this);
        }

        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f69180i) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                this.f69176e = null;
                C24681c0 c24681c0 = C24681c0.this;
                ExecutorService executorService = c24681c0.f69167a;
                HandlerC24685d<? extends AbstractC24686e> handlerC24685d = c24681c0.f69168b;
                Objects.requireNonNull(handlerC24685d);
                executorService.execute(handlerC24685d);
            } else if (i == 4) {
                throw ((Error) message.obj);
            } else {
                C24681c0.this.f69168b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f69174c;
                AbstractC24683b<T> abstractC24683b = this.f69175d;
                Objects.requireNonNull(abstractC24683b);
                if (this.f69179h) {
                    abstractC24683b.mo4773m(this.f69173b, elapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    abstractC24683b.mo4773m(this.f69173b, elapsedRealtime, j, false);
                } else if (i2 == 2) {
                    try {
                        abstractC24683b.mo4772n(this.f69173b, elapsedRealtime, j);
                    } catch (RuntimeException e) {
                        C24789n.m4576a("Unexpected exception handling load completed", e);
                        C24681c0.this.f69169c = new C24689h(e);
                    }
                } else if (i2 != 3) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f69176e = iOException;
                    int i3 = this.f69177f + 1;
                    this.f69177f = i3;
                    C24684c mo4771r = abstractC24683b.mo4771r(this.f69173b, elapsedRealtime, j, iOException, i3);
                    int i4 = mo4771r.f69170a;
                    if (i4 == 3) {
                        C24681c0.this.f69169c = this.f69176e;
                    } else if (i4 == 2) {
                    } else {
                        if (i4 == 1) {
                            this.f69177f = 1;
                        }
                        char c = mo4771r.f69171b;
                        if (c == -9223372036854775807L) {
                            c = Math.min((this.f69177f - 1) * 1000, (int) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);
                        }
                        m4769b(c);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f69178g = Thread.currentThread();
                if (!this.f69179h) {
                    C26232y.m2326n("load:" + this.f69173b.getClass().getSimpleName());
                    try {
                        ((C24540s.C24541a) this.f69173b).m4944b();
                        C26232y.m2424Q();
                    } catch (Throwable th) {
                        C26232y.m2424Q();
                        throw th;
                    }
                }
                if (this.f69180i) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e) {
                if (this.f69180i) {
                    return;
                }
                obtainMessage(3, e).sendToTarget();
            } catch (Error e2) {
                C24789n.m4576a("Unexpected error loading stream", e2);
                if (!this.f69180i) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                C26232y.m2286x(this.f69179h);
                if (this.f69180i) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e4) {
                C24789n.m4576a("Unexpected exception loading stream", e4);
                if (this.f69180i) {
                    return;
                }
                obtainMessage(3, new C24689h(e4)).sendToTarget();
            } catch (OutOfMemoryError e5) {
                C24789n.m4576a("OutOfMemory error loading stream", e5);
                if (this.f69180i) {
                    return;
                }
                obtainMessage(3, new C24689h(e5)).sendToTarget();
            }
        }
    }

    /* renamed from: e.m.a.c.p1.c0$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$e.class */
    public interface AbstractC24686e {
    }

    /* renamed from: e.m.a.c.p1.c0$f */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$f.class */
    public interface AbstractC24687f {
    }

    /* renamed from: e.m.a.c.p1.c0$g */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$g.class */
    public static final class RunnableC24688g implements Runnable {

        /* renamed from: a */
        public final AbstractC24687f f69182a;

        public RunnableC24688g(AbstractC24687f abstractC24687f) {
            this.f69182a = abstractC24687f;
        }

        @Override // java.lang.Runnable
        public void run() {
            C24551v[] c24551vArr;
            C24540s c24540s = (C24540s) this.f69182a;
            for (C24551v c24551v : c24540s.f68552s) {
                c24551v.m4914p(true);
                AbstractC24276c<?> abstractC24276c = c24551v.f68619f;
                if (abstractC24276c != null) {
                    abstractC24276c.release();
                    c24551v.f68619f = null;
                    c24551v.f68618e = null;
                }
            }
            C24540s.C24542b c24542b = c24540s.f68544k;
            AbstractC24408h abstractC24408h = c24542b.f68575b;
            if (abstractC24408h != null) {
                abstractC24408h.release();
                c24542b.f68575b = null;
            }
        }
    }

    /* renamed from: e.m.a.c.p1.c0$h */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/c0$h.class */
    public static final class C24689h extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C24689h(java.lang.Throwable r5) {
            /*
                r4 = this;
                java.lang.String r0 = "Unexpected "
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r6 = r0
                r0 = r6
                r1 = r5
                java.lang.Class r1 = r1.getClass()
                java.lang.String r1 = r1.getSimpleName()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r5
                java.lang.String r1 = r1.getMessage()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r2 = r5
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0.C24689h.<init>(java.lang.Throwable):void");
        }
    }

    public C24681c0(final String str) {
        int i = C24773d0.f69427a;
        this.f69167a = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: e.m.a.c.q1.d
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, str);
            }
        });
    }

    /* renamed from: a */
    public static C24684c m4775a(boolean z, long j) {
        return new C24684c(z ? 1 : 0, j, null);
    }

    /* renamed from: b */
    public boolean m4774b() {
        return this.f69168b != null;
    }
}

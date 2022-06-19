package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11598ae;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader.class */
public final class Loader {

    /* renamed from: a */
    public static final C11527b f38353a = m20201a(false, -9223372036854775807L);

    /* renamed from: b */
    public static final C11527b f38354b = m20201a(true, -9223372036854775807L);

    /* renamed from: c */
    public static final C11527b f38355c = new C11527b(2, -9223372036854775807L);

    /* renamed from: d */
    public static final C11527b f38356d = new C11527b(3, -9223372036854775807L);

    /* renamed from: e */
    public IOException f38357e;

    /* renamed from: f */
    private final ExecutorService f38358f;

    /* renamed from: g */
    private HandlerC11528c<? extends AbstractC11529d> f38359g;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$a.class */
    public interface AbstractC11526a<T extends AbstractC11529d> {
        /* renamed from: a */
        C11527b mo20196a(T t, long j, long j2, IOException iOException, int i);

        /* renamed from: a */
        void mo20197a(T t, long j, long j2);

        /* renamed from: a */
        void mo20195a(T t, long j, long j2, boolean z);
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$b.class */
    public static final class C11527b {

        /* renamed from: a */
        final int f38360a;

        /* renamed from: b */
        final long f38361b;

        private C11527b(int i, long j) {
            this.f38360a = i;
            this.f38361b = j;
        }

        /* renamed from: a */
        public final boolean m20194a() {
            int i = this.f38360a;
            return i == 0 || i == 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.upstream.Loader$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$c.class */
    public final class HandlerC11528c<T extends AbstractC11529d> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f38362a;

        /* renamed from: c */
        private final T f38364c;

        /* renamed from: d */
        private final long f38365d;

        /* renamed from: e */
        private AbstractC11526a<T> f38366e;

        /* renamed from: f */
        private IOException f38367f;

        /* renamed from: g */
        private int f38368g;

        /* renamed from: h */
        private Thread f38369h;

        /* renamed from: i */
        private boolean f38370i;

        /* renamed from: j */
        private volatile boolean f38371j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC11528c(Looper looper, T t, AbstractC11526a<T> abstractC11526a, int i, long j) {
            super(looper);
            Loader.this = r5;
            this.f38364c = t;
            this.f38366e = abstractC11526a;
            this.f38362a = i;
            this.f38365d = j;
        }

        /* renamed from: a */
        private void m20193a() {
            this.f38367f = null;
            Loader.this.f38358f.execute((Runnable) C11593a.m20020b(Loader.this.f38359g));
        }

        /* renamed from: b */
        private void m20189b() {
            Loader.this.f38359g = null;
        }

        /* renamed from: a */
        public final void m20192a(int i) throws IOException {
            IOException iOException = this.f38367f;
            if (iOException == null || this.f38368g <= i) {
                return;
            }
            throw iOException;
        }

        /* renamed from: a */
        public final void m20191a(long j) {
            C11593a.m20019b(Loader.this.f38359g == null);
            Loader.this.f38359g = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m20193a();
            }
        }

        /* renamed from: a */
        public final void m20190a(boolean z) {
            this.f38371j = z;
            this.f38367f = null;
            if (hasMessages(0)) {
                this.f38370i = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.f38370i = true;
                    this.f38364c.mo20188a();
                    Thread thread = this.f38369h;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                m20189b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((AbstractC11526a) C11593a.m20020b(this.f38366e)).mo20195a(this.f38364c, elapsedRealtime, elapsedRealtime - this.f38365d, true);
                this.f38366e = null;
            }
        }

        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (this.f38371j) {
                return;
            }
            if (message.what == 0) {
                m20193a();
            } else if (message.what == 3) {
                throw ((Error) message.obj);
            } else {
                m20189b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f38365d;
                AbstractC11526a abstractC11526a = (AbstractC11526a) C11593a.m20020b(this.f38366e);
                if (this.f38370i) {
                    abstractC11526a.mo20195a(this.f38364c, elapsedRealtime, j, false);
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    try {
                        abstractC11526a.mo20197a(this.f38364c, elapsedRealtime, j);
                    } catch (RuntimeException e) {
                        C11617n.m19857b("LoadTask", "Unexpected exception handling load completed", e);
                        Loader.this.f38357e = new UnexpectedLoaderException(e);
                    }
                } else if (i != 2) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f38367f = iOException;
                    int i2 = this.f38368g + 1;
                    this.f38368g = i2;
                    C11527b mo20196a = abstractC11526a.mo20196a(this.f38364c, elapsedRealtime, j, iOException, i2);
                    if (mo20196a.f38360a == 3) {
                        Loader.this.f38357e = this.f38367f;
                    } else if (mo20196a.f38360a == 2) {
                    } else {
                        if (mo20196a.f38360a == 1) {
                            this.f38368g = 1;
                        }
                        m20191a((long) (mo20196a.f38361b != -9223372036854775807L ? mo20196a.f38361b : Math.min((this.f38368g - 1) * 1000, 5000)));
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = !this.f38370i;
                    this.f38369h = Thread.currentThread();
                }
                if (z) {
                    C11598ae.m20002a("load:" + this.f38364c.getClass().getSimpleName());
                    try {
                        this.f38364c.mo20187b();
                        C11598ae.m20003a();
                    } catch (Throwable th) {
                        C11598ae.m20003a();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.f38369h = null;
                    Thread.interrupted();
                }
                if (this.f38371j) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e) {
                if (this.f38371j) {
                    return;
                }
                obtainMessage(2, e).sendToTarget();
            } catch (Error e2) {
                C11617n.m19857b("LoadTask", "Unexpected error loading stream", e2);
                if (!this.f38371j) {
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e3) {
                C11617n.m19857b("LoadTask", "Unexpected exception loading stream", e3);
                if (this.f38371j) {
                    return;
                }
                obtainMessage(2, new UnexpectedLoaderException(e3)).sendToTarget();
            } catch (OutOfMemoryError e4) {
                C11617n.m19857b("LoadTask", "OutOfMemory error loading stream", e4);
                if (this.f38371j) {
                    return;
                }
                obtainMessage(2, new UnexpectedLoaderException(e4)).sendToTarget();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$d.class */
    public interface AbstractC11529d {
        /* renamed from: a */
        void mo20188a();

        /* renamed from: b */
        void mo20187b() throws IOException;
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$e.class */
    public interface AbstractC11530e {
        /* renamed from: g */
        void mo20186g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.upstream.Loader$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$f.class */
    public static final class RunnableC11531f implements Runnable {

        /* renamed from: a */
        private final AbstractC11530e f38372a;

        public RunnableC11531f(AbstractC11530e abstractC11530e) {
            this.f38372a = abstractC11530e;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f38372a.mo20186g();
        }
    }

    public Loader(String str) {
        this.f38358f = C11599af.m19972a(str);
    }

    /* renamed from: a */
    public static C11527b m20201a(boolean z, long j) {
        return new C11527b(z ? 1 : 0, j);
    }

    /* renamed from: a */
    public final <T extends AbstractC11529d> long m20206a(T t, AbstractC11526a<T> abstractC11526a, int i) {
        Looper looper = (Looper) C11593a.m20024a(Looper.myLooper());
        this.f38357e = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC11528c(looper, t, abstractC11526a, i, elapsedRealtime).m20191a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public final void m20207a(int i) throws IOException {
        IOException iOException = this.f38357e;
        if (iOException == null) {
            HandlerC11528c<? extends AbstractC11529d> handlerC11528c = this.f38359g;
            if (handlerC11528c == null) {
                return;
            }
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = handlerC11528c.f38362a;
            }
            handlerC11528c.m20192a(i2);
            return;
        }
        throw iOException;
    }

    /* renamed from: a */
    public final void m20205a(AbstractC11530e abstractC11530e) {
        HandlerC11528c<? extends AbstractC11529d> handlerC11528c = this.f38359g;
        if (handlerC11528c != null) {
            handlerC11528c.m20190a(true);
        }
        if (abstractC11530e != null) {
            this.f38358f.execute(new RunnableC11531f(abstractC11530e));
        }
        this.f38358f.shutdown();
    }

    /* renamed from: a */
    public final boolean m20208a() {
        return this.f38357e != null;
    }

    /* renamed from: b */
    public final boolean m20200b() {
        return this.f38359g != null;
    }

    /* renamed from: c */
    public final void m20198c() {
        ((HandlerC11528c) C11593a.m20024a(this.f38359g)).m20190a(false);
    }
}

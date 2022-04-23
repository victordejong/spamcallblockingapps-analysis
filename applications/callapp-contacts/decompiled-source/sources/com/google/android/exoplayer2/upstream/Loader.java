package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.util.ae;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader.class */
public final class Loader {

    /* renamed from: a  reason: collision with root package name */
    public static final b f22110a = a(false, -9223372036854775807L);

    /* renamed from: b  reason: collision with root package name */
    public static final b f22111b = a(true, -9223372036854775807L);

    /* renamed from: c  reason: collision with root package name */
    public static final b f22112c = new b(2, -9223372036854775807L);

    /* renamed from: d  reason: collision with root package name */
    public static final b f22113d = new b(3, -9223372036854775807L);
    public IOException e;
    private final ExecutorService f;
    private c<? extends d> g;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$a.class */
    public interface a<T extends d> {
        b a(T t, long j, long j2, IOException iOException, int i);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f22114a;

        /* renamed from: b  reason: collision with root package name */
        final long f22115b;

        private b(int i, long j) {
            this.f22114a = i;
            this.f22115b = j;
        }

        public final boolean a() {
            int i = this.f22114a;
            return i == 0 || i == 1;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$c.class */
    final class c<T extends d> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f22116a;

        /* renamed from: c  reason: collision with root package name */
        private final T f22118c;

        /* renamed from: d  reason: collision with root package name */
        private final long f22119d;
        private a<T> e;
        private IOException f;
        private int g;
        private Thread h;
        private boolean i;
        private volatile boolean j;

        public c(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.f22118c = t;
            this.e = aVar;
            this.f22116a = i;
            this.f22119d = j;
        }

        private void a() {
            this.f = null;
            Loader.this.f.execute((Runnable) com.google.android.exoplayer2.util.a.b(Loader.this.g));
        }

        private void b() {
            Loader.this.g = null;
        }

        public final void a(int i) throws IOException {
            IOException iOException = this.f;
            if (iOException != null && this.g > i) {
                throw iOException;
            }
        }

        public final void a(long j) {
            com.google.android.exoplayer2.util.a.b(Loader.this.g == null);
            Loader.this.g = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                a();
            }
        }

        public final void a(boolean z) {
            this.j = z;
            this.f = null;
            if (hasMessages(0)) {
                this.i = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.i = true;
                    this.f22118c.a();
                    Thread thread = this.h;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((a) com.google.android.exoplayer2.util.a.b(this.e)).a(this.f22118c, elapsedRealtime, elapsedRealtime - this.f22119d, true);
                this.e = null;
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (!this.j) {
                if (message.what == 0) {
                    a();
                } else if (message.what != 3) {
                    b();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.f22119d;
                    a aVar = (a) com.google.android.exoplayer2.util.a.b(this.e);
                    if (this.i) {
                        aVar.a(this.f22118c, elapsedRealtime, j, false);
                        return;
                    }
                    int i = message.what;
                    if (i == 1) {
                        try {
                            aVar.a(this.f22118c, elapsedRealtime, j);
                        } catch (RuntimeException e) {
                            n.b("LoadTask", "Unexpected exception handling load completed", e);
                            Loader.this.e = new UnexpectedLoaderException(e);
                        }
                    } else if (i == 2) {
                        IOException iOException = (IOException) message.obj;
                        this.f = iOException;
                        int i2 = this.g + 1;
                        this.g = i2;
                        b a2 = aVar.a(this.f22118c, elapsedRealtime, j, iOException, i2);
                        if (a2.f22114a == 3) {
                            Loader.this.e = this.f;
                        } else if (a2.f22114a != 2) {
                            if (a2.f22114a == 1) {
                                this.g = 1;
                            }
                            a(a2.f22115b != -9223372036854775807L ? a2.f22115b : Math.min((this.g - 1) * 1000, 5000));
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = !this.i;
                    this.h = Thread.currentThread();
                }
                if (z) {
                    ae.a("load:" + this.f22118c.getClass().getSimpleName());
                    try {
                        this.f22118c.b();
                        ae.a();
                    } catch (Throwable th) {
                        ae.a();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.h = null;
                    Thread.interrupted();
                }
                if (!this.j) {
                    sendEmptyMessage(1);
                }
            } catch (IOException e) {
                if (!this.j) {
                    obtainMessage(2, e).sendToTarget();
                }
            } catch (Error e2) {
                n.b("LoadTask", "Unexpected error loading stream", e2);
                if (!this.j) {
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e3) {
                n.b("LoadTask", "Unexpected exception loading stream", e3);
                if (!this.j) {
                    obtainMessage(2, new UnexpectedLoaderException(e3)).sendToTarget();
                }
            } catch (OutOfMemoryError e4) {
                n.b("LoadTask", "OutOfMemory error loading stream", e4);
                if (!this.j) {
                    obtainMessage(2, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$d.class */
    public interface d {
        void a();

        void b() throws IOException;
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$e.class */
    public interface e {
        void g();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$f.class */
    static final class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final e f22120a;

        public f(e eVar) {
            this.f22120a = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f22120a.g();
        }
    }

    public Loader(String str) {
        this.f = af.a(str);
    }

    public static b a(boolean z, long j) {
        return new b(z ? 1 : 0, j);
    }

    public final <T extends d> long a(T t, a<T> aVar, int i) {
        Looper looper = (Looper) com.google.android.exoplayer2.util.a.a(Looper.myLooper());
        this.e = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new c(looper, t, aVar, i, elapsedRealtime).a(0L);
        return elapsedRealtime;
    }

    public final void a(int i) throws IOException {
        IOException iOException = this.e;
        if (iOException == null) {
            c<? extends d> cVar = this.g;
            if (cVar != null) {
                int i2 = i;
                if (i == Integer.MIN_VALUE) {
                    i2 = cVar.f22116a;
                }
                cVar.a(i2);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void a(e eVar) {
        c<? extends d> cVar = this.g;
        if (cVar != null) {
            cVar.a(true);
        }
        if (eVar != null) {
            this.f.execute(new f(eVar));
        }
        this.f.shutdown();
    }

    public final boolean a() {
        return this.e != null;
    }

    public final boolean b() {
        return this.g != null;
    }

    public final void c() {
        ((c) com.google.android.exoplayer2.util.a.a(this.g)).a(false);
    }
}

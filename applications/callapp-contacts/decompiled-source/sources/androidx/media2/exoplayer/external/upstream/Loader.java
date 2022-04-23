package androidx.media2.exoplayer.external.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.util.aa;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader.class */
public final class Loader {

    /* renamed from: a  reason: collision with root package name */
    public static final b f4031a = a(false, -9223372036854775807L);

    /* renamed from: b  reason: collision with root package name */
    public static final b f4032b = a(true, -9223372036854775807L);

    /* renamed from: c  reason: collision with root package name */
    public static final b f4033c = new b(2, -9223372036854775807L);

    /* renamed from: d  reason: collision with root package name */
    public static final b f4034d = new b(3, -9223372036854775807L);
    private final ExecutorService e;
    private c<? extends d> f;
    private IOException g;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedLoaderException(java.lang.Throwable r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r7 = r0
                r0 = r6
                java.lang.String r0 = r0.getMessage()
                r8 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r7
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 13
                int r2 = r2 + r3
                r3 = r8
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "Unexpected "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r9
                java.lang.String r1 = r1.toString()
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$a.class */
    public interface a<T extends d> {
        b a(T t, long j, long j2, IOException iOException, int i);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f4035a;

        /* renamed from: b  reason: collision with root package name */
        final long f4036b;

        private b(int i, long j) {
            this.f4035a = i;
            this.f4036b = j;
        }

        public final boolean a() {
            int i = this.f4035a;
            return i == 0 || i == 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$c.class */
    final class c<T extends d> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f4037a;

        /* renamed from: c  reason: collision with root package name */
        private final T f4039c;

        /* renamed from: d  reason: collision with root package name */
        private final long f4040d;
        private a<T> e;
        private IOException f;
        private int g;
        private volatile Thread h;
        private volatile boolean i;
        private volatile boolean j;

        public c(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.f4039c = t;
            this.e = aVar;
            this.f4037a = i;
            this.f4040d = j;
        }

        private void a() {
            this.f = null;
            Loader.this.e.execute(Loader.this.f);
        }

        private void b() {
            Loader.this.f = null;
        }

        public final void a(int i) throws IOException {
            IOException iOException = this.f;
            if (iOException != null && this.g > i) {
                throw iOException;
            }
        }

        public final void a(long j) {
            androidx.media2.exoplayer.external.util.a.b(Loader.this.f == null);
            Loader.this.f = this;
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
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.i = true;
                this.f4039c.a();
                if (this.h != null) {
                    this.h.interrupt();
                }
            }
            if (z) {
                b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.e.a(this.f4039c, elapsedRealtime, elapsedRealtime - this.f4040d, true);
                this.e = null;
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (!this.j) {
                if (message.what == 0) {
                    a();
                } else if (message.what != 4) {
                    b();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.f4040d;
                    if (this.i) {
                        this.e.a(this.f4039c, elapsedRealtime, j, false);
                        return;
                    }
                    int i = message.what;
                    if (i == 1) {
                        this.e.a(this.f4039c, elapsedRealtime, j, false);
                    } else if (i == 2) {
                        try {
                            this.e.a(this.f4039c, elapsedRealtime, j);
                        } catch (RuntimeException e) {
                            j.b("LoadTask", "Unexpected exception handling load completed", e);
                            Loader.this.g = new UnexpectedLoaderException(e);
                        }
                    } else if (i == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.f = iOException;
                        int i2 = this.g + 1;
                        this.g = i2;
                        b a2 = this.e.a(this.f4039c, elapsedRealtime, j, iOException, i2);
                        if (a2.f4035a == 3) {
                            Loader.this.g = this.f;
                        } else if (a2.f4035a != 2) {
                            if (a2.f4035a == 1) {
                                this.g = 1;
                            }
                            a(a2.f4036b != -9223372036854775807L ? a2.f4036b : Math.min((this.g - 1) * 1000, 5000));
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.h = Thread.currentThread();
                if (!this.i) {
                    String valueOf = String.valueOf(this.f4039c.getClass().getSimpleName());
                    aa.a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                    try {
                        this.f4039c.b();
                        aa.a();
                    } catch (Throwable th) {
                        aa.a();
                        throw th;
                    }
                }
                if (!this.j) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.j) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (Error e2) {
                j.b("LoadTask", "Unexpected error loading stream", e2);
                if (!this.j) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                androidx.media2.exoplayer.external.util.a.b(this.i);
                if (!this.j) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e4) {
                j.b("LoadTask", "Unexpected exception loading stream", e4);
                if (!this.j) {
                    obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            } catch (OutOfMemoryError e5) {
                j.b("LoadTask", "OutOfMemory error loading stream", e5);
                if (!this.j) {
                    obtainMessage(3, new UnexpectedLoaderException(e5)).sendToTarget();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$d.class */
    public interface d {
        void a();

        void b() throws IOException, InterruptedException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$e.class */
    public interface e {
        void f();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$f.class */
    static final class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final e f4041a;

        public f(e eVar) {
            this.f4041a = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4041a.f();
        }
    }

    public Loader(String str) {
        this.e = ac.a(str);
    }

    public static b a(boolean z, long j) {
        return new b(z ? 1 : 0, j);
    }

    public final <T extends d> long a(T t, a<T> aVar, int i) {
        Looper myLooper = Looper.myLooper();
        androidx.media2.exoplayer.external.util.a.b(myLooper != null);
        this.g = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new c(myLooper, t, aVar, i, elapsedRealtime).a(0L);
        return elapsedRealtime;
    }

    public final void a(int i) throws IOException {
        IOException iOException = this.g;
        if (iOException == null) {
            c<? extends d> cVar = this.f;
            if (cVar != null) {
                int i2 = i;
                if (i == Integer.MIN_VALUE) {
                    i2 = cVar.f4037a;
                }
                cVar.a(i2);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void a(e eVar) {
        c<? extends d> cVar = this.f;
        if (cVar != null) {
            cVar.a(true);
        }
        if (eVar != null) {
            this.e.execute(new f(eVar));
        }
        this.e.shutdown();
    }

    public final boolean a() {
        return this.f != null;
    }

    public final void b() {
        this.f.a(false);
    }
}

package androidx.media2.exoplayer.external.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.m;
import androidx.media2.exoplayer.external.drm.n;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.f;
import androidx.media2.exoplayer.external.util.j;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession.class */
public final class DefaultDrmSession<T extends m> implements DrmSession<T> {

    /* renamed from: a  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f2967a;

    /* renamed from: b  reason: collision with root package name */
    final n<T> f2968b;

    /* renamed from: c  reason: collision with root package name */
    final a<T> f2969c;

    /* renamed from: d  reason: collision with root package name */
    final int f2970d;
    final f<g> e;
    final t f;
    final p g;
    final UUID h;
    final DefaultDrmSession<T>.e i;
    int j;
    byte[] k;
    byte[] l;
    n.a m;
    n.b n;
    private final b<T> o;
    private final HashMap<String, String> p;
    private int q;
    private HandlerThread r;
    private DefaultDrmSession<T>.c s;
    private T t;
    private DrmSession.DrmSessionException u;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$UnexpectedDrmSessionException.class */
    public static final class UnexpectedDrmSessionException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedDrmSessionException(java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.DefaultDrmSession.UnexpectedDrmSessionException.<init>(java.lang.Throwable):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$a.class */
    public interface a<T extends m> {
        void a();

        void a(DefaultDrmSession<T> defaultDrmSession);

        void a(Exception exc);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$b.class */
    public interface b<T extends m> {
        void a(DefaultDrmSession<T> defaultDrmSession);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$c.class */
    public final class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        final void a(int i, Object obj, boolean z) {
            obtainMessage(i, new d(z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00cf A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r7) {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.DefaultDrmSession.c.handleMessage(android.os.Message):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f2972a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2973b;

        /* renamed from: c  reason: collision with root package name */
        public final Object f2974c;

        /* renamed from: d  reason: collision with root package name */
        public int f2975d;

        public d(boolean z, long j, Object obj) {
            this.f2972a = z;
            this.f2973b = j;
            this.f2974c = obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$e.class */
    final class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                if (obj != defaultDrmSession.n) {
                    return;
                }
                if (defaultDrmSession.j == 2 || defaultDrmSession.h()) {
                    defaultDrmSession.n = null;
                    if (obj2 instanceof Exception) {
                        defaultDrmSession.f2969c.a((Exception) obj2);
                    } else {
                        defaultDrmSession.f2969c.a();
                    }
                }
            } else if (i == 1) {
                DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                if (obj == defaultDrmSession2.m && defaultDrmSession2.h()) {
                    defaultDrmSession2.m = null;
                    if (obj2 instanceof Exception) {
                        defaultDrmSession2.a((Exception) obj2);
                        return;
                    }
                    try {
                        if (defaultDrmSession2.f2970d == 3) {
                            ac.a(defaultDrmSession2.l);
                            defaultDrmSession2.e.a(androidx.media2.exoplayer.external.drm.d.f2987a);
                            return;
                        }
                        byte[] c2 = defaultDrmSession2.f2968b.c();
                        if (!((defaultDrmSession2.f2970d != 2 && (defaultDrmSession2.f2970d != 0 || defaultDrmSession2.l == null)) || c2 == null || c2.length == 0)) {
                            defaultDrmSession2.l = c2;
                        }
                        defaultDrmSession2.j = 4;
                        defaultDrmSession2.e.a(androidx.media2.exoplayer.external.drm.e.f2988a);
                    } catch (Exception e) {
                        defaultDrmSession2.a(e);
                    }
                }
            }
        }
    }

    public DefaultDrmSession(UUID uuid, n<T> nVar, a<T> aVar, b<T> bVar, List<DrmInitData.SchemeData> list, int i, byte[] bArr, HashMap<String, String> hashMap, p pVar, Looper looper, f<g> fVar, t tVar) {
        if (i == 1 || i == 3) {
            androidx.media2.exoplayer.external.util.a.a(bArr);
        }
        this.h = uuid;
        this.f2969c = aVar;
        this.o = bVar;
        this.f2968b = nVar;
        this.f2970d = i;
        if (bArr != null) {
            this.l = bArr;
            this.f2967a = null;
        } else {
            this.f2967a = Collections.unmodifiableList((List) androidx.media2.exoplayer.external.util.a.a(list));
        }
        this.p = hashMap;
        this.g = pVar;
        this.e = fVar;
        this.f = tVar;
        this.j = 2;
        this.i = new e(looper);
    }

    private void c(boolean z) {
        try {
            this.m = this.f2968b.b();
            ((c) ac.a(this.s)).a(1, androidx.media2.exoplayer.external.util.a.a(this.m), z);
        } catch (Exception e2) {
            a(e2);
        }
    }

    private long i() {
        if (!androidx.media2.exoplayer.external.c.f2961d.equals(this.h)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) androidx.media2.exoplayer.external.util.a.a(q.a(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    public final void a() {
        this.n = this.f2968b.d();
        ((c) ac.a(this.s)).a(0, androidx.media2.exoplayer.external.util.a.a(this.n), true);
    }

    final void a(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f2969c.a(this);
        } else {
            b(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    public final boolean a(boolean z) {
        if (h()) {
            return true;
        }
        try {
            this.k = this.f2968b.a();
            this.t = this.f2968b.f();
            this.e.a(androidx.media2.exoplayer.external.drm.b.f2985a);
            this.j = 3;
            androidx.media2.exoplayer.external.util.a.a(this.k);
            return true;
        } catch (NotProvisionedException e2) {
            if (z) {
                this.f2969c.a(this);
                return false;
            }
            b(e2);
            return false;
        } catch (Exception e3) {
            b(e3);
            return false;
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final int b() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(final Exception exc) {
        this.u = new DrmSession.DrmSessionException(exc);
        this.e.a(new f.a(exc) { // from class: androidx.media2.exoplayer.external.drm.f

            /* renamed from: a  reason: collision with root package name */
            private final Exception f2989a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f2989a = exc;
            }

            @Override // androidx.media2.exoplayer.external.util.f.a
            public final void a(Object obj) {
                ((g) obj).i();
            }
        });
        if (this.j != 4) {
            this.j = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresNonNull({"sessionId"})
    public final void b(boolean z) {
        ac.a(this.k);
        int i = this.f2970d;
        if (i == 0 || i == 1) {
            if (this.l == null) {
                c(z);
                return;
            }
            long i2 = i();
            if (this.f2970d == 0 && i2 <= 60) {
                StringBuilder sb = new StringBuilder(88);
                sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
                sb.append(i2);
                j.a();
                c(z);
            } else if (i2 <= 0) {
                b(new KeysExpiredException());
            } else {
                this.j = 4;
                this.e.a(androidx.media2.exoplayer.external.drm.c.f2986a);
            }
        } else if (i != 2) {
            if (i == 3) {
                androidx.media2.exoplayer.external.util.a.a(this.l);
                androidx.media2.exoplayer.external.util.a.a(this.k);
                c(z);
            }
        } else if (this.l == null) {
            c(z);
        } else {
            c(z);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final DrmSession.DrmSessionException c() {
        if (this.j == 1) {
            return this.u;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final T d() {
        return this.t;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final Map<String, String> e() {
        if (this.k == null) {
            return null;
        }
        return this.f2968b.e();
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final void f() {
        int i = this.q + 1;
        this.q = i;
        if (i == 1) {
            androidx.media2.exoplayer.external.util.a.b(this.j == 2);
            HandlerThread handlerThread = new HandlerThread("DrmRequestHandler");
            this.r = handlerThread;
            handlerThread.start();
            this.s = new c(this.r.getLooper());
            if (a(true)) {
                b(true);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final void g() {
        int i = this.q - 1;
        this.q = i;
        if (i == 0) {
            this.j = 0;
            ((e) ac.a(this.i)).removeCallbacksAndMessages(null);
            ((c) ac.a(this.s)).removeCallbacksAndMessages(null);
            this.s = null;
            ((HandlerThread) ac.a(this.r)).quit();
            this.r = null;
            this.t = null;
            this.u = null;
            this.m = null;
            this.n = null;
            if (this.k != null) {
                this.k = null;
                this.e.a(androidx.media2.exoplayer.external.drm.a.f2984a);
            }
            this.o.a(this);
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    final boolean h() {
        int i = this.j;
        return i == 3 || i == 4;
    }
}

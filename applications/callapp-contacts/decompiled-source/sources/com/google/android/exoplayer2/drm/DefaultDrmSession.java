package com.google.android.exoplayer2.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.upstream.r;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.g;
import com.google.android.exoplayer2.util.h;
import com.google.android.exoplayer2.util.n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession.class */
public final class DefaultDrmSession implements DrmSession {

    /* renamed from: a  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f20849a;

    /* renamed from: b  reason: collision with root package name */
    final i f20850b;

    /* renamed from: c  reason: collision with root package name */
    final a f20851c;

    /* renamed from: d  reason: collision with root package name */
    final r f20852d;
    final m e;
    final UUID f;
    final e g;
    int h;
    byte[] i;
    i.e j;
    private final b k;
    private final int l;
    private final boolean m;
    private final boolean n;
    private final HashMap<String, String> o;
    private final h<c.a> p;
    private int q;
    private HandlerThread r;
    private c s;
    private h t;
    private DrmSession.DrmSessionException u;
    private byte[] v;
    private i.b w;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException.class */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$a.class */
    public interface a {
        void a();

        void a(DefaultDrmSession defaultDrmSession);

        void a(Exception exc);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$b.class */
    public interface b {
        void a(DefaultDrmSession defaultDrmSession);

        void a(DefaultDrmSession defaultDrmSession, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$c.class */
    public final class c extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private boolean f20854b;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            d dVar = (d) message.obj;
            if (!dVar.f20856b) {
                return false;
            }
            dVar.e++;
            if (dVar.e > DefaultDrmSession.this.f20852d.a(3)) {
                return false;
            }
            long a2 = DefaultDrmSession.this.f20852d.a(new r.a(new l(dVar.f20855a, mediaDrmCallbackException.f20872a, mediaDrmCallbackException.f20873b, mediaDrmCallbackException.f20874c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f20857c, mediaDrmCallbackException.f20875d), new o(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), dVar.e));
            if (a2 == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                if (this.f20854b) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), a2);
                return true;
            }
        }

        public final void a() {
            synchronized (this) {
                removeCallbacksAndMessages(null);
                this.f20854b = true;
            }
        }

        final void a(int i, Object obj, boolean z) {
            obtainMessage(i, new d(l.a(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Throwable, java.lang.Exception] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Object r0 = r0.obj
                com.google.android.exoplayer2.drm.DefaultDrmSession$d r0 = (com.google.android.exoplayer2.drm.DefaultDrmSession.d) r0
                r7 = r0
                r0 = r6
                int r0 = r0.what     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0042
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L_0x0035
                r0 = r5
                com.google.android.exoplayer2.drm.DefaultDrmSession r0 = com.google.android.exoplayer2.drm.DefaultDrmSession.this     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                com.google.android.exoplayer2.drm.m r0 = r0.e     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r1 = r5
                com.google.android.exoplayer2.drm.DefaultDrmSession r1 = com.google.android.exoplayer2.drm.DefaultDrmSession.this     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                java.util.UUID r1 = r1.f     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r2 = r7
                java.lang.Object r2 = r2.f20858d     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                com.google.android.exoplayer2.drm.i$b r2 = (com.google.android.exoplayer2.drm.i.b) r2     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                byte[] r0 = r0.a(r1, r2)     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r9 = r0
                goto L_0x0079
            L_0x0035:
                java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r9 = r0
                r0 = r9
                r0.<init>()     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r0 = r9
                throw r0     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
            L_0x0042:
                r0 = r5
                com.google.android.exoplayer2.drm.DefaultDrmSession r0 = com.google.android.exoplayer2.drm.DefaultDrmSession.this     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                com.google.android.exoplayer2.drm.m r0 = r0.e     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r1 = r7
                java.lang.Object r1 = r1.f20858d     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                com.google.android.exoplayer2.drm.i$e r1 = (com.google.android.exoplayer2.drm.i.e) r1     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                byte[] r0 = r0.a(r1)     // Catch: Exception -> 0x005a, MediaDrmCallbackException -> 0x0068
                r9 = r0
                goto L_0x0079
            L_0x005a:
                r9 = move-exception
                java.lang.String r0 = "DefaultDrmSession"
                java.lang.String r1 = "Key/provisioning request produced an unexpected exception. Not retrying."
                r2 = r9
                com.google.android.exoplayer2.util.n.a(r0, r1, r2)
                goto L_0x0079
            L_0x0068:
                r10 = move-exception
                r0 = r10
                r9 = r0
                r0 = r5
                r1 = r6
                r2 = r10
                boolean r0 = r0.a(r1, r2)
                if (r0 == 0) goto L_0x0079
                return
            L_0x0079:
                r0 = r5
                monitor-enter(r0)
                r0 = r5
                boolean r0 = r0.f20854b     // Catch: all -> 0x009f
                if (r0 != 0) goto L_0x009c
                r0 = r5
                com.google.android.exoplayer2.drm.DefaultDrmSession r0 = com.google.android.exoplayer2.drm.DefaultDrmSession.this     // Catch: all -> 0x009f
                com.google.android.exoplayer2.drm.DefaultDrmSession$e r0 = r0.g     // Catch: all -> 0x009f
                r1 = r6
                int r1 = r1.what     // Catch: all -> 0x009f
                r2 = r7
                java.lang.Object r2 = r2.f20858d     // Catch: all -> 0x009f
                r3 = r9
                android.util.Pair r2 = android.util.Pair.create(r2, r3)     // Catch: all -> 0x009f
                android.os.Message r0 = r0.obtainMessage(r1, r2)     // Catch: all -> 0x009f
                r0.sendToTarget()     // Catch: all -> 0x009f
            L_0x009c:
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x009f
                return
            L_0x009f:
                r6 = move-exception
                r0 = r5
                monitor-exit(r0)     // Catch: all -> 0x009f
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSession.c.handleMessage(android.os.Message):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f20855a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f20856b;

        /* renamed from: c  reason: collision with root package name */
        public final long f20857c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f20858d;
        public int e;

        public d(long j, boolean z, long j2, Object obj) {
            this.f20855a = j;
            this.f20856b = z;
            this.f20857c = j2;
            this.f20858d = obj;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$e.class */
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
                if (obj != defaultDrmSession.j) {
                    return;
                }
                if (defaultDrmSession.h == 2 || defaultDrmSession.i()) {
                    defaultDrmSession.j = null;
                    if (obj2 instanceof Exception) {
                        defaultDrmSession.f20851c.a((Exception) obj2);
                        return;
                    }
                    try {
                        defaultDrmSession.f20850b.b((byte[]) obj2);
                        defaultDrmSession.f20851c.a();
                    } catch (Exception e) {
                        defaultDrmSession.f20851c.a(e);
                    }
                }
            } else if (i == 1) {
                DefaultDrmSession.a(DefaultDrmSession.this, obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, i iVar, a aVar, b bVar, List<DrmInitData.SchemeData> list, int i, boolean z, boolean z2, byte[] bArr, HashMap<String, String> hashMap, m mVar, Looper looper, r rVar) {
        if (i == 1 || i == 3) {
            com.google.android.exoplayer2.util.a.b(bArr);
        }
        this.f = uuid;
        this.f20851c = aVar;
        this.k = bVar;
        this.f20850b = iVar;
        this.l = i;
        this.m = z;
        this.n = z2;
        if (bArr != null) {
            this.v = bArr;
            this.f20849a = null;
        } else {
            this.f20849a = Collections.unmodifiableList((List) com.google.android.exoplayer2.util.a.b(list));
        }
        this.o = hashMap;
        this.e = mVar;
        this.p = new h<>();
        this.f20852d = rVar;
        this.h = 2;
        this.g = new e(looper);
    }

    static /* synthetic */ void a(DefaultDrmSession defaultDrmSession, Object obj, Object obj2) {
        if (obj == defaultDrmSession.w && defaultDrmSession.i()) {
            defaultDrmSession.w = null;
            if (obj2 instanceof Exception) {
                defaultDrmSession.b((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (defaultDrmSession.l == 3) {
                    defaultDrmSession.f20850b.a((byte[]) af.a(defaultDrmSession.v), bArr);
                    defaultDrmSession.a((g<c.a>) _$$Lambda$VZ6A8KvuSL1_iB_UH1zS4FgEQRQ.INSTANCE);
                    return;
                }
                byte[] a2 = defaultDrmSession.f20850b.a(defaultDrmSession.i, bArr);
                int i = defaultDrmSession.l;
                if (!((i != 2 && (i != 0 || defaultDrmSession.v == null)) || a2 == null || a2.length == 0)) {
                    defaultDrmSession.v = a2;
                }
                defaultDrmSession.h = 4;
                defaultDrmSession.a((g<c.a>) _$$Lambda$iT40BaC8R1C1PudyXRQOrznapKo.INSTANCE);
            } catch (Exception e2) {
                defaultDrmSession.b(e2);
            }
        }
    }

    private void a(g<c.a> gVar) {
        for (c.a aVar : this.p.a()) {
            gVar.accept(aVar);
        }
    }

    private void a(byte[] bArr, int i, boolean z) {
        try {
            this.w = this.f20850b.a(bArr, this.f20849a, i, this.o);
            ((c) af.a(this.s)).a(1, com.google.android.exoplayer2.util.a.b(this.w), z);
        } catch (Exception e2) {
            b(e2);
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean a(boolean z) {
        if (i()) {
            return true;
        }
        try {
            byte[] a2 = this.f20850b.a();
            this.i = a2;
            this.t = this.f20850b.d(a2);
            a((g<c.a>) _$$Lambda$AgZw6lXSM3NelSMijejozKdVtsY.INSTANCE);
            this.h = 3;
            com.google.android.exoplayer2.util.a.b(this.i);
            return true;
        } catch (NotProvisionedException e2) {
            if (z) {
                this.f20851c.a(this);
                return false;
            }
            c(e2);
            return false;
        } catch (Exception e3) {
            c(e3);
            return false;
        }
    }

    private void b(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f20851c.a(this);
        } else {
            c(exc);
        }
    }

    @RequiresNonNull({"sessionId"})
    private void b(boolean z) {
        if (!this.n) {
            byte[] bArr = (byte[]) af.a(this.i);
            int i = this.l;
            if (i == 0 || i == 1) {
                if (this.v == null) {
                    a(bArr, 1, z);
                } else if (this.h == 4 || j()) {
                    long k = k();
                    if (this.l == 0 && k <= 60) {
                        "Offline license has expired or will expire soon. Remaining seconds: ".concat(String.valueOf(k));
                        n.a();
                        a(bArr, 2, z);
                    } else if (k <= 0) {
                        c(new KeysExpiredException());
                    } else {
                        this.h = 4;
                        a((g<c.a>) _$$Lambda$U8qeknleCxFbK_h3oaMhp6RiXnU.INSTANCE);
                    }
                }
            } else if (i != 2) {
                if (i == 3) {
                    com.google.android.exoplayer2.util.a.b(this.v);
                    com.google.android.exoplayer2.util.a.b(this.i);
                    if (j()) {
                        a(this.v, 3, z);
                    }
                }
            } else if (this.v == null || j()) {
                a(bArr, 2, z);
            }
        }
    }

    private void c(final Exception exc) {
        this.u = new DrmSession.DrmSessionException(exc);
        a(new g() { // from class: com.google.android.exoplayer2.drm._$$Lambda$DefaultDrmSession$RctFRSBQW9Uk48uBibAqq4BGsyk
            @Override // com.google.android.exoplayer2.util.g
            public final void accept(Object obj) {
                ((c.a) obj).a(exc);
            }
        });
        if (this.h != 4) {
            this.h = 1;
        }
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    private boolean j() {
        try {
            this.f20850b.b(this.i, this.v);
            return true;
        } catch (Exception e2) {
            n.b("DefaultDrmSession", "Error trying to restore keys.", e2);
            c(e2);
            return false;
        }
    }

    private long k() {
        if (!f.f21362d.equals(this.f)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) com.google.android.exoplayer2.util.a.b(o.a(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    public final void a() {
        this.j = this.f20850b.b();
        ((c) af.a(this.s)).a(0, com.google.android.exoplayer2.util.a.b(this.j), true);
    }

    public final void a(int i) {
        if (i == 2 && this.l == 0 && this.h == 4) {
            af.a(this.i);
            b(false);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final void a(c.a aVar) {
        boolean z = false;
        com.google.android.exoplayer2.util.a.b(this.q >= 0);
        if (aVar != null) {
            h<c.a> hVar = this.p;
            synchronized (hVar.f22292a) {
                ArrayList arrayList = new ArrayList(hVar.f22295d);
                arrayList.add(aVar);
                hVar.f22295d = Collections.unmodifiableList(arrayList);
                Integer num = hVar.f22293b.get(aVar);
                if (num == null) {
                    HashSet hashSet = new HashSet(hVar.f22294c);
                    hashSet.add(aVar);
                    hVar.f22294c = Collections.unmodifiableSet(hashSet);
                }
                hVar.f22293b.put(aVar, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
            }
        }
        int i = this.q + 1;
        this.q = i;
        if (i == 1) {
            if (this.h == 2) {
                z = true;
            }
            com.google.android.exoplayer2.util.a.b(z);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.r = handlerThread;
            handlerThread.start();
            this.s = new c(this.r.getLooper());
            if (a(true)) {
                b(true);
            }
        } else if (aVar != null && i()) {
            aVar.a();
        }
        this.k.a(this);
    }

    public final void a(Exception exc) {
        c(exc);
    }

    public final void b() {
        if (a(false)) {
            b(true);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final void b(c.a aVar) {
        com.google.android.exoplayer2.util.a.b(this.q > 0);
        int i = this.q - 1;
        this.q = i;
        if (i == 0) {
            this.h = 0;
            ((e) af.a(this.g)).removeCallbacksAndMessages(null);
            ((c) af.a(this.s)).a();
            this.s = null;
            ((HandlerThread) af.a(this.r)).quit();
            this.r = null;
            this.t = null;
            this.u = null;
            this.w = null;
            this.j = null;
            byte[] bArr = this.i;
            if (bArr != null) {
                this.f20850b.a(bArr);
                this.i = null;
            }
            a((g<c.a>) _$$Lambda$S7cFD2HB3LdrN5vmqtj_IkU8VZ0.INSTANCE);
        }
        if (aVar != null) {
            if (i()) {
                aVar.e();
            }
            h<c.a> hVar = this.p;
            synchronized (hVar.f22292a) {
                Integer num = hVar.f22293b.get(aVar);
                if (num != null) {
                    ArrayList arrayList = new ArrayList(hVar.f22295d);
                    arrayList.remove(aVar);
                    hVar.f22295d = Collections.unmodifiableList(arrayList);
                    if (num.intValue() == 1) {
                        hVar.f22293b.remove(aVar);
                        HashSet hashSet = new HashSet(hVar.f22294c);
                        hashSet.remove(aVar);
                        hVar.f22294c = Collections.unmodifiableSet(hashSet);
                    } else {
                        hVar.f22293b.put(aVar, Integer.valueOf(num.intValue() - 1));
                    }
                }
            }
        }
        this.k.a(this, this.q);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int c() {
        return this.h;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final boolean d() {
        return this.m;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final DrmSession.DrmSessionException e() {
        if (this.h == 1) {
            return this.u;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID f() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final h g() {
        return this.t;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final Map<String, String> h() {
        byte[] bArr = this.i;
        if (bArr == null) {
            return null;
        }
        return this.f20850b.c(bArr);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    final boolean i() {
        int i = this.h;
        return i == 3 || i == 4;
    }
}

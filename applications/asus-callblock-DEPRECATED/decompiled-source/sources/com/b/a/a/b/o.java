package com.b.a.a.b;

import b.e;
import b.f;
import b.k;
import com.b.a.a.b.b;
import com.b.a.a.c;
import com.b.a.a.h;
import com.b.a.t;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/b/a/a/b/o.class */
public final class o implements Closeable {
    static final /* synthetic */ boolean k;
    private static final ExecutorService l;

    /* renamed from: a  reason: collision with root package name */
    public final t f3264a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f3265b;
    long c;
    long d;
    public final m e;
    final m f;
    final q g;
    final Socket h;
    public final c i;
    final b j;
    private final i m;
    private final Map<Integer, p> n;
    private final String o;
    private int p;
    private int q;
    private boolean r;
    private long s;
    private final ExecutorService t;
    private Map<Integer, k> u;
    private final l v;
    private int w;
    private boolean x;
    private final Set<Integer> y;

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/o$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f3273a;

        /* renamed from: b  reason: collision with root package name */
        Socket f3274b;
        i c = i.f3249a;
        public t d = t.SPDY_3;
        l e = l.f3256a;
        boolean f = true;

        public a(String str, Socket socket) {
            this.f3273a = str;
            this.f3274b = socket;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/b/a/a/b/o$b.class */
    final class b extends c implements b.a {

        /* renamed from: b  reason: collision with root package name */
        com.b.a.a.b.b f3275b;

        private b() {
            super("OkHttp %s", o.this.o);
        }

        /* synthetic */ b(o oVar, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.b.a.a.c
        public final void a() {
            Throwable th;
            com.b.a.a.b.a aVar = com.b.a.a.b.a.INTERNAL_ERROR;
            com.b.a.a.b.a aVar2 = com.b.a.a.b.a.INTERNAL_ERROR;
            com.b.a.a.b.a aVar3 = aVar;
            aVar3 = aVar;
            try {
                try {
                    this.f3275b = o.this.g.a(k.a(k.b(o.this.h)), o.this.f3265b);
                    if (!o.this.f3265b) {
                        this.f3275b.a();
                    }
                    do {
                    } while (this.f3275b.a(this));
                    com.b.a.a.b.a aVar4 = com.b.a.a.b.a.NO_ERROR;
                    aVar3 = aVar4;
                    aVar3 = aVar4;
                    try {
                        o.this.a(aVar4, com.b.a.a.b.a.CANCEL);
                    } catch (IOException e) {
                    }
                    h.a(this.f3275b);
                } catch (IOException e2) {
                    aVar3 = com.b.a.a.b.a.PROTOCOL_ERROR;
                    try {
                        try {
                            o.this.a(aVar3, com.b.a.a.b.a.PROTOCOL_ERROR);
                        } catch (IOException e3) {
                        }
                        h.a(this.f3275b);
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            o.this.a(aVar3, aVar2);
                        } catch (IOException e4) {
                        }
                        h.a(this.f3275b);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                o.this.a(aVar3, aVar2);
                h.a(this.f3275b);
                throw th;
            }
        }

        @Override // com.b.a.a.b.b.a
        public final void a(int i, long j) {
            if (i == 0) {
                synchronized (o.this) {
                    o.this.d += j;
                    o.this.notifyAll();
                }
                return;
            }
            p a2 = o.this.a(i);
            if (a2 != null) {
                synchronized (a2) {
                    a2.a(j);
                }
            }
        }

        @Override // com.b.a.a.b.b.a
        public final void a(int i, f fVar) {
            p[] pVarArr;
            byte[] bArr = fVar.c;
            synchronized (o.this) {
                pVarArr = (p[]) o.this.n.values().toArray(new p[o.this.n.size()]);
                o.this.r = true;
            }
            for (p pVar : pVarArr) {
                if (pVar.c > i && pVar.b()) {
                    pVar.c(com.b.a.a.b.a.REFUSED_STREAM);
                    o.this.b(pVar.c);
                }
            }
        }

        @Override // com.b.a.a.b.b.a
        public final void a(int i, com.b.a.a.b.a aVar) {
            if (o.a(o.this, i)) {
                o.a(o.this, i, aVar);
                return;
            }
            p b2 = o.this.b(i);
            if (b2 != null) {
                b2.c(aVar);
            }
        }

        @Override // com.b.a.a.b.b.a
        public final void a(int i, List<d> list) {
            o.a(o.this, i, list);
        }

        @Override // com.b.a.a.b.b.a
        public final void a(boolean z, int i, int i2) {
            if (z) {
                k c = o.this.c(i);
                if (c == null) {
                    return;
                }
                if (c.c != -1 || c.f3255b == -1) {
                    throw new IllegalStateException();
                }
                c.c = System.nanoTime();
                c.f3254a.countDown();
                return;
            }
            o.a(o.this, i, i2);
        }

        @Override // com.b.a.a.b.b.a
        public final void a(boolean z, int i, e eVar, int i2) {
            if (o.a(o.this, i)) {
                o.a(o.this, i, eVar, i2, z);
                return;
            }
            p a2 = o.this.a(i);
            if (a2 == null) {
                o.this.a(i, com.b.a.a.b.a.INVALID_STREAM);
                eVar.g(i2);
            } else if (p.i || !Thread.holdsLock(a2)) {
                a2.f.a(eVar, i2);
                if (z) {
                    a2.e();
                }
            } else {
                throw new AssertionError();
            }
        }

        @Override // com.b.a.a.b.b.a
        public final void a(boolean z, final m mVar) {
            p[] pVarArr;
            long j;
            synchronized (o.this) {
                int b2 = o.this.f.b();
                if (z) {
                    m mVar2 = o.this.f;
                    mVar2.c = 0;
                    mVar2.f3258b = 0;
                    mVar2.f3257a = 0;
                    Arrays.fill(mVar2.d, 0);
                }
                m mVar3 = o.this.f;
                for (int i = 0; i < 10; i++) {
                    if (mVar.a(i)) {
                        mVar3.a(i, mVar.b(i), mVar.d[i]);
                    }
                }
                if (o.this.f3264a == t.HTTP_2) {
                    o.l.execute(new c("OkHttp %s ACK Settings", new Object[]{o.this.o}) { // from class: com.b.a.a.b.o.b.2
                        @Override // com.b.a.a.c
                        public final void a() {
                            try {
                                o.this.i.a(mVar);
                            } catch (IOException e) {
                            }
                        }
                    });
                }
                int b3 = o.this.f.b();
                if (b3 == -1 || b3 == b2) {
                    pVarArr = null;
                    j = 0;
                } else {
                    j = b3 - b2;
                    if (!o.this.x) {
                        o oVar = o.this;
                        oVar.d += j;
                        if (j > 0) {
                            oVar.notifyAll();
                        }
                        o.this.x = true;
                    }
                    pVarArr = !o.this.n.isEmpty() ? (p[]) o.this.n.values().toArray(new p[o.this.n.size()]) : null;
                }
            }
            if (!(pVarArr == null || j == 0)) {
                for (p pVar : pVarArr) {
                    synchronized (pVar) {
                        pVar.a(j);
                    }
                }
            }
        }

        @Override // com.b.a.a.b.b.a
        public final void a(boolean z, boolean z2, int i, List<d> list, e eVar) {
            boolean z3;
            com.b.a.a.b.a aVar;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            if (o.a(o.this, i)) {
                o.a(o.this, i, list, z2);
                return;
            }
            synchronized (o.this) {
                if (!o.this.r) {
                    p a2 = o.this.a(i);
                    if (a2 == null) {
                        if (eVar == e.SPDY_REPLY || eVar == e.SPDY_HEADERS) {
                            z6 = true;
                        }
                        if (z6) {
                            o.this.a(i, com.b.a.a.b.a.INVALID_STREAM);
                        } else if (i > o.this.p) {
                            if (i % 2 != o.this.q % 2) {
                                final p pVar = new p(i, o.this, z, z2, list);
                                o.this.p = i;
                                o.this.n.put(Integer.valueOf(i), pVar);
                                o.l.execute(new c("OkHttp %s stream %d", new Object[]{o.this.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.b.1
                                    @Override // com.b.a.a.c
                                    public final void a() {
                                        try {
                                            o.this.m.a(pVar);
                                        } catch (IOException e) {
                                            throw new RuntimeException(e);
                                        }
                                    }
                                });
                            }
                        }
                    } else {
                        if (eVar == e.SPDY_SYN_STREAM) {
                            a2.b(com.b.a.a.b.a.PROTOCOL_ERROR);
                            o.this.b(i);
                        } else if (p.i || !Thread.holdsLock(a2)) {
                            synchronized (a2) {
                                if (a2.e == null) {
                                    if (eVar == e.SPDY_HEADERS) {
                                        z4 = true;
                                    }
                                    if (z4) {
                                        aVar = com.b.a.a.b.a.PROTOCOL_ERROR;
                                        z3 = true;
                                    } else {
                                        a2.e = list;
                                        z3 = a2.a();
                                        a2.notifyAll();
                                        aVar = null;
                                    }
                                } else {
                                    if (eVar == e.SPDY_REPLY) {
                                        z5 = true;
                                    }
                                    if (z5) {
                                        aVar = com.b.a.a.b.a.STREAM_IN_USE;
                                        z3 = true;
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.addAll(a2.e);
                                        arrayList.addAll(list);
                                        a2.e = arrayList;
                                        z3 = true;
                                        aVar = null;
                                    }
                                }
                            }
                            if (aVar != null) {
                                a2.b(aVar);
                            } else if (!z3) {
                                a2.d.b(a2.c);
                            }
                            if (z2) {
                                a2.e();
                            }
                        } else {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
    }

    static {
        k = !o.class.desiredAssertionStatus();
        l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), h.b("OkHttp SpdyConnection"));
    }

    private o(a aVar) {
        int i = 2;
        this.n = new HashMap();
        this.s = System.nanoTime();
        this.c = 0L;
        this.e = new m();
        this.f = new m();
        this.x = false;
        this.y = new LinkedHashSet();
        this.f3264a = aVar.d;
        this.v = aVar.e;
        this.f3265b = aVar.f;
        this.m = aVar.c;
        this.q = aVar.f ? 1 : 2;
        if (aVar.f && this.f3264a == t.HTTP_2) {
            this.q += 2;
        }
        this.w = aVar.f ? 1 : i;
        if (aVar.f) {
            this.e.a(7, 0, 16777216);
        }
        this.o = aVar.f3273a;
        if (this.f3264a == t.HTTP_2) {
            this.g = new g();
            this.t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), h.b(String.format("OkHttp %s Push Observer", this.o)));
            this.f.a(7, 0, 65535);
            this.f.a(5, 0, 16384);
        } else if (this.f3264a == t.SPDY_3) {
            this.g = new n();
            this.t = null;
        } else {
            throw new AssertionError(this.f3264a);
        }
        this.d = this.f.b();
        this.h = aVar.f3274b;
        this.i = this.g.a(k.a(k.a(aVar.f3274b)), this.f3265b);
        this.j = new b(this, (byte) 0);
        new Thread(this.j).start();
    }

    public /* synthetic */ o(a aVar, byte b2) {
        this(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.b.a.a.b.a aVar, com.b.a.a.b.a aVar2) {
        p[] pVarArr;
        k[] kVarArr;
        IOException e;
        if (k || !Thread.holdsLock(this)) {
            try {
                synchronized (this.i) {
                    synchronized (this) {
                        if (this.r) {
                            e = null;
                        } else {
                            this.r = true;
                            this.i.a(this.p, aVar, h.f3301a);
                            e = null;
                        }
                    }
                }
            } catch (IOException e2) {
                e = e2;
            }
            synchronized (this) {
                if (!this.n.isEmpty()) {
                    pVarArr = (p[]) this.n.values().toArray(new p[this.n.size()]);
                    this.n.clear();
                    a(false);
                } else {
                    pVarArr = null;
                }
                if (this.u != null) {
                    kVarArr = (k[]) this.u.values().toArray(new k[this.u.size()]);
                    this.u = null;
                } else {
                    kVarArr = null;
                }
            }
            IOException iOException = e;
            if (pVarArr != null) {
                for (p pVar : pVarArr) {
                    try {
                        pVar.a(aVar2);
                        e = e;
                    } catch (IOException e3) {
                        e = e3;
                        e = e;
                        if (e != null) {
                        }
                    }
                }
                iOException = e;
            }
            if (kVarArr != null) {
                for (k kVar : kVarArr) {
                    if (kVar.c != -1 || kVar.f3255b == -1) {
                        throw new IllegalStateException();
                    }
                    kVar.c = kVar.f3255b - 1;
                    kVar.f3254a.countDown();
                }
            }
            try {
                this.i.close();
                e = iOException;
            } catch (IOException e4) {
                e = e4;
                if (iOException != null) {
                    e = iOException;
                }
            }
            try {
                this.h.close();
            } catch (IOException e5) {
                e = e5;
            }
            if (e != null) {
                throw e;
            }
            return;
        }
        throw new AssertionError();
    }

    static /* synthetic */ void a(o oVar, final int i, final int i2) {
        l.execute(new c("OkHttp %s ping %08x%08x", new Object[]{oVar.o, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: com.b.a.a.b.o.3

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f3268b = true;
            final /* synthetic */ k e = null;

            @Override // com.b.a.a.c
            public final void a() {
                try {
                    o.a(o.this, this.f3268b, i, i2, this.e);
                } catch (IOException e) {
                }
            }
        });
    }

    static /* synthetic */ void a(o oVar, final int i, e eVar, final int i2, final boolean z) {
        final b.c cVar = new b.c();
        eVar.a(i2);
        eVar.a(cVar, i2);
        if (cVar.f318b != i2) {
            throw new IOException(cVar.f318b + " != " + i2);
        }
        oVar.t.execute(new c("OkHttp %s Push Data[%s]", new Object[]{oVar.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.6
            @Override // com.b.a.a.c
            public final void a() {
                try {
                    o.this.v.a(cVar, i2);
                    o.this.i.a(i, com.b.a.a.b.a.CANCEL);
                    synchronized (o.this) {
                        o.this.y.remove(Integer.valueOf(i));
                    }
                } catch (IOException e) {
                }
            }
        });
    }

    static /* synthetic */ void a(o oVar, final int i, final com.b.a.a.b.a aVar) {
        oVar.t.execute(new c("OkHttp %s Push Reset[%s]", new Object[]{oVar.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.7
            @Override // com.b.a.a.c
            public final void a() {
                o.this.v.c();
                synchronized (o.this) {
                    o.this.y.remove(Integer.valueOf(i));
                }
            }
        });
    }

    static /* synthetic */ void a(o oVar, final int i, final List list) {
        synchronized (oVar) {
            if (oVar.y.contains(Integer.valueOf(i))) {
                oVar.a(i, com.b.a.a.b.a.PROTOCOL_ERROR);
                return;
            }
            oVar.y.add(Integer.valueOf(i));
            oVar.t.execute(new c("OkHttp %s Push Request[%s]", new Object[]{oVar.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.4
                @Override // com.b.a.a.c
                public final void a() {
                    o.this.v.a();
                    try {
                        o.this.i.a(i, com.b.a.a.b.a.CANCEL);
                        synchronized (o.this) {
                            o.this.y.remove(Integer.valueOf(i));
                        }
                    } catch (IOException e) {
                    }
                }
            });
        }
    }

    static /* synthetic */ void a(o oVar, final int i, final List list, final boolean z) {
        oVar.t.execute(new c("OkHttp %s Push Headers[%s]", new Object[]{oVar.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.5
            @Override // com.b.a.a.c
            public final void a() {
                o.this.v.b();
                try {
                    o.this.i.a(i, com.b.a.a.b.a.CANCEL);
                    synchronized (o.this) {
                        o.this.y.remove(Integer.valueOf(i));
                    }
                } catch (IOException e) {
                }
            }
        });
    }

    static /* synthetic */ void a(o oVar, boolean z, int i, int i2, k kVar) {
        synchronized (oVar.i) {
            if (kVar != null) {
                if (kVar.f3255b != -1) {
                    throw new IllegalStateException();
                }
                kVar.f3255b = System.nanoTime();
            }
            oVar.i.a(z, i, i2);
        }
    }

    private void a(boolean z) {
        synchronized (this) {
            this.s = z ? System.nanoTime() : Long.MAX_VALUE;
        }
    }

    static /* synthetic */ boolean a(o oVar, int i) {
        return oVar.f3264a == t.HTTP_2 && i != 0 && (i & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k c(int i) {
        k remove;
        synchronized (this) {
            remove = this.u != null ? this.u.remove(Integer.valueOf(i)) : null;
        }
        return remove;
    }

    final p a(int i) {
        p pVar;
        synchronized (this) {
            pVar = this.n.get(Integer.valueOf(i));
        }
        return pVar;
    }

    public final p a(List<d> list, boolean z) {
        int i;
        p pVar;
        boolean z2 = false;
        if (!z) {
            z2 = true;
        }
        synchronized (this.i) {
            synchronized (this) {
                if (this.r) {
                    throw new IOException("shutdown");
                }
                i = this.q;
                this.q += 2;
                pVar = new p(i, this, z2, false, list);
                if (pVar.a()) {
                    this.n.put(Integer.valueOf(i), pVar);
                    a(false);
                }
            }
            this.i.a(z2, i, list);
        }
        if (!z) {
            this.i.b();
        }
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final long j) {
        l.execute(new c("OkHttp Window Update %s stream %d", new Object[]{this.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.2
            @Override // com.b.a.a.c
            public final void a() {
                try {
                    o.this.i.a(i, j);
                } catch (IOException e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final com.b.a.a.b.a aVar) {
        l.submit(new c("OkHttp %s stream %d", new Object[]{this.o, Integer.valueOf(i)}) { // from class: com.b.a.a.b.o.1
            @Override // com.b.a.a.c
            public final void a() {
                try {
                    o.this.b(i, aVar);
                } catch (IOException e) {
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r7, boolean r8, b.c r9, long r10) {
        /*
            r6 = this;
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0068
            r0 = r6
            com.b.a.a.b.c r0 = r0.i
            r1 = r8
            r2 = r7
            r3 = r9
            r4 = 0
            r0.a(r1, r2, r3, r4)
        L_0x0018:
            return
        L_0x0019:
            r0 = r12
            r1 = r6
            long r1 = r1.d     // Catch: all -> 0x008c
            long r0 = java.lang.Math.min(r0, r1)     // Catch: all -> 0x008c
            int r0 = (int) r0     // Catch: all -> 0x008c
            r1 = r6
            com.b.a.a.b.c r1 = r1.i     // Catch: all -> 0x008c
            int r1 = r1.c()     // Catch: all -> 0x008c
            int r0 = java.lang.Math.min(r0, r1)     // Catch: all -> 0x008c
            r14 = r0
            r0 = r6
            r1 = r6
            long r1 = r1.d     // Catch: all -> 0x008c
            r2 = r14
            long r2 = (long) r2     // Catch: all -> 0x008c
            long r1 = r1 - r2
            r0.d = r1     // Catch: all -> 0x008c
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x008c
            r0 = r12
            r1 = r14
            long r1 = (long) r1
            long r0 = r0 - r1
            r12 = r0
            r0 = r6
            com.b.a.a.b.c r0 = r0.i
            r15 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0091
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0091
            r0 = 1
            r16 = r0
        L_0x005b:
            r0 = r15
            r1 = r16
            r2 = r7
            r3 = r9
            r4 = r14
            r0.a(r1, r2, r3, r4)
        L_0x0068:
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0018
            r0 = r6
            monitor-enter(r0)
        L_0x0071:
            r0 = r6
            long r0 = r0.d     // Catch: InterruptedException -> 0x0081, all -> 0x008c
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0019
            r0 = r6
            r0.wait()     // Catch: InterruptedException -> 0x0081, all -> 0x008c
            goto L_0x0071
        L_0x0081:
            r9 = move-exception
            java.io.InterruptedIOException r0 = new java.io.InterruptedIOException     // Catch: all -> 0x008c
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: all -> 0x008c
            r0 = r9
            throw r0     // Catch: all -> 0x008c
        L_0x008c:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x008c
            r0 = r9
            throw r0
        L_0x0091:
            r0 = 0
            r16 = r0
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.b.o.a(int, boolean, b.c, long):void");
    }

    public final boolean a() {
        boolean z;
        synchronized (this) {
            z = this.s != Long.MAX_VALUE;
        }
        return z;
    }

    public final long b() {
        long j;
        synchronized (this) {
            j = this.s;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p b(int i) {
        p remove;
        synchronized (this) {
            remove = this.n.remove(Integer.valueOf(i));
            if (remove != null && this.n.isEmpty()) {
                a(true);
            }
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i, com.b.a.a.b.a aVar) {
        this.i.a(i, aVar);
    }

    public final void c() {
        this.i.b();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(com.b.a.a.b.a.NO_ERROR, com.b.a.a.b.a.CANCEL);
    }
}

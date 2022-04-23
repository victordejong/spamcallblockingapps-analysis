package com.bytedance.sdk.a.b.a.e;

import android.os.SystemClock;
import com.bytedance.sdk.a.a.d;
import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.f;
import com.bytedance.sdk.a.b.a.e.h;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g.class */
public final class g implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static final ExecutorService f7949a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.bytedance.sdk.a.b.a.c.a("OkHttp Http2Connection", true));
    static final /* synthetic */ boolean s = true;

    /* renamed from: b  reason: collision with root package name */
    final boolean f7950b;

    /* renamed from: c  reason: collision with root package name */
    final b f7951c;
    final String e;
    int f;
    int g;
    boolean h;
    final m i;
    long k;
    final n m;
    final Socket o;
    final j p;
    final c q;
    private final ExecutorService t;
    private Map<Integer, l> u;
    private int v;

    /* renamed from: d  reason: collision with root package name */
    final Map<Integer, i> f7952d = new LinkedHashMap();
    long j = 0;
    n l = new n();
    boolean n = false;
    final Set<Integer> r = new LinkedHashSet();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        Socket f7974a;

        /* renamed from: b  reason: collision with root package name */
        String f7975b;

        /* renamed from: c  reason: collision with root package name */
        e f7976c;

        /* renamed from: d  reason: collision with root package name */
        d f7977d;
        b e = b.f;
        m f = m.f8020a;
        boolean g;

        public a(boolean z) {
            this.g = z;
        }

        public a a(b bVar) {
            this.e = bVar;
            return this;
        }

        public a a(Socket socket, String str, e eVar, d dVar) {
            this.f7974a = socket;
            this.f7975b = str;
            this.f7976c = eVar;
            this.f7977d = dVar;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g$b.class */
    public static abstract class b {
        public static final b f = new b() { // from class: com.bytedance.sdk.a.b.a.e.g.b.1
            @Override // com.bytedance.sdk.a.b.a.e.g.b
            public final void a(i iVar) throws IOException {
                iVar.a(com.bytedance.sdk.a.b.a.e.b.REFUSED_STREAM);
            }
        };

        public void a(g gVar) {
        }

        public abstract void a(i iVar) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/g$c.class */
    public class c extends com.bytedance.sdk.a.b.a.b implements h.b {

        /* renamed from: a  reason: collision with root package name */
        final h f7978a;

        c(h hVar) {
            super("OkHttp %s", g.this.e);
            this.f7978a = hVar;
        }

        private void a(final n nVar) {
            g.f7949a.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s ACK Settings", new Object[]{g.this.e}) { // from class: com.bytedance.sdk.a.b.a.e.g.c.3
                @Override // com.bytedance.sdk.a.b.a.b
                public void b() {
                    try {
                        g.this.p.a(nVar);
                    } catch (IOException e) {
                    }
                }
            });
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a() {
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(int i, int i2, int i3, boolean z) {
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(int i, int i2, List<com.bytedance.sdk.a.b.a.e.c> list) {
            g.this.a(i2, list);
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(int i, long j) {
            if (i == 0) {
                synchronized (g.this) {
                    g.this.k += j;
                    g.this.notifyAll();
                }
                return;
            }
            i a2 = g.this.a(i);
            if (a2 != null) {
                synchronized (a2) {
                    a2.a(j);
                }
            }
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(int i, com.bytedance.sdk.a.b.a.e.b bVar) {
            if (g.this.d(i)) {
                g.this.c(i, bVar);
                return;
            }
            i b2 = g.this.b(i);
            if (b2 != null) {
                b2.c(bVar);
            }
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(int i, com.bytedance.sdk.a.b.a.e.b bVar, f fVar) {
            i[] iVarArr;
            fVar.g();
            synchronized (g.this) {
                iVarArr = (i[]) g.this.f7952d.values().toArray(new i[g.this.f7952d.size()]);
                g.this.h = true;
            }
            for (i iVar : iVarArr) {
                if (iVar.a() > i && iVar.c()) {
                    iVar.c(com.bytedance.sdk.a.b.a.e.b.REFUSED_STREAM);
                    g.this.b(iVar.a());
                }
            }
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(boolean z, int i, int i2) {
            if (z) {
                l c2 = g.this.c(i);
                if (c2 != null) {
                    c2.b();
                    return;
                }
                return;
            }
            g.this.a(true, i, i2, (l) null);
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(boolean z, int i, int i2, List<com.bytedance.sdk.a.b.a.e.c> list) {
            if (g.this.d(i)) {
                g.this.a(i, list, z);
                return;
            }
            synchronized (g.this) {
                i a2 = g.this.a(i);
                if (a2 != null) {
                    a2.a(list);
                    if (z) {
                        a2.i();
                    }
                } else if (!g.this.h) {
                    if (i > g.this.f) {
                        if (i % 2 != g.this.g % 2) {
                            final i iVar = new i(i, g.this, false, z, list);
                            g.this.f = i;
                            g.this.f7952d.put(Integer.valueOf(i), iVar);
                            g.f7949a.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s stream %d", new Object[]{g.this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.c.1
                                @Override // com.bytedance.sdk.a.b.a.b
                                public void b() {
                                    try {
                                        g.this.f7951c.a(iVar);
                                    } catch (IOException e) {
                                        com.bytedance.sdk.a.b.a.g.e b2 = com.bytedance.sdk.a.b.a.g.e.b();
                                        b2.a(4, "Http2Connection.Listener failure for " + g.this.e, e);
                                        try {
                                            iVar.a(com.bytedance.sdk.a.b.a.e.b.PROTOCOL_ERROR);
                                        } catch (IOException e2) {
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }

        @Override // com.bytedance.sdk.a.b.a.e.h.b
        public void a(boolean z, int i, e eVar, int i2) throws IOException {
            if (g.this.d(i)) {
                g.this.a(i, eVar, i2, z);
                return;
            }
            i a2 = g.this.a(i);
            if (a2 == null) {
                g.this.a(i, com.bytedance.sdk.a.b.a.e.b.PROTOCOL_ERROR);
                eVar.h(i2);
                return;
            }
            a2.a(eVar, i2);
            if (z) {
                a2.i();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r16v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.bytedance.sdk.a.b.a.e.h.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(boolean r9, com.bytedance.sdk.a.b.a.e.n r10) {
            /*
                Method dump skipped, instructions count: 280
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.e.g.c.a(boolean, com.bytedance.sdk.a.b.a.e.n):void");
        }

        @Override // com.bytedance.sdk.a.b.a.b
        public void b() {
            com.bytedance.sdk.a.b.a.e.b bVar;
            g gVar;
            com.bytedance.sdk.a.b.a.e.b bVar2 = com.bytedance.sdk.a.b.a.e.b.INTERNAL_ERROR;
            com.bytedance.sdk.a.b.a.e.b bVar3 = com.bytedance.sdk.a.b.a.e.b.INTERNAL_ERROR;
            com.bytedance.sdk.a.b.a.e.b bVar4 = bVar2;
            com.bytedance.sdk.a.b.a.e.b bVar5 = bVar2;
            try {
                try {
                    try {
                        this.f7978a.a(this);
                        do {
                        } while (this.f7978a.a(false, (h.b) this));
                        bVar = com.bytedance.sdk.a.b.a.e.b.NO_ERROR;
                        bVar4 = bVar;
                        bVar5 = bVar;
                        bVar4 = com.bytedance.sdk.a.b.a.e.b.CANCEL;
                        gVar = g.this;
                    } catch (IOException e) {
                        bVar = com.bytedance.sdk.a.b.a.e.b.PROTOCOL_ERROR;
                        bVar4 = com.bytedance.sdk.a.b.a.e.b.PROTOCOL_ERROR;
                        gVar = g.this;
                    }
                    gVar.a(bVar, bVar4);
                } catch (Throwable th) {
                    try {
                        g.this.a(bVar4, bVar3);
                    } catch (IOException e2) {
                    }
                    com.bytedance.sdk.a.b.a.c.a(this.f7978a);
                    throw th;
                }
            } catch (IOException e3) {
            }
            com.bytedance.sdk.a.b.a.c.a(this.f7978a);
        }
    }

    g(a aVar) {
        n nVar = new n();
        this.m = nVar;
        this.i = aVar.f;
        boolean z = aVar.g;
        this.f7950b = z;
        this.f7951c = aVar.e;
        int i = 2;
        this.g = aVar.g ? 1 : 2;
        if (aVar.g) {
            this.g += 2;
        }
        this.v = aVar.g ? 1 : i;
        if (aVar.g) {
            this.l.a(7, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        }
        String str = aVar.f7975b;
        this.e = str;
        this.t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.bytedance.sdk.a.b.a.c.a(com.bytedance.sdk.a.b.a.c.a("OkHttp %s Push Observer", str), true));
        nVar.a(7, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        nVar.a(5, 16384);
        this.k = nVar.d();
        this.o = aVar.f7974a;
        this.p = new j(aVar.f7977d, z);
        this.q = new c(new h(aVar.f7976c, z));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[Catch: all -> 0x00c2, TryCatch #1 {, blocks: (B:5:0x000f, B:25:0x0078, B:26:0x0088, B:28:0x008f, B:30:0x009c, B:36:0x00ac, B:37:0x00b7, B:38:0x00b8, B:7:0x0011, B:9:0x0017, B:11:0x003a, B:13:0x0043, B:18:0x0059, B:20:0x0061, B:22:0x0073, B:39:0x00bb, B:40:0x00c1), top: B:46:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.bytedance.sdk.a.b.a.e.i b(int r8, java.util.List<com.bytedance.sdk.a.b.a.e.c> r9, boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.e.g.b(int, java.util.List, boolean):com.bytedance.sdk.a.b.a.e.i");
    }

    public final int a() {
        int c2;
        synchronized (this) {
            c2 = this.m.c(Integer.MAX_VALUE);
        }
        return c2;
    }

    final i a(int i) {
        i iVar;
        synchronized (this) {
            iVar = this.f7952d.get(Integer.valueOf(i));
        }
        return iVar;
    }

    public final i a(List<com.bytedance.sdk.a.b.a.e.c> list, boolean z) throws IOException {
        return b(0, list, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final long j) {
        f7949a.execute(new com.bytedance.sdk.a.b.a.b("OkHttp Window Update %s stream %d", new Object[]{this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.2
            @Override // com.bytedance.sdk.a.b.a.b
            public void b() {
                try {
                    g.this.p.a(i, j);
                } catch (IOException e) {
                }
            }
        });
    }

    final void a(final int i, e eVar, final int i2, final boolean z) throws IOException {
        final com.bytedance.sdk.a.a.c cVar = new com.bytedance.sdk.a.a.c();
        long j = i2;
        eVar.a(j);
        eVar.a(cVar, j);
        if (cVar.b() == j) {
            this.t.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s Push Data[%s]", new Object[]{this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.6
                @Override // com.bytedance.sdk.a.b.a.b
                public void b() {
                    try {
                        boolean a2 = g.this.i.a(i, cVar, i2, z);
                        if (a2) {
                            g.this.p.a(i, com.bytedance.sdk.a.b.a.e.b.CANCEL);
                        }
                        if (!a2 && !z) {
                            return;
                        }
                        synchronized (g.this) {
                            g.this.r.remove(Integer.valueOf(i));
                        }
                    } catch (IOException e) {
                    }
                }
            });
            return;
        }
        throw new IOException(cVar.b() + " != " + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final com.bytedance.sdk.a.b.a.e.b bVar) {
        f7949a.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s stream %d", new Object[]{this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.1
            @Override // com.bytedance.sdk.a.b.a.b
            public void b() {
                try {
                    g.this.b(i, bVar);
                } catch (IOException e) {
                }
            }
        });
    }

    final void a(final int i, final List<com.bytedance.sdk.a.b.a.e.c> list) {
        synchronized (this) {
            if (this.r.contains(Integer.valueOf(i))) {
                a(i, com.bytedance.sdk.a.b.a.e.b.PROTOCOL_ERROR);
                return;
            }
            this.r.add(Integer.valueOf(i));
            this.t.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s Push Request[%s]", new Object[]{this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.4
                @Override // com.bytedance.sdk.a.b.a.b
                public void b() {
                    if (g.this.i.a(i, list)) {
                        try {
                            g.this.p.a(i, com.bytedance.sdk.a.b.a.e.b.CANCEL);
                            synchronized (g.this) {
                                g.this.r.remove(Integer.valueOf(i));
                            }
                        } catch (IOException e) {
                        }
                    }
                }
            });
        }
    }

    final void a(final int i, final List<com.bytedance.sdk.a.b.a.e.c> list, final boolean z) {
        this.t.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s Push Headers[%s]", new Object[]{this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.5
            @Override // com.bytedance.sdk.a.b.a.b
            public void b() {
                boolean a2 = g.this.i.a(i, list, z);
                if (a2) {
                    try {
                        g.this.p.a(i, com.bytedance.sdk.a.b.a.e.b.CANCEL);
                    } catch (IOException e) {
                        return;
                    }
                }
                if (!a2 && !z) {
                    return;
                }
                synchronized (g.this) {
                    g.this.r.remove(Integer.valueOf(i));
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
        r0 = java.lang.Math.min((int) java.lang.Math.min((long) r12, r0), r6.p.c());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
        r6.k -= r0;
     */
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
    public final void a(int r7, boolean r8, com.bytedance.sdk.a.a.c r9, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.e.g.a(int, boolean, com.bytedance.sdk.a.a.c, long):void");
    }

    final void a(long j) {
        this.k += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public final void a(com.bytedance.sdk.a.b.a.e.b bVar) throws IOException {
        synchronized (this.p) {
            synchronized (this) {
                if (!this.h) {
                    this.h = true;
                    this.p.a(this.f, bVar, com.bytedance.sdk.a.b.a.c.f7878a);
                }
            }
        }
    }

    final void a(com.bytedance.sdk.a.b.a.e.b bVar, com.bytedance.sdk.a.b.a.e.b bVar2) throws IOException {
        IOException e;
        i[] iVarArr;
        IOException e2;
        if (s || !Thread.holdsLock(this)) {
            l[] lVarArr = null;
            try {
                a(bVar);
                e = null;
            } catch (IOException e3) {
                e = e3;
            }
            synchronized (this) {
                if (!this.f7952d.isEmpty()) {
                    iVarArr = (i[]) this.f7952d.values().toArray(new i[this.f7952d.size()]);
                    this.f7952d.clear();
                } else {
                    iVarArr = null;
                }
                Map<Integer, l> map = this.u;
                if (map != null) {
                    lVarArr = (l[]) map.values().toArray(new l[this.u.size()]);
                    this.u = null;
                }
            }
            IOException iOException = e;
            if (iVarArr != null) {
                int length = iVarArr.length;
                int i = 0;
                while (true) {
                    iOException = e;
                    if (i >= length) {
                        break;
                    }
                    try {
                        iVarArr[i].a(bVar2);
                        e = e;
                    } catch (IOException e4) {
                        e = e4;
                        e = e;
                        if (e != null) {
                        }
                    }
                    i++;
                }
            }
            if (lVarArr != null) {
                for (l lVar : lVarArr) {
                    lVar.c();
                }
            }
            try {
                this.p.close();
                e2 = iOException;
            } catch (IOException e5) {
                e2 = e5;
                e2 = iOException;
                if (iOException == null) {
                }
            }
            try {
                this.o.close();
            } catch (IOException e6) {
                e2 = e6;
            }
            if (e2 != null) {
                throw e2;
            }
            return;
        }
        throw new AssertionError();
    }

    final void a(boolean z) throws IOException {
        if (z) {
            this.p.a();
            this.p.b(this.l);
            int d2 = this.l.d();
            if (d2 != 65535) {
                this.p.a(0, d2 - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        Thread thread = new Thread(this.q);
        thread.setName("tt_pangle_thread_http2_connection" + SystemClock.uptimeMillis());
        thread.start();
    }

    final void a(final boolean z, final int i, final int i2, final l lVar) {
        f7949a.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s ping %08x%08x", new Object[]{this.e, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: com.bytedance.sdk.a.b.a.e.g.3
            @Override // com.bytedance.sdk.a.b.a.b
            public void b() {
                try {
                    g.this.b(z, i, i2, lVar);
                } catch (IOException e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i b(int i) {
        i remove;
        synchronized (this) {
            remove = this.f7952d.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    public final void b() throws IOException {
        this.p.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i, com.bytedance.sdk.a.b.a.e.b bVar) throws IOException {
        this.p.a(i, bVar);
    }

    final void b(boolean z, int i, int i2, l lVar) throws IOException {
        synchronized (this.p) {
            if (lVar != null) {
                lVar.a();
            }
            this.p.a(z, i, i2);
        }
    }

    final l c(int i) {
        synchronized (this) {
            Map<Integer, l> map = this.u;
            if (map == null) {
                return null;
            }
            return map.remove(Integer.valueOf(i));
        }
    }

    public final void c() throws IOException {
        a(true);
    }

    final void c(final int i, final com.bytedance.sdk.a.b.a.e.b bVar) {
        this.t.execute(new com.bytedance.sdk.a.b.a.b("OkHttp %s Push Reset[%s]", new Object[]{this.e, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.a.b.a.e.g.7
            @Override // com.bytedance.sdk.a.b.a.b
            public void b() {
                g.this.i.a(i, bVar);
                synchronized (g.this) {
                    g.this.r.remove(Integer.valueOf(i));
                }
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        a(com.bytedance.sdk.a.b.a.e.b.NO_ERROR, com.bytedance.sdk.a.b.a.e.b.CANCEL);
    }

    public final boolean d() {
        boolean z;
        synchronized (this) {
            z = this.h;
        }
        return z;
    }

    final boolean d(int i) {
        return i != 0 && (i & 1) == 0;
    }
}

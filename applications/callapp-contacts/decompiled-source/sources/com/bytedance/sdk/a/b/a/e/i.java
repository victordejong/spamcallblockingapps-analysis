package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.r;
import com.bytedance.sdk.a.a.s;
import com.bytedance.sdk.a.a.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i.class */
public final class i {
    static final /* synthetic */ boolean i = true;

    /* renamed from: b  reason: collision with root package name */
    long f7994b;

    /* renamed from: c  reason: collision with root package name */
    final int f7995c;

    /* renamed from: d  reason: collision with root package name */
    final g f7996d;
    final a e;
    private final List<com.bytedance.sdk.a.b.a.e.c> j;
    private List<com.bytedance.sdk.a.b.a.e.c> k;
    private boolean l;
    private final b m;

    /* renamed from: a  reason: collision with root package name */
    long f7993a = 0;
    final c f = new c();
    final c g = new c();
    com.bytedance.sdk.a.b.a.e.b h = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i$a.class */
    public final class a implements r {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f7997c = true;

        /* renamed from: a  reason: collision with root package name */
        boolean f7998a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7999b;
        private final com.bytedance.sdk.a.a.c e = new com.bytedance.sdk.a.a.c();

        a() {
        }

        private void a(boolean z) throws IOException {
            long min;
            synchronized (i.this) {
                i.this.g.a();
                while (i.this.f7994b <= 0 && !this.f7999b && !this.f7998a && i.this.h == null) {
                    i.this.l();
                }
                i.this.g.h();
                i.this.k();
                min = Math.min(i.this.f7994b, this.e.b());
                i.this.f7994b -= min;
            }
            i.this.g.a();
            try {
                i.this.f7996d.a(i.this.f7995c, z && min == this.e.b(), this.e, min);
            } finally {
                i.this.g.h();
            }
        }

        @Override // com.bytedance.sdk.a.a.r
        public final t a() {
            return i.this.g;
        }

        @Override // com.bytedance.sdk.a.a.r
        public final void a_(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (f7997c || !Thread.holdsLock(i.this)) {
                this.e.a_(cVar, j);
                while (this.e.b() >= 16384) {
                    a(false);
                }
                return;
            }
            throw new AssertionError();
        }

        @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (f7997c || !Thread.holdsLock(i.this)) {
                synchronized (i.this) {
                    if (!this.f7998a) {
                        if (!i.this.e.f7999b) {
                            if (this.e.b() > 0) {
                                while (this.e.b() > 0) {
                                    a(true);
                                }
                            } else {
                                i.this.f7996d.a(i.this.f7995c, true, (com.bytedance.sdk.a.a.c) null, 0L);
                            }
                        }
                        synchronized (i.this) {
                            this.f7998a = true;
                        }
                        i.this.f7996d.b();
                        i.this.j();
                        return;
                    }
                    return;
                }
            }
            throw new AssertionError();
        }

        @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
        public final void flush() throws IOException {
            if (f7997c || !Thread.holdsLock(i.this)) {
                synchronized (i.this) {
                    i.this.k();
                }
                while (this.e.b() > 0) {
                    a(false);
                    i.this.f7996d.b();
                }
                return;
            }
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i$b.class */
    public final class b implements s {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f8001c = true;

        /* renamed from: a  reason: collision with root package name */
        boolean f8002a;

        /* renamed from: b  reason: collision with root package name */
        boolean f8003b;
        private final com.bytedance.sdk.a.a.c e = new com.bytedance.sdk.a.a.c();
        private final com.bytedance.sdk.a.a.c f = new com.bytedance.sdk.a.a.c();
        private final long g;

        b(long j) {
            this.g = j;
        }

        private void b() throws IOException {
            i.this.f.a();
            while (this.f.b() == 0 && !this.f8003b && !this.f8002a && i.this.h == null) {
                try {
                    i.this.l();
                } finally {
                    i.this.f.h();
                }
            }
        }

        private void c() throws IOException {
            if (this.f8002a) {
                throw new IOException("stream closed");
            } else if (i.this.h != null) {
                throw new o(i.this.h);
            }
        }

        @Override // com.bytedance.sdk.a.a.s
        public final long a(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (j >= 0) {
                synchronized (i.this) {
                    b();
                    c();
                    if (this.f.b() == 0) {
                        return -1L;
                    }
                    com.bytedance.sdk.a.a.c cVar2 = this.f;
                    long a2 = cVar2.a(cVar, Math.min(j, cVar2.b()));
                    i.this.f7993a += a2;
                    if (i.this.f7993a >= i.this.f7996d.l.d() / 2) {
                        i.this.f7996d.a(i.this.f7995c, i.this.f7993a);
                        i.this.f7993a = 0L;
                    }
                    synchronized (i.this.f7996d) {
                        i.this.f7996d.j += a2;
                        if (i.this.f7996d.j >= i.this.f7996d.l.d() / 2) {
                            i.this.f7996d.a(0, i.this.f7996d.j);
                            i.this.f7996d.j = 0L;
                        }
                    }
                    return a2;
                }
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }

        @Override // com.bytedance.sdk.a.a.s
        public final t a() {
            return i.this.f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [com.bytedance.sdk.a.a.e] */
        /* JADX WARN: Type inference failed for: r7v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        final void a(e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            long j2 = j;
            if (!f8001c) {
                if (!Thread.holdsLock(i.this)) {
                    j2 = j;
                } else {
                    throw new AssertionError();
                }
            }
            while (j2 > 0) {
                synchronized (i.this) {
                    z = this.f8003b;
                    z3 = true;
                    z2 = this.f.b() + j2 > this.g;
                }
                if (z2) {
                    eVar.h(j2);
                    i.this.b(com.bytedance.sdk.a.b.a.e.b.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    eVar.h(j2);
                    return;
                } else {
                    long a2 = eVar.a(this.e, j2);
                    if (a2 != -1) {
                        j2 -= a2;
                        synchronized (i.this) {
                            if (this.f.b() != 0) {
                                z3 = false;
                            }
                            this.f.a(this.e);
                            if (z3) {
                                i.this.notifyAll();
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (i.this) {
                this.f8002a = true;
                this.f.r();
                i.this.notifyAll();
            }
            i.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/i$c.class */
    public class c extends com.bytedance.sdk.a.a.a {
        c() {
        }

        @Override // com.bytedance.sdk.a.a.a
        public void a_() {
            i.this.b(com.bytedance.sdk.a.b.a.e.b.CANCEL);
        }

        @Override // com.bytedance.sdk.a.a.a
        public IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void h() throws IOException {
            if (b()) {
                throw b((IOException) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(int i2, g gVar, boolean z, boolean z2, List<com.bytedance.sdk.a.b.a.e.c> list) {
        Objects.requireNonNull(gVar, "connection == null");
        Objects.requireNonNull(list, "requestHeaders == null");
        this.f7995c = i2;
        this.f7996d = gVar;
        this.f7994b = gVar.m.d();
        b bVar = new b(gVar.l.d());
        this.m = bVar;
        a aVar = new a();
        this.e = aVar;
        bVar.f8003b = z2;
        aVar.f7999b = z;
        this.j = list;
    }

    private boolean d(com.bytedance.sdk.a.b.a.e.b bVar) {
        if (i || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.h != null) {
                    return false;
                }
                if (this.m.f8003b && this.e.f7999b) {
                    return false;
                }
                this.h = bVar;
                notifyAll();
                this.f7996d.b(this.f7995c);
                return true;
            }
        }
        throw new AssertionError();
    }

    public final int a() {
        return this.f7995c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        this.f7994b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e eVar, int i2) throws IOException {
        if (i || !Thread.holdsLock(this)) {
            this.m.a(eVar, i2);
            return;
        }
        throw new AssertionError();
    }

    public final void a(com.bytedance.sdk.a.b.a.e.b bVar) throws IOException {
        if (d(bVar)) {
            this.f7996d.b(this.f7995c, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<com.bytedance.sdk.a.b.a.e.c> list) {
        boolean z;
        if (i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = true;
                this.l = true;
                if (this.k == null) {
                    this.k = list;
                    z = b();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.k);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.k = arrayList;
                }
            }
            if (!z) {
                this.f7996d.b(this.f7995c);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    public final void b(com.bytedance.sdk.a.b.a.e.b bVar) {
        if (d(bVar)) {
            this.f7996d.a(this.f7995c, bVar);
        }
    }

    public final boolean b() {
        synchronized (this) {
            if (this.h != null) {
                return false;
            }
            if ((this.m.f8003b || this.m.f8002a) && (this.e.f7999b || this.e.f7998a)) {
                if (this.l) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(com.bytedance.sdk.a.b.a.e.b bVar) {
        synchronized (this) {
            if (this.h == null) {
                this.h = bVar;
                notifyAll();
            }
        }
    }

    public final boolean c() {
        return this.f7996d.f7950b == ((this.f7995c & 1) == 1);
    }

    public final List<com.bytedance.sdk.a.b.a.e.c> d() throws IOException {
        List<com.bytedance.sdk.a.b.a.e.c> list;
        synchronized (this) {
            if (c()) {
                this.f.a();
                while (this.k == null && this.h == null) {
                    l();
                }
                this.f.h();
                list = this.k;
                if (list != null) {
                    this.k = null;
                } else {
                    throw new o(this.h);
                }
            } else {
                throw new IllegalStateException("servers cannot read response headers");
            }
        }
        return list;
    }

    public final t e() {
        return this.f;
    }

    public final t f() {
        return this.g;
    }

    public final s g() {
        return this.m;
    }

    public final r h() {
        synchronized (this) {
            if (!this.l && !c()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        boolean b2;
        if (i || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.m.f8003b = true;
                b2 = b();
                notifyAll();
            }
            if (!b2) {
                this.f7996d.b(this.f7995c);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    final void j() throws IOException {
        boolean z;
        boolean b2;
        if (i || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = !this.m.f8003b && this.m.f8002a && (this.e.f7999b || this.e.f7998a);
                b2 = b();
            }
            if (z) {
                a(com.bytedance.sdk.a.b.a.e.b.CANCEL);
            } else if (!b2) {
                this.f7996d.b(this.f7995c);
            }
        } else {
            throw new AssertionError();
        }
    }

    final void k() throws IOException {
        if (this.e.f7998a) {
            throw new IOException("stream closed");
        } else if (this.e.f7999b) {
            throw new IOException("stream finished");
        } else if (this.h != null) {
            throw new o(this.h);
        }
    }

    final void l() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }
}

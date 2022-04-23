package com.bytedance.sdk.a.b.a.d;

import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.a.a.i;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.a.r;
import com.bytedance.sdk.a.a.s;
import com.bytedance.sdk.a.a.t;
import com.bytedance.sdk.a.b.a.b.g;
import com.bytedance.sdk.a.b.a.c.h;
import com.bytedance.sdk.a.b.a.c.k;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.r;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.y;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a.class */
public final class a implements com.bytedance.sdk.a.b.a.c.c {

    /* renamed from: a  reason: collision with root package name */
    final v f7905a;

    /* renamed from: b  reason: collision with root package name */
    final g f7906b;

    /* renamed from: c  reason: collision with root package name */
    final com.bytedance.sdk.a.a.e f7907c;

    /* renamed from: d  reason: collision with root package name */
    final com.bytedance.sdk.a.a.d f7908d;
    int e = 0;
    private long f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.a.b.a.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$a.class */
    public abstract class AbstractC0153a implements s {

        /* renamed from: a  reason: collision with root package name */
        protected final i f7909a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f7910b;

        /* renamed from: c  reason: collision with root package name */
        protected long f7911c;

        private AbstractC0153a() {
            this.f7909a = new i(a.this.f7907c.a());
            this.f7911c = 0L;
        }

        @Override // com.bytedance.sdk.a.a.s
        public long a(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            try {
                long a2 = a.this.f7907c.a(cVar, j);
                if (a2 > 0) {
                    this.f7911c += a2;
                }
                return a2;
            } catch (IOException e) {
                a(false, e);
                throw e;
            }
        }

        @Override // com.bytedance.sdk.a.a.s
        public t a() {
            return this.f7909a;
        }

        protected final void a(boolean z, IOException iOException) throws IOException {
            if (a.this.e != 6) {
                if (a.this.e == 5) {
                    a.this.a(this.f7909a);
                    a.this.e = 6;
                    if (a.this.f7906b != null) {
                        a.this.f7906b.a(!z, a.this, this.f7911c, iOException);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("state: " + a.this.e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$b.class */
    public final class b implements r {

        /* renamed from: b  reason: collision with root package name */
        private final i f7914b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f7915c;

        b() {
            this.f7914b = new i(a.this.f7908d.a());
        }

        @Override // com.bytedance.sdk.a.a.r
        public final t a() {
            return this.f7914b;
        }

        @Override // com.bytedance.sdk.a.a.r
        public final void a_(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (this.f7915c) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                a.this.f7908d.k(j);
                a.this.f7908d.b("\r\n");
                a.this.f7908d.a_(cVar, j);
                a.this.f7908d.b("\r\n");
            }
        }

        @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (this) {
                if (!this.f7915c) {
                    this.f7915c = true;
                    a.this.f7908d.b("0\r\n\r\n");
                    a.this.a(this.f7914b);
                    a.this.e = 3;
                }
            }
        }

        @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
        public final void flush() throws IOException {
            synchronized (this) {
                if (!this.f7915c) {
                    a.this.f7908d.flush();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$c.class */
    public class c extends AbstractC0153a {
        private final com.bytedance.sdk.a.b.s f;
        private long g = -1;
        private boolean h = true;

        c(com.bytedance.sdk.a.b.s sVar) {
            super();
            this.f = sVar;
        }

        private void b() throws IOException {
            if (this.g != -1) {
                a.this.f7907c.p();
            }
            try {
                this.g = a.this.f7907c.m();
                String trim = a.this.f7907c.p().trim();
                if (this.g < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.g + trim + "\"");
                } else if (this.g == 0) {
                    this.h = false;
                    com.bytedance.sdk.a.b.a.c.e.a(a.this.f7905a.f(), this.f, a.this.c());
                    a(true, (IOException) null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // com.bytedance.sdk.a.b.a.d.a.AbstractC0153a, com.bytedance.sdk.a.a.s
        public long a(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (this.f7910b) {
                throw new IllegalStateException("closed");
            } else if (!this.h) {
                return -1L;
            } else {
                long j2 = this.g;
                if (j2 == 0 || j2 == -1) {
                    b();
                    if (!this.h) {
                        return -1L;
                    }
                }
                long a2 = super.a(cVar, Math.min(j, this.g));
                if (a2 != -1) {
                    this.g -= a2;
                    return a2;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, (IOException) protocolException);
                throw protocolException;
            }
        }

        @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f7910b) {
                if (this.h && !com.bytedance.sdk.a.b.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                    a(false, (IOException) null);
                }
                this.f7910b = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$d.class */
    public final class d implements r {

        /* renamed from: b  reason: collision with root package name */
        private final i f7917b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f7918c;

        /* renamed from: d  reason: collision with root package name */
        private long f7919d;

        d(long j) {
            this.f7917b = new i(a.this.f7908d.a());
            this.f7919d = j;
        }

        @Override // com.bytedance.sdk.a.a.r
        public final t a() {
            return this.f7917b;
        }

        @Override // com.bytedance.sdk.a.a.r
        public final void a_(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (!this.f7918c) {
                com.bytedance.sdk.a.b.a.c.a(cVar.b(), 0L, j);
                if (j <= this.f7919d) {
                    a.this.f7908d.a_(cVar, j);
                    this.f7919d -= j;
                    return;
                }
                throw new ProtocolException("expected " + this.f7919d + " bytes but received " + j);
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (!this.f7918c) {
                this.f7918c = true;
                if (this.f7919d <= 0) {
                    a.this.a(this.f7917b);
                    a.this.e = 3;
                    return;
                }
                throw new ProtocolException("unexpected end of stream");
            }
        }

        @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
        public final void flush() throws IOException {
            if (!this.f7918c) {
                a.this.f7908d.flush();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$e.class */
    public class e extends AbstractC0153a {
        private long f;

        e(long j) throws IOException {
            super();
            this.f = j;
            if (j == 0) {
                a(true, (IOException) null);
            }
        }

        @Override // com.bytedance.sdk.a.b.a.d.a.AbstractC0153a, com.bytedance.sdk.a.a.s
        public long a(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (!this.f7910b) {
                long j2 = this.f;
                if (j2 == 0) {
                    return -1L;
                }
                long a2 = super.a(cVar, Math.min(j2, j));
                if (a2 != -1) {
                    long j3 = this.f - a2;
                    this.f = j3;
                    if (j3 == 0) {
                        a(true, (IOException) null);
                    }
                    return a2;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, (IOException) protocolException);
                throw protocolException;
            } else {
                throw new IllegalStateException("closed");
            }
        }

        @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f7910b) {
                if (this.f != 0 && !com.bytedance.sdk.a.b.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                    a(false, (IOException) null);
                }
                this.f7910b = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$f.class */
    public class f extends AbstractC0153a {
        private boolean f;

        f() {
            super();
        }

        @Override // com.bytedance.sdk.a.b.a.d.a.AbstractC0153a, com.bytedance.sdk.a.a.s
        public long a(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            } else if (this.f7910b) {
                throw new IllegalStateException("closed");
            } else if (this.f) {
                return -1L;
            } else {
                long a2 = super.a(cVar, j);
                if (a2 != -1) {
                    return a2;
                }
                this.f = true;
                a(true, (IOException) null);
                return -1L;
            }
        }

        @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f7910b) {
                if (!this.f) {
                    a(false, (IOException) null);
                }
                this.f7910b = true;
            }
        }
    }

    public a(v vVar, g gVar, com.bytedance.sdk.a.a.e eVar, com.bytedance.sdk.a.a.d dVar) {
        this.f7905a = vVar;
        this.f7906b = gVar;
        this.f7907c = eVar;
        this.f7908d = dVar;
    }

    private String f() throws IOException {
        String e2 = this.f7907c.e(this.f);
        this.f -= e2.length();
        return e2;
    }

    public final r a(long j) {
        if (this.e == 1) {
            this.e = 2;
            return new d(j);
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final r a(y yVar, long j) {
        if ("chunked".equalsIgnoreCase(yVar.a("Transfer-Encoding"))) {
            return d();
        }
        if (j != -1) {
            return a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public final s a(com.bytedance.sdk.a.b.s sVar) throws IOException {
        if (this.e == 4) {
            this.e = 5;
            return new c(sVar);
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final aa.a a(boolean z) throws IOException {
        int i = this.e;
        if (i == 1 || i == 3) {
            try {
                k a2 = k.a(f());
                aa.a a3 = new aa.a().a(a2.f7902a).a(a2.f7903b).a(a2.f7904c).a(c());
                if (z && a2.f7903b == 100) {
                    return null;
                }
                this.e = 4;
                return a3;
            } catch (EOFException e2) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f7906b);
                iOException.initCause(e2);
                throw iOException;
            }
        } else {
            throw new IllegalStateException("state: " + this.e);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final ab a(aa aaVar) throws IOException {
        this.f7906b.f7876c.f(this.f7906b.f7875b);
        String a2 = aaVar.a("Content-Type");
        if (!com.bytedance.sdk.a.b.a.c.e.b(aaVar)) {
            return new h(a2, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(aaVar.a("Transfer-Encoding"))) {
            return new h(a2, -1L, l.a(a(aaVar.a().a())));
        }
        long a3 = com.bytedance.sdk.a.b.a.c.e.a(aaVar);
        return a3 != -1 ? new h(a2, a3, l.a(b(a3))) : new h(a2, -1L, l.a(e()));
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final void a() throws IOException {
        this.f7908d.flush();
    }

    final void a(i iVar) {
        t a2 = iVar.a();
        iVar.a(t.f7821c);
        a2.f();
        a2.e();
    }

    public final void a(com.bytedance.sdk.a.b.r rVar, String str) throws IOException {
        if (this.e == 0) {
            this.f7908d.b(str).b("\r\n");
            int a2 = rVar.a();
            for (int i = 0; i < a2; i++) {
                this.f7908d.b(rVar.a(i)).b(": ").b(rVar.b(i)).b("\r\n");
            }
            this.f7908d.b("\r\n");
            this.e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final void a(y yVar) throws IOException {
        a(yVar.c(), com.bytedance.sdk.a.b.a.c.i.a(yVar, this.f7906b.b().a().b().type()));
    }

    public final s b(long j) throws IOException {
        if (this.e == 4) {
            this.e = 5;
            return new e(j);
        }
        throw new IllegalStateException("state: " + this.e);
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final void b() throws IOException {
        this.f7908d.flush();
    }

    public final com.bytedance.sdk.a.b.r c() throws IOException {
        r.a aVar = new r.a();
        while (true) {
            String f2 = f();
            if (f2.length() == 0) {
                return aVar.a();
            }
            com.bytedance.sdk.a.b.a.a.f7830a.a(aVar, f2);
        }
    }

    public final com.bytedance.sdk.a.a.r d() {
        if (this.e == 1) {
            this.e = 2;
            return new b();
        }
        throw new IllegalStateException("state: " + this.e);
    }

    public final s e() throws IOException {
        if (this.e == 4) {
            g gVar = this.f7906b;
            if (gVar != null) {
                this.e = 5;
                gVar.d();
                return new f();
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.e);
    }
}

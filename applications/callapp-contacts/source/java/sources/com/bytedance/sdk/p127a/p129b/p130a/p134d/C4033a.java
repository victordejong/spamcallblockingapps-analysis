package com.bytedance.sdk.p127a.p129b.p130a.p134d;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3989r;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3976i;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p128a.C3991t;
import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4024e;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4027h;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4028i;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4030k;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.a.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a.class */
public final class C4033a implements AbstractC4021c {

    /* renamed from: a */
    final C4140v f14624a;

    /* renamed from: b */
    final C4013g f14625b;

    /* renamed from: c */
    final AbstractC3972e f14626c;

    /* renamed from: d */
    final AbstractC3971d f14627d;

    /* renamed from: e */
    int f14628e = 0;

    /* renamed from: f */
    private long f14629f = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;

    /* renamed from: com.bytedance.sdk.a.b.a.d.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$a.class */
    public abstract class AbstractC4035a implements AbstractC3990s {

        /* renamed from: a */
        protected final C3976i f14630a;

        /* renamed from: b */
        protected boolean f14631b;

        /* renamed from: c */
        protected long f14632c;

        private AbstractC4035a() {
            C4033a.this = r6;
            this.f14630a = new C3976i(r6.f14626c.mo36720a());
            this.f14632c = 0L;
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public long mo36719a(C3969c c3969c, long j) throws IOException {
            try {
                long a = C4033a.this.f14626c.mo36719a(c3969c, j);
                if (a > 0) {
                    this.f14632c += a;
                }
                return a;
            } catch (IOException e) {
                m36841a(false, e);
                throw e;
            }
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public C3991t mo36720a() {
            return this.f14630a;
        }

        /* renamed from: a */
        protected final void m36841a(boolean z, IOException iOException) throws IOException {
            if (C4033a.this.f14628e == 6) {
                return;
            }
            if (C4033a.this.f14628e != 5) {
                throw new IllegalStateException("state: " + C4033a.this.f14628e);
            }
            C4033a.this.m36849a(this.f14630a);
            C4033a.this.f14628e = 6;
            if (C4033a.this.f14625b == null) {
                return;
            }
            C4033a.this.f14625b.m36928a(!z, C4033a.this, this.f14632c, iOException);
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.d.a$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$b.class */
    public final class C4036b implements AbstractC3989r {

        /* renamed from: b */
        private final C3976i f14635b;

        /* renamed from: c */
        private boolean f14636c;

        C4036b() {
            C4033a.this = r6;
            this.f14635b = new C3976i(r6.f14627d.mo36723a());
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a */
        public final C3991t mo36723a() {
            return this.f14635b;
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a_ */
        public final void mo36721a_(C3969c c3969c, long j) throws IOException {
            if (!this.f14636c) {
                if (j == 0) {
                    return;
                }
                C4033a.this.f14627d.mo37071k(j);
                C4033a.this.f14627d.mo37077b("\r\n");
                C4033a.this.f14627d.mo36721a_(c3969c, j);
                C4033a.this.f14627d.mo37077b("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            synchronized (this) {
                if (this.f14636c) {
                    return;
                }
                this.f14636c = true;
                C4033a.this.f14627d.mo37077b("0\r\n\r\n");
                C4033a.this.m36849a(this.f14635b);
                C4033a.this.f14628e = 3;
            }
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
        public final void flush() throws IOException {
            synchronized (this) {
                if (this.f14636c) {
                    return;
                }
                C4033a.this.f14627d.flush();
            }
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.d.a$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$c.class */
    public class C4037c extends AbstractC4035a {

        /* renamed from: f */
        private final C4134s f14638f;

        /* renamed from: g */
        private long f14639g = -1;

        /* renamed from: h */
        private boolean f14640h = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4037c(C4134s c4134s) {
            super();
            C4033a.this = r5;
            this.f14638f = c4134s;
        }

        /* renamed from: b */
        private void m36840b() throws IOException {
            if (this.f14639g != -1) {
                C4033a.this.f14626c.mo37047p();
            }
            try {
                this.f14639g = C4033a.this.f14626c.mo37048m();
                String trim = C4033a.this.f14626c.mo37047p().trim();
                if (this.f14639g < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f14639g + trim + "\"");
                } else if (this.f14639g != 0) {
                } else {
                    this.f14640h = false;
                    C4024e.m36881a(C4033a.this.f14624a.m36390f(), this.f14638f, C4033a.this.m36845c());
                    m36841a(true, (IOException) null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p134d.C4033a.AbstractC4035a, com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public long mo36719a(C3969c c3969c, long j) throws IOException {
            if (j >= 0) {
                if (this.f14631b) {
                    throw new IllegalStateException("closed");
                }
                if (!this.f14640h) {
                    return -1L;
                }
                long j2 = this.f14639g;
                if (j2 == 0 || j2 == -1) {
                    m36840b();
                    if (!this.f14640h) {
                        return -1L;
                    }
                }
                long mo36719a = super.mo36719a(c3969c, Math.min(j, this.f14639g));
                if (mo36719a != -1) {
                    this.f14639g -= mo36719a;
                    return mo36719a;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m36841a(false, (IOException) protocolException);
                throw protocolException;
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f14631b) {
                return;
            }
            if (this.f14640h && !C4015c.m36916a(this, 100, TimeUnit.MILLISECONDS)) {
                m36841a(false, (IOException) null);
            }
            this.f14631b = true;
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.d.a$d */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$d.class */
    public final class C4038d implements AbstractC3989r {

        /* renamed from: b */
        private final C3976i f14642b;

        /* renamed from: c */
        private boolean f14643c;

        /* renamed from: d */
        private long f14644d;

        C4038d(long j) {
            C4033a.this = r6;
            this.f14642b = new C3976i(r6.f14627d.mo36723a());
            this.f14644d = j;
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a */
        public final C3991t mo36723a() {
            return this.f14642b;
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a_ */
        public final void mo36721a_(C3969c c3969c, long j) throws IOException {
            if (!this.f14643c) {
                C4015c.m36918a(c3969c.m37124b(), 0L, j);
                if (j <= this.f14644d) {
                    C4033a.this.f14627d.mo36721a_(c3969c, j);
                    this.f14644d -= j;
                    return;
                }
                throw new ProtocolException("expected " + this.f14644d + " bytes but received " + j);
            }
            throw new IllegalStateException("closed");
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f14643c) {
                return;
            }
            this.f14643c = true;
            if (this.f14644d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            C4033a.this.m36849a(this.f14642b);
            C4033a.this.f14628e = 3;
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
        public final void flush() throws IOException {
            if (this.f14643c) {
                return;
            }
            C4033a.this.f14627d.flush();
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.d.a$e */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$e.class */
    public class C4039e extends AbstractC4035a {

        /* renamed from: f */
        private long f14646f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4039e(long j) throws IOException {
            super();
            C4033a.this = r6;
            this.f14646f = j;
            if (j == 0) {
                m36841a(true, (IOException) null);
            }
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p134d.C4033a.AbstractC4035a, com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public long mo36719a(C3969c c3969c, long j) throws IOException {
            if (j >= 0) {
                if (this.f14631b) {
                    throw new IllegalStateException("closed");
                }
                long j2 = this.f14646f;
                if (j2 == 0) {
                    return -1L;
                }
                long mo36719a = super.mo36719a(c3969c, Math.min(j2, j));
                if (mo36719a == -1) {
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    m36841a(false, (IOException) protocolException);
                    throw protocolException;
                }
                long j3 = this.f14646f - mo36719a;
                this.f14646f = j3;
                if (j3 == 0) {
                    m36841a(true, (IOException) null);
                }
                return mo36719a;
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f14631b) {
                return;
            }
            if (this.f14646f != 0 && !C4015c.m36916a(this, 100, TimeUnit.MILLISECONDS)) {
                m36841a(false, (IOException) null);
            }
            this.f14631b = true;
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.d.a$f */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/d/a$f.class */
    public class C4040f extends AbstractC4035a {

        /* renamed from: f */
        private boolean f14648f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4040f() {
            super();
            C4033a.this = r5;
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p134d.C4033a.AbstractC4035a, com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public long mo36719a(C3969c c3969c, long j) throws IOException {
            if (j >= 0) {
                if (this.f14631b) {
                    throw new IllegalStateException("closed");
                }
                if (this.f14648f) {
                    return -1L;
                }
                long mo36719a = super.mo36719a(c3969c, j);
                if (mo36719a != -1) {
                    return mo36719a;
                }
                this.f14648f = true;
                m36841a(true, (IOException) null);
                return -1L;
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f14631b) {
                return;
            }
            if (!this.f14648f) {
                m36841a(false, (IOException) null);
            }
            this.f14631b = true;
        }
    }

    public C4033a(C4140v c4140v, C4013g c4013g, AbstractC3972e abstractC3972e, AbstractC3971d abstractC3971d) {
        this.f14624a = c4140v;
        this.f14625b = c4013g;
        this.f14626c = abstractC3972e;
        this.f14627d = abstractC3971d;
    }

    /* renamed from: f */
    private String m36842f() throws IOException {
        String mo37057e = this.f14626c.mo37057e(this.f14629f);
        this.f14629f -= mo37057e.length();
        return mo37057e;
    }

    /* renamed from: a */
    public final AbstractC3989r m36850a(long j) {
        if (this.f14628e == 1) {
            this.f14628e = 2;
            return new C4038d(j);
        }
        throw new IllegalStateException("state: " + this.f14628e);
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final AbstractC3989r mo36804a(C4146y c4146y, long j) {
        if ("chunked".equalsIgnoreCase(c4146y.m36340a("Transfer-Encoding"))) {
            return m36844d();
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        return m36850a(j);
    }

    /* renamed from: a */
    public final AbstractC3990s m36847a(C4134s c4134s) throws IOException {
        if (this.f14628e == 4) {
            this.f14628e = 5;
            return new C4037c(c4134s);
        }
        throw new IllegalStateException("state: " + this.f14628e);
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final C4098aa.C4099a mo36802a(boolean z) throws IOException {
        int i = this.f14628e;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.f14628e);
        }
        try {
            C4030k m36852a = C4030k.m36852a(m36842f());
            C4098aa.C4099a m36593a = new C4098aa.C4099a().m36592a(m36852a.f14621a).m36598a(m36852a.f14622b).m36590a(m36852a.f14623c).m36593a(m36845c());
            if (z && m36852a.f14622b == 100) {
                return null;
            }
            this.f14628e = 4;
            return m36593a;
        } catch (EOFException e) {
            IOException iOException = new IOException("unexpected end of stream on " + this.f14625b);
            iOException.initCause(e);
            throw iOException;
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final AbstractC4100ab mo36806a(C4098aa c4098aa) throws IOException {
        this.f14625b.f14561c.m36477f(this.f14625b.f14560b);
        String m36613a = c4098aa.m36613a("Content-Type");
        if (!C4024e.m36876b(c4098aa)) {
            return new C4027h(m36613a, 0L, C3979l.m37085a(m36846b(0L)));
        }
        if ("chunked".equalsIgnoreCase(c4098aa.m36613a("Transfer-Encoding"))) {
            return new C4027h(m36613a, -1L, C3979l.m37085a(m36847a(c4098aa.m36614a().m36341a())));
        }
        long m36882a = C4024e.m36882a(c4098aa);
        return m36882a != -1 ? new C4027h(m36613a, m36882a, C3979l.m37085a(m36846b(m36882a))) : new C4027h(m36613a, -1L, C3979l.m37085a(m36843e()));
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final void mo36807a() throws IOException {
        this.f14627d.flush();
    }

    /* renamed from: a */
    final void m36849a(C3976i c3976i) {
        C3991t m37094a = c3976i.m37094a();
        c3976i.m37093a(C3991t.f14462c);
        m37094a.mo37019f();
        m37094a.mo37020e();
    }

    /* renamed from: a */
    public final void m36848a(C4132r c4132r, String str) throws IOException {
        if (this.f14628e != 0) {
            throw new IllegalStateException("state: " + this.f14628e);
        }
        this.f14627d.mo37077b(str).mo37077b("\r\n");
        int m36471a = c4132r.m36471a();
        for (int i = 0; i < m36471a; i++) {
            this.f14627d.mo37077b(c4132r.m36470a(i)).mo37077b(": ").mo37077b(c4132r.m36466b(i)).mo37077b("\r\n");
        }
        this.f14627d.mo37077b("\r\n");
        this.f14628e = 1;
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final void mo36805a(C4146y c4146y) throws IOException {
        m36848a(c4146y.m36338c(), C4028i.m36862a(c4146y, this.f14625b.m36926b().mo36538a().m36574b().type()));
    }

    /* renamed from: b */
    public final AbstractC3990s m36846b(long j) throws IOException {
        if (this.f14628e == 4) {
            this.f14628e = 5;
            return new C4039e(j);
        }
        throw new IllegalStateException("state: " + this.f14628e);
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: b */
    public final void mo36801b() throws IOException {
        this.f14627d.flush();
    }

    /* renamed from: c */
    public final C4132r m36845c() throws IOException {
        C4132r.C4133a c4133a = new C4132r.C4133a();
        while (true) {
            String m36842f = m36842f();
            if (m36842f.length() != 0) {
                AbstractC3995a.f14478a.mo36362a(c4133a, m36842f);
            } else {
                return c4133a.m36463a();
            }
        }
    }

    /* renamed from: d */
    public final AbstractC3989r m36844d() {
        if (this.f14628e == 1) {
            this.f14628e = 2;
            return new C4036b();
        }
        throw new IllegalStateException("state: " + this.f14628e);
    }

    /* renamed from: e */
    public final AbstractC3990s m36843e() throws IOException {
        if (this.f14628e != 4) {
            throw new IllegalStateException("state: " + this.f14628e);
        }
        C4013g c4013g = this.f14625b;
        if (c4013g == null) {
            throw new IllegalStateException("streamAllocation == null");
        }
        this.f14628e = 5;
        c4013g.m36923d();
        return new C4040f();
    }
}

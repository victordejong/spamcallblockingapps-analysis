package io.grpc.internal;

import io.grpc.Status;
import java.io.Closeable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.DataFormatException;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9257k;
import p530d.p531a.AbstractC9302r;
import p530d.p531a.p532v0.AbstractC9377i1;
import p530d.p531a.p532v0.AbstractC9508v;
import p530d.p531a.p532v0.AbstractC9521w1;
import p530d.p531a.p532v0.C9325a2;
import p530d.p531a.p532v0.C9380j1;
import p530d.p531a.p532v0.C9486r;
import p530d.p531a.p532v0.C9507u1;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/MessageDeframer.class */
public class MessageDeframer implements Closeable, AbstractC9508v {

    /* renamed from: a */
    public AbstractC10365b f38230a;

    /* renamed from: b */
    public int f38231b;

    /* renamed from: c */
    public final C9507u1 f38232c;

    /* renamed from: d */
    public final C9325a2 f38233d;

    /* renamed from: e */
    public AbstractC9302r f38234e;

    /* renamed from: f */
    public GzipInflatingBuffer f38235f;

    /* renamed from: g */
    public byte[] f38236g;

    /* renamed from: h */
    public int f38237h;

    /* renamed from: k */
    public boolean f38240k;

    /* renamed from: l */
    public C9486r f38241l;

    /* renamed from: n */
    public long f38243n;

    /* renamed from: q */
    public int f38246q;

    /* renamed from: i */
    public State f38238i = State.HEADER;

    /* renamed from: j */
    public int f38239j = 5;

    /* renamed from: m */
    public C9486r f38242m = new C9486r();

    /* renamed from: o */
    public boolean f38244o = false;

    /* renamed from: p */
    public int f38245p = -1;

    /* renamed from: r */
    public boolean f38247r = false;

    /* renamed from: s */
    public volatile boolean f38248s = false;

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/MessageDeframer$State.class */
    public enum State {
        HEADER,
        BODY
    }

    /* renamed from: io.grpc.internal.MessageDeframer$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/MessageDeframer$a.class */
    public static /* synthetic */ class C10364a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38249a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f38249a = iArr;
            try {
                iArr[State.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38249a[State.BODY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: io.grpc.internal.MessageDeframer$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/MessageDeframer$b.class */
    public interface AbstractC10365b {
        /* renamed from: a */
        void mo325a(AbstractC9521w1.AbstractC9522a aVar);

        /* renamed from: a */
        void mo324a(Throwable th);

        /* renamed from: a */
        void mo323a(boolean z);

        /* renamed from: c */
        void mo322c(int i);
    }

    /* renamed from: io.grpc.internal.MessageDeframer$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/MessageDeframer$c.class */
    public static class C10366c implements AbstractC9521w1.AbstractC9522a {

        /* renamed from: a */
        public InputStream f38250a;

        public C10366c(InputStream inputStream) {
            this.f38250a = inputStream;
        }

        public /* synthetic */ C10366c(InputStream inputStream, C10364a aVar) {
            this(inputStream);
        }

        @Override // p530d.p531a.p532v0.AbstractC9521w1.AbstractC9522a
        public InputStream next() {
            InputStream inputStream = this.f38250a;
            this.f38250a = null;
            return inputStream;
        }
    }

    /* renamed from: io.grpc.internal.MessageDeframer$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/MessageDeframer$d.class */
    public static final class C10367d extends FilterInputStream {

        /* renamed from: a */
        public final int f38251a;

        /* renamed from: b */
        public final C9507u1 f38252b;

        /* renamed from: c */
        public long f38253c;

        /* renamed from: d */
        public long f38254d;

        /* renamed from: e */
        public long f38255e = -1;

        public C10367d(InputStream inputStream, int i, C9507u1 u1Var) {
            super(inputStream);
            this.f38251a = i;
            this.f38252b = u1Var;
        }

        /* renamed from: a */
        public final void m321a() {
            long j = this.f38254d;
            long j2 = this.f38253c;
            if (j > j2) {
                this.f38252b.m2576a(j - j2);
                this.f38253c = this.f38254d;
            }
        }

        /* renamed from: b */
        public final void m320b() {
            long j = this.f38254d;
            int i = this.f38251a;
            if (j > i) {
                throw Status.f37994l.m609b(String.format("Compressed gRPC message exceeds maximum size %d: %d bytes read", Integer.valueOf(i), Long.valueOf(this.f38254d))).m610b();
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public void mark(int i) {
            synchronized (this) {
                ((FilterInputStream) this).in.mark(i);
                this.f38255e = this.f38254d;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f38254d++;
            }
            m320b();
            m321a();
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = ((FilterInputStream) this).in.read(bArr, i, i2);
            if (read != -1) {
                this.f38254d += read;
            }
            m320b();
            m321a();
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public void reset() throws IOException {
            synchronized (this) {
                if (!((FilterInputStream) this).in.markSupported()) {
                    throw new IOException("Mark not supported");
                } else if (this.f38255e != -1) {
                    ((FilterInputStream) this).in.reset();
                    this.f38254d = this.f38255e;
                } else {
                    throw new IOException("Mark not set");
                }
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long skip = ((FilterInputStream) this).in.skip(j);
            this.f38254d += skip;
            m320b();
            m321a();
            return skip;
        }
    }

    public MessageDeframer(AbstractC10365b bVar, AbstractC9302r rVar, int i, C9507u1 u1Var, C9325a2 a2Var) {
        C4933n.m24794a(bVar, "sink");
        this.f38230a = bVar;
        C4933n.m24794a(rVar, "decompressor");
        this.f38234e = rVar;
        this.f38231b = i;
        C4933n.m24794a(u1Var, "statsTraceCtx");
        this.f38232c = u1Var;
        C4933n.m24794a(a2Var, "transportTracer");
        this.f38233d = a2Var;
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo341a() {
        if (!isClosed()) {
            if (m330f()) {
                close();
            } else {
                this.f38247r = true;
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo340a(int i) {
        C4933n.m24790a(i > 0, "numMessages must be > 0");
        if (!isClosed()) {
            this.f38243n += i;
            m335b();
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo339a(AbstractC9302r rVar) {
        C4933n.m24775b(this.f38235f == null, "Already set full stream decompressor");
        C4933n.m24794a(rVar, "Can't pass an empty decompressor");
        this.f38234e = rVar;
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo338a(AbstractC9377i1 i1Var) {
        C4933n.m24794a(i1Var, "data");
        boolean z = true;
        boolean z2 = true;
        try {
            if (!m331e()) {
                if (this.f38235f != null) {
                    this.f38235f.m512a(i1Var);
                } else {
                    this.f38242m.m2641a(i1Var);
                }
                z2 = false;
                z = false;
                m335b();
            }
            if (z) {
                i1Var.close();
            }
        } catch (Throwable th) {
            if (z2) {
                i1Var.close();
            }
            throw th;
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: a */
    public void mo337a(GzipInflatingBuffer gzipInflatingBuffer) {
        boolean z = true;
        C4933n.m24775b(this.f38234e == AbstractC9257k.C9259b.f35812a, "per-message decompressor already set");
        if (this.f38235f != null) {
            z = false;
        }
        C4933n.m24775b(z, "full stream decompressor already set");
        C4933n.m24794a(gzipInflatingBuffer, "Can't pass a null full stream decompressor");
        this.f38235f = gzipInflatingBuffer;
        this.f38242m = null;
    }

    /* renamed from: a */
    public void m336a(AbstractC10365b bVar) {
        this.f38230a = bVar;
    }

    /* renamed from: b */
    public final void m335b() {
        if (!this.f38244o) {
            this.f38244o = true;
            while (!this.f38248s && this.f38243n > 0 && m327i()) {
                try {
                    int i = C10364a.f38249a[this.f38238i.ordinal()];
                    if (i == 1) {
                        m328h();
                    } else if (i == 2) {
                        m329g();
                        this.f38243n--;
                    } else {
                        throw new AssertionError("Invalid state: " + this.f38238i);
                    }
                } catch (Throwable th) {
                    this.f38244o = false;
                    throw th;
                }
            }
            if (this.f38248s) {
                close();
                this.f38244o = false;
                return;
            }
            if (this.f38247r && m330f()) {
                close();
            }
            this.f38244o = false;
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9508v
    /* renamed from: b */
    public void mo334b(int i) {
        this.f38231b = i;
    }

    /* renamed from: c */
    public final InputStream m333c() {
        AbstractC9302r rVar = this.f38234e;
        if (rVar != AbstractC9257k.C9259b.f35812a) {
            try {
                return new C10367d(rVar.mo2972a(C9380j1.m2865a((AbstractC9377i1) this.f38241l, true)), this.f38231b, this.f38232c);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            throw Status.f37995m.m609b("Can't decode compressed gRPC message as compression not configured").m610b();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.Closeable, java.lang.AutoCloseable, p530d.p531a.p532v0.AbstractC9508v
    public void close() {
        if (!isClosed()) {
            C9486r rVar = this.f38241l;
            boolean z = rVar != null && rVar.mo2358Y() > 0;
            boolean z2 = z;
            try {
                if (this.f38235f != null) {
                    z2 = true;
                    if (!z) {
                        z2 = this.f38235f.m502d();
                    }
                    this.f38235f.close();
                }
                if (this.f38242m != null) {
                    this.f38242m.close();
                }
                if (this.f38241l != null) {
                    this.f38241l.close();
                }
                this.f38235f = null;
                this.f38242m = null;
                this.f38241l = null;
                this.f38230a.mo323a(z2);
            } catch (Throwable th) {
                this.f38235f = null;
                this.f38242m = null;
                this.f38241l = null;
                throw th;
            }
        }
    }

    /* renamed from: d */
    public final InputStream m332d() {
        this.f38232c.m2576a(this.f38241l.mo2358Y());
        return C9380j1.m2865a((AbstractC9377i1) this.f38241l, true);
    }

    /* renamed from: e */
    public final boolean m331e() {
        return isClosed() || this.f38247r;
    }

    /* renamed from: f */
    public final boolean m330f() {
        GzipInflatingBuffer gzipInflatingBuffer = this.f38235f;
        if (gzipInflatingBuffer != null) {
            return gzipInflatingBuffer.m498f();
        }
        return this.f38242m.mo2358Y() == 0;
    }

    /* renamed from: g */
    public final void m329g() {
        this.f38232c.m2577a(this.f38245p, this.f38246q, -1L);
        this.f38246q = 0;
        InputStream c = this.f38240k ? m333c() : m332d();
        this.f38241l = null;
        this.f38230a.mo325a(new C10366c(c, null));
        this.f38238i = State.HEADER;
        this.f38239j = 5;
    }

    /* renamed from: h */
    public final void m328h() {
        int readUnsignedByte = this.f38241l.readUnsignedByte();
        if ((readUnsignedByte & 254) == 0) {
            this.f38240k = (readUnsignedByte & 1) != 0;
            int readInt = this.f38241l.readInt();
            this.f38239j = readInt;
            if (readInt < 0 || readInt > this.f38231b) {
                throw Status.f37994l.m609b(String.format("gRPC message exceeds maximum size %d: %d", Integer.valueOf(this.f38231b), Integer.valueOf(this.f38239j))).m610b();
            }
            int i = this.f38245p + 1;
            this.f38245p = i;
            this.f38232c.m2578a(i);
            this.f38233d.m2919c();
            this.f38238i = State.BODY;
            return;
        }
        throw Status.f37995m.m609b("gRPC frame header malformed: reserved bits not zero").m610b();
    }

    /* renamed from: i */
    public final boolean m327i() {
        int i;
        Throwable th;
        int i2 = 0;
        try {
            if (this.f38241l == null) {
                this.f38241l = new C9486r();
            }
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i2 = i3;
                i = i4;
                try {
                    int Y = this.f38239j - this.f38241l.mo2358Y();
                    if (Y > 0) {
                        if (this.f38235f != null) {
                            i2 = i3;
                            i = i4;
                            try {
                                if (this.f38236g == null || this.f38237h == this.f38236g.length) {
                                    this.f38236g = new byte[Math.min(Y, 2097152)];
                                    this.f38237h = 0;
                                }
                                int c = this.f38235f.m503c(this.f38236g, this.f38237h, Math.min(Y, this.f38236g.length - this.f38237h));
                                i3 += this.f38235f.m509b();
                                i4 += this.f38235f.m505c();
                                if (c != 0) {
                                    this.f38241l.m2641a(C9380j1.m2864a(this.f38236g, this.f38237h, c));
                                    this.f38237h += c;
                                } else if (i3 <= 0) {
                                    return false;
                                } else {
                                    this.f38230a.mo322c(i3);
                                    if (this.f38238i != State.BODY) {
                                        return false;
                                    }
                                    if (this.f38235f != null) {
                                        this.f38232c.m2569b(i4);
                                        this.f38246q += i4;
                                        return false;
                                    }
                                    this.f38232c.m2569b(i3);
                                    this.f38246q += i3;
                                    return false;
                                }
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            } catch (DataFormatException e2) {
                                throw new RuntimeException(e2);
                            }
                        } else if (this.f38242m.mo2358Y() != 0) {
                            int min = Math.min(Y, this.f38242m.mo2358Y());
                            i3 += min;
                            this.f38241l.m2641a(this.f38242m.mo2356f(min));
                        } else if (i3 <= 0) {
                            return false;
                        } else {
                            this.f38230a.mo322c(i3);
                            if (this.f38238i != State.BODY) {
                                return false;
                            }
                            if (this.f38235f != null) {
                                this.f38232c.m2569b(i4);
                                this.f38246q += i4;
                                return false;
                            }
                            this.f38232c.m2569b(i3);
                            this.f38246q += i3;
                            return false;
                        }
                    } else if (i3 <= 0) {
                        return true;
                    } else {
                        this.f38230a.mo322c(i3);
                        if (this.f38238i != State.BODY) {
                            return true;
                        }
                        if (this.f38235f != null) {
                            this.f38232c.m2569b(i4);
                            this.f38246q += i4;
                            return true;
                        }
                        this.f38232c.m2569b(i3);
                        this.f38246q += i3;
                        return true;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (i2 > 0) {
                        this.f38230a.mo322c(i2);
                        if (this.f38238i == State.BODY) {
                            if (this.f38235f != null) {
                                this.f38232c.m2569b(i);
                                this.f38246q += i;
                            } else {
                                this.f38232c.m2569b(i2);
                                this.f38246q += i2;
                            }
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            i = 0;
        }
    }

    public boolean isClosed() {
        return this.f38242m == null && this.f38235f == null;
    }

    /* renamed from: j */
    public void m326j() {
        this.f38248s = true;
    }
}

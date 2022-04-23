package p530d.p531a.p532v0;

import io.grpc.Status;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p271e.C5052a;
import p530d.p531a.AbstractC9226e0;
import p530d.p531a.AbstractC9257k;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.AbstractC9309t;
/* renamed from: d.a.v0.y0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/y0.class */
public class C9548y0 implements AbstractC9376i0 {

    /* renamed from: a */
    public final AbstractC9552d f36432a;

    /* renamed from: c */
    public AbstractC9333b2 f36434c;

    /* renamed from: h */
    public final AbstractC9337c2 f36439h;

    /* renamed from: i */
    public final C9507u1 f36440i;

    /* renamed from: j */
    public boolean f36441j;

    /* renamed from: k */
    public int f36442k;

    /* renamed from: m */
    public long f36444m;

    /* renamed from: b */
    public int f36433b = -1;

    /* renamed from: d */
    public AbstractC9270l f36435d = AbstractC9257k.C9259b.f35812a;

    /* renamed from: e */
    public boolean f36436e = true;

    /* renamed from: f */
    public final C9551c f36437f = new C9551c();

    /* renamed from: g */
    public final byte[] f36438g = new byte[5];

    /* renamed from: l */
    public int f36443l = -1;

    /* renamed from: d.a.v0.y0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/y0$b.class */
    public final class C9550b extends OutputStream {

        /* renamed from: a */
        public final List<AbstractC9333b2> f36445a;

        /* renamed from: b */
        public AbstractC9333b2 f36446b;

        public C9550b() {
            this.f36445a = new ArrayList();
        }

        /* renamed from: Y */
        public final int m2499Y() {
            int i = 0;
            for (AbstractC9333b2 b2Var : this.f36445a) {
                i += b2Var.mo2350Y();
            }
            return i;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            AbstractC9333b2 b2Var = this.f36446b;
            if (b2Var == null || b2Var.mo2347b() <= 0) {
                write(new byte[]{(byte) i}, 0, 1);
            } else {
                this.f36446b.mo2348a((byte) i);
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            int i3 = i;
            int i4 = i2;
            if (this.f36446b == null) {
                AbstractC9333b2 a = C9548y0.this.f36439h.mo2345a(i2);
                this.f36446b = a;
                this.f36445a.add(a);
                i4 = i2;
                i3 = i;
            }
            while (i4 > 0) {
                int min = Math.min(i4, this.f36446b.mo2347b());
                if (min == 0) {
                    AbstractC9333b2 a2 = C9548y0.this.f36439h.mo2345a(Math.max(i4, this.f36446b.mo2350Y() * 2));
                    this.f36446b = a2;
                    this.f36445a.add(a2);
                } else {
                    this.f36446b.write(bArr, i3, min);
                    i3 += min;
                    i4 -= min;
                }
            }
        }
    }

    /* renamed from: d.a.v0.y0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/y0$c.class */
    public class C9551c extends OutputStream {
        public C9551c() {
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            write(new byte[]{(byte) i}, 0, 1);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C9548y0.this.m2505a(bArr, i, i2);
        }
    }

    /* renamed from: d.a.v0.y0$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/y0$d.class */
    public interface AbstractC9552d {
        /* renamed from: a */
        void mo2496a(AbstractC9333b2 b2Var, boolean z, boolean z2, int i);
    }

    public C9548y0(AbstractC9552d dVar, AbstractC9337c2 c2Var, C9507u1 u1Var) {
        C4933n.m24794a(dVar, "sink");
        this.f36432a = dVar;
        C4933n.m24794a(c2Var, "bufferAllocator");
        this.f36439h = c2Var;
        C4933n.m24794a(u1Var, "statsTraceCtx");
        this.f36440i = u1Var;
    }

    /* renamed from: a */
    public static int m2507a(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream instanceof AbstractC9309t) {
            return ((AbstractC9309t) inputStream).mo2178a(outputStream);
        }
        long a = C5052a.m24598a(inputStream, outputStream);
        C4933n.m24785a(a <= 2147483647L, "Message size overflow: %s", a);
        return (int) a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final int m2508a(InputStream inputStream, int i) throws IOException {
        C9550b bVar = new C9550b();
        OutputStream a = this.f36435d.mo3033a(bVar);
        try {
            int a2 = m2507a(inputStream, a);
            a.close();
            int i2 = this.f36433b;
            if (i2 < 0 || a2 <= i2) {
                m2512a(bVar, true);
                return a2;
            }
            throw Status.f37994l.m609b(String.format("message too large %d > %d", Integer.valueOf(a2), Integer.valueOf(this.f36433b))).m610b();
        } catch (Throwable th) {
            a.close();
            throw th;
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9376i0
    /* renamed from: a */
    public C9548y0 mo2513a(AbstractC9270l lVar) {
        C4933n.m24794a(lVar, "Can't pass an empty compressor");
        this.f36435d = lVar;
        return this;
    }

    /* renamed from: a */
    public final void m2514a() {
        AbstractC9333b2 b2Var = this.f36434c;
        if (b2Var != null) {
            b2Var.mo2349a();
            this.f36434c = null;
        }
    }

    /* renamed from: a */
    public final void m2512a(C9550b bVar, boolean z) {
        ByteBuffer wrap = ByteBuffer.wrap(this.f36438g);
        wrap.put(z ? (byte) 1 : (byte) 0);
        int Y = bVar.m2499Y();
        wrap.putInt(Y);
        AbstractC9333b2 a = this.f36439h.mo2345a(5);
        a.write(this.f36438g, 0, wrap.position());
        if (Y == 0) {
            this.f36434c = a;
            return;
        }
        this.f36432a.mo2496a(a, false, false, this.f36442k - 1);
        this.f36442k = 1;
        List list = bVar.f36445a;
        for (int i = 0; i < list.size() - 1; i++) {
            this.f36432a.mo2496a((AbstractC9333b2) list.get(i), false, false, 0);
        }
        this.f36434c = (AbstractC9333b2) list.get(list.size() - 1);
        this.f36444m = Y;
    }

    @Override // p530d.p531a.p532v0.AbstractC9376i0
    /* renamed from: a */
    public void mo2509a(InputStream inputStream) {
        m2504b();
        this.f36442k++;
        int i = this.f36443l + 1;
        this.f36443l = i;
        this.f36444m = 0L;
        this.f36440i.m2571b(i);
        boolean z = this.f36436e && this.f36435d != AbstractC9257k.C9259b.f35812a;
        try {
            int b = m2503b(inputStream);
            int c = (b == 0 || !z) ? m2500c(inputStream, b) : m2508a(inputStream, b);
            if (b == -1 || c == b) {
                long j = c;
                this.f36440i.m2568c(j);
                this.f36440i.m2567d(this.f36444m);
                this.f36440i.m2570b(this.f36443l, this.f36444m, j);
                return;
            }
            throw Status.f37995m.m609b(String.format("Message length inaccurate %s != %s", Integer.valueOf(c), Integer.valueOf(b))).m610b();
        } catch (IOException e) {
            throw Status.f37995m.m609b("Failed to frame message").m612a(e).m610b();
        } catch (RuntimeException e2) {
            throw Status.f37995m.m609b("Failed to frame message").m612a(e2).m610b();
        }
    }

    /* renamed from: a */
    public final void m2506a(boolean z, boolean z2) {
        AbstractC9333b2 b2Var = this.f36434c;
        this.f36434c = null;
        this.f36432a.mo2496a(b2Var, z, z2, this.f36442k);
        this.f36442k = 0;
    }

    /* renamed from: a */
    public final void m2505a(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            AbstractC9333b2 b2Var = this.f36434c;
            if (b2Var != null && b2Var.mo2347b() == 0) {
                m2506a(false, false);
            }
            if (this.f36434c == null) {
                this.f36434c = this.f36439h.mo2345a(i2);
            }
            int min = Math.min(i2, this.f36434c.mo2347b());
            this.f36434c.write(bArr, i, min);
            i += min;
            i2 -= min;
        }
    }

    /* renamed from: b */
    public final int m2503b(InputStream inputStream) throws IOException {
        if ((inputStream instanceof AbstractC9226e0) || (inputStream instanceof ByteArrayInputStream)) {
            return inputStream.available();
        }
        return -1;
    }

    /* renamed from: b */
    public final int m2502b(InputStream inputStream, int i) throws IOException {
        int i2 = this.f36433b;
        if (i2 < 0 || i <= i2) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f36438g);
            wrap.put((byte) 0);
            wrap.putInt(i);
            if (this.f36434c == null) {
                this.f36434c = this.f36439h.mo2345a(wrap.position() + i);
            }
            m2505a(this.f36438g, 0, wrap.position());
            return m2507a(inputStream, this.f36437f);
        }
        throw Status.f37994l.m609b(String.format("message too large %d > %d", Integer.valueOf(i), Integer.valueOf(this.f36433b))).m610b();
    }

    /* renamed from: b */
    public final void m2504b() {
        if (isClosed()) {
            throw new IllegalStateException("Framer already closed");
        }
    }

    /* renamed from: c */
    public final int m2500c(InputStream inputStream, int i) throws IOException {
        if (i != -1) {
            this.f36444m = i;
            return m2502b(inputStream, i);
        }
        C9550b bVar = new C9550b();
        int a = m2507a(inputStream, bVar);
        int i2 = this.f36433b;
        if (i2 < 0 || a <= i2) {
            m2512a(bVar, false);
            return a;
        }
        throw Status.f37994l.m609b(String.format("message too large %d > %d", Integer.valueOf(a), Integer.valueOf(this.f36433b))).m610b();
    }

    @Override // p530d.p531a.p532v0.AbstractC9376i0
    /* renamed from: c */
    public void mo2501c(int i) {
        C4933n.m24775b(this.f36433b == -1, "max size already set");
        this.f36433b = i;
    }

    @Override // p530d.p531a.p532v0.AbstractC9376i0
    public void close() {
        if (!isClosed()) {
            this.f36441j = true;
            AbstractC9333b2 b2Var = this.f36434c;
            if (b2Var != null && b2Var.mo2350Y() == 0) {
                m2514a();
            }
            m2506a(true, true);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9376i0
    public void flush() {
        AbstractC9333b2 b2Var = this.f36434c;
        if (b2Var != null && b2Var.mo2350Y() > 0) {
            m2506a(false, true);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9376i0
    public boolean isClosed() {
        return this.f36441j;
    }
}

package p530d.p531a.p532v0;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9226e0;
/* renamed from: d.a.v0.j1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/j1.class */
public final class C9380j1 {

    /* renamed from: d.a.v0.j1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/j1$a.class */
    public class C9381a extends AbstractC9369h0 {
        public C9381a(AbstractC9377i1 i1Var) {
            super(i1Var);
        }

        @Override // p530d.p531a.p532v0.AbstractC9377i1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    /* renamed from: d.a.v0.j1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/j1$b.class */
    public static final class C9382b extends InputStream implements AbstractC9226e0 {

        /* renamed from: a */
        public final AbstractC9377i1 f36045a;

        public C9382b(AbstractC9377i1 i1Var) {
            C4933n.m24794a(i1Var, "buffer");
            this.f36045a = i1Var;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f36045a.mo2358Y();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f36045a.close();
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f36045a.mo2358Y() == 0) {
                return -1;
            }
            return this.f36045a.readUnsignedByte();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (this.f36045a.mo2358Y() == 0) {
                return -1;
            }
            int min = Math.min(this.f36045a.mo2358Y(), i2);
            this.f36045a.mo2357a(bArr, i, min);
            return min;
        }
    }

    /* renamed from: d.a.v0.j1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/j1$c.class */
    public static class C9383c extends AbstractC9334c {

        /* renamed from: a */
        public int f36046a;

        /* renamed from: b */
        public final int f36047b;

        /* renamed from: c */
        public final byte[] f36048c;

        public C9383c(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        public C9383c(byte[] bArr, int i, int i2) {
            boolean z = true;
            C4933n.m24790a(i >= 0, "offset must be >= 0");
            C4933n.m24790a(i2 >= 0, "length must be >= 0");
            int i3 = i2 + i;
            if (i3 > bArr.length) {
                z = false;
            }
            C4933n.m24790a(z, "offset + length exceeds array boundary");
            C4933n.m24794a(bArr, "bytes");
            this.f36048c = bArr;
            this.f36046a = i;
            this.f36047b = i3;
        }

        @Override // p530d.p531a.p532v0.AbstractC9377i1
        /* renamed from: Y */
        public int mo2358Y() {
            return this.f36047b - this.f36046a;
        }

        @Override // p530d.p531a.p532v0.AbstractC9377i1
        /* renamed from: a */
        public void mo2357a(byte[] bArr, int i, int i2) {
            System.arraycopy(this.f36048c, this.f36046a, bArr, i, i2);
            this.f36046a += i2;
        }

        @Override // p530d.p531a.p532v0.AbstractC9377i1
        /* renamed from: f */
        public C9383c mo2356f(int i) {
            m2912a(i);
            int i2 = this.f36046a;
            this.f36046a = i2 + i;
            return new C9383c(this.f36048c, i2, i);
        }

        @Override // p530d.p531a.p532v0.AbstractC9377i1
        public int readUnsignedByte() {
            m2912a(1);
            byte[] bArr = this.f36048c;
            int i = this.f36046a;
            this.f36046a = i + 1;
            return bArr[i] & 255;
        }
    }

    static {
        new C9383c(new byte[0]);
    }

    /* renamed from: a */
    public static AbstractC9377i1 m2867a(AbstractC9377i1 i1Var) {
        return new C9381a(i1Var);
    }

    /* renamed from: a */
    public static AbstractC9377i1 m2864a(byte[] bArr, int i, int i2) {
        return new C9383c(bArr, i, i2);
    }

    /* renamed from: a */
    public static InputStream m2865a(AbstractC9377i1 i1Var, boolean z) {
        if (!z) {
            i1Var = m2867a(i1Var);
        }
        return new C9382b(i1Var);
    }

    /* renamed from: a */
    public static String m2866a(AbstractC9377i1 i1Var, Charset charset) {
        C4933n.m24794a(charset, "charset");
        return new String(m2863b(i1Var), charset);
    }

    /* renamed from: b */
    public static byte[] m2863b(AbstractC9377i1 i1Var) {
        C4933n.m24794a(i1Var, "buffer");
        int Y = i1Var.mo2358Y();
        byte[] bArr = new byte[Y];
        i1Var.mo2357a(bArr, 0, Y);
        return bArr;
    }
}

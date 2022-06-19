package p193e.p1545k.p1546a.p1548b.p1552w;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.b.w.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/k.class */
public final class C23405k extends Writer {

    /* renamed from: a */
    public final C23396b f64821a;

    /* renamed from: b */
    public OutputStream f64822b;

    /* renamed from: c */
    public byte[] f64823c;

    /* renamed from: d */
    public final int f64824d;

    /* renamed from: e */
    public int f64825e = 0;

    /* renamed from: f */
    public int f64826f;

    public C23405k(C23396b c23396b, OutputStream outputStream) {
        this.f64821a = c23396b;
        this.f64822b = outputStream;
        c23396b.m7134a(c23396b.f64783f);
        byte[] m7254a = c23396b.f64781d.m7254a(1);
        c23396b.f64783f = m7254a;
        this.f64823c = m7254a;
        this.f64824d = m7254a.length - 4;
    }

    /* renamed from: d */
    public static void m7090d(int i) throws IOException {
        throw new IOException(m7089j(i));
    }

    /* renamed from: j */
    public static String m7089j(int i) {
        if (i > 1114111) {
            StringBuilder m8728C = C22128a.m8728C("Illegal character point (0x");
            m8728C.append(Integer.toHexString(i));
            m8728C.append(") to output; max is 0x10FFFF as per RFC 4627");
            return m8728C.toString();
        } else if (i < 55296) {
            StringBuilder m8728C2 = C22128a.m8728C("Illegal character point (0x");
            m8728C2.append(Integer.toHexString(i));
            m8728C2.append(") to output");
            return m8728C2.toString();
        } else if (i <= 56319) {
            StringBuilder m8728C3 = C22128a.m8728C("Unmatched first part of surrogate pair (0x");
            m8728C3.append(Integer.toHexString(i));
            m8728C3.append(")");
            return m8728C3.toString();
        } else {
            StringBuilder m8728C4 = C22128a.m8728C("Unmatched second part of surrogate pair (0x");
            m8728C4.append(Integer.toHexString(i));
            m8728C4.append(")");
            return m8728C4.toString();
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        write(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public Appendable mo49650append(char c) throws IOException {
        write(c);
        return this;
    }

    /* renamed from: b */
    public int m7091b(int i) throws IOException {
        int i2 = this.f64826f;
        this.f64826f = 0;
        if (i < 56320 || i > 57343) {
            StringBuilder m8728C = C22128a.m8728C("Broken surrogate pair: first char 0x");
            m8728C.append(Integer.toHexString(i2));
            m8728C.append(", second 0x");
            m8728C.append(Integer.toHexString(i));
            m8728C.append("; illegal combination");
            throw new IOException(m8728C.toString());
        }
        return (i - 56320) + ((i2 - 55296) << 10) + 65536;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f64822b;
        if (outputStream != null) {
            int i = this.f64825e;
            if (i > 0) {
                outputStream.write(this.f64823c, 0, i);
                this.f64825e = 0;
            }
            OutputStream outputStream2 = this.f64822b;
            this.f64822b = null;
            byte[] bArr = this.f64823c;
            if (bArr != null) {
                this.f64823c = null;
                C23396b c23396b = this.f64821a;
                Objects.requireNonNull(c23396b);
                c23396b.m7133b(bArr, c23396b.f64783f);
                c23396b.f64783f = null;
                c23396b.f64781d.f64563a.set(1, bArr);
            }
            outputStream2.close();
            int i2 = this.f64826f;
            this.f64826f = 0;
            if (i2 <= 0) {
                return;
            }
            m7090d(i2);
            throw null;
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.f64822b;
        if (outputStream != null) {
            int i = this.f64825e;
            if (i > 0) {
                outputStream.write(this.f64823c, 0, i);
                this.f64825e = 0;
            }
            this.f64822b.flush();
        }
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        int i2;
        int i3;
        if (this.f64826f > 0) {
            i2 = m7091b(i);
        } else {
            i2 = i;
            if (i >= 55296) {
                i2 = i;
                if (i <= 57343) {
                    if (i <= 56319) {
                        this.f64826f = i;
                        return;
                    } else {
                        m7090d(i);
                        throw null;
                    }
                }
            }
        }
        int i4 = this.f64825e;
        if (i4 >= this.f64824d) {
            this.f64822b.write(this.f64823c, 0, i4);
            this.f64825e = 0;
        }
        if (i2 < 128) {
            byte[] bArr = this.f64823c;
            int i5 = this.f64825e;
            this.f64825e = i5 + 1;
            bArr[i5] = (byte) i2;
            return;
        }
        int i6 = this.f64825e;
        if (i2 < 2048) {
            byte[] bArr2 = this.f64823c;
            int i7 = i6 + 1;
            bArr2[i6] = (byte) ((i2 >> 6) | 192);
            i3 = i7 + 1;
            bArr2[i7] = (byte) ((i2 & 63) | 128);
        } else if (i2 <= 65535) {
            byte[] bArr3 = this.f64823c;
            int i8 = i6 + 1;
            bArr3[i6] = (byte) ((i2 >> 12) | 224);
            int i9 = i8 + 1;
            bArr3[i8] = (byte) (((i2 >> 6) & 63) | 128);
            bArr3[i9] = (byte) ((i2 & 63) | 128);
            i3 = i9 + 1;
        } else if (i2 > 1114111) {
            m7090d(i2);
            throw null;
        } else {
            byte[] bArr4 = this.f64823c;
            int i10 = i6 + 1;
            bArr4[i6] = (byte) ((i2 >> 18) | 240);
            int i11 = i10 + 1;
            bArr4[i10] = (byte) (((i2 >> 12) & 63) | 128);
            int i12 = i11 + 1;
            bArr4[i11] = (byte) (((i2 >> 6) & 63) | 128);
            i3 = i12 + 1;
            bArr4[i12] = (byte) ((i2 & 63) | 128);
        }
        this.f64825e = i3;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0236, code lost:
        r5.f64825e = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x023c, code lost:
        return;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(java.lang.String r6, int r7, int r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1552w.C23405k.write(java.lang.String, int, int):void");
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x022c, code lost:
        r5.f64825e = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0232, code lost:
        return;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(char[] r6, int r7, int r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1552w.C23405k.write(char[], int, int):void");
    }
}

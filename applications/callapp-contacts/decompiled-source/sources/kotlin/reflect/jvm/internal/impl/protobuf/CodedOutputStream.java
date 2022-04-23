package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream.class */
public final class CodedOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f38104a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38105b;
    private final OutputStream e;

    /* renamed from: d  reason: collision with root package name */
    private int f38107d = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f38106c = 0;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream$OutOfSpaceException.class */
    public static class OutOfSpaceException extends IOException {
        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.e = outputStream;
        this.f38104a = bArr;
        this.f38105b = bArr.length;
    }

    public static int a(l lVar) {
        int b2 = lVar.b();
        return f(b2) + b2;
    }

    public static CodedOutputStream a(OutputStream outputStream, int i) {
        return new CodedOutputStream(outputStream, new byte[i]);
    }

    private void a(byte b2) throws IOException {
        if (this.f38106c == this.f38105b) {
            b();
        }
        byte[] bArr = this.f38104a;
        int i = this.f38106c;
        this.f38106c = i + 1;
        bArr[i] = b2;
        this.f38107d++;
    }

    private void a(d dVar, int i) throws IOException {
        int i2 = this.f38105b;
        int i3 = this.f38106c;
        if (i2 - i3 >= i) {
            dVar.b(this.f38104a, 0, i3, i);
            this.f38106c += i;
        } else {
            int i4 = i2 - i3;
            dVar.b(this.f38104a, 0, i3, i4);
            int i5 = i4 + 0;
            i -= i4;
            this.f38106c = this.f38105b;
            this.f38107d += i4;
            b();
            if (i <= this.f38105b) {
                dVar.b(this.f38104a, i5, 0, i);
                this.f38106c = i;
            } else {
                dVar.a(this.e, i5, i);
            }
        }
        this.f38107d += i;
    }

    private void a(byte[] bArr, int i) throws IOException {
        int i2 = this.f38105b;
        int i3 = this.f38106c;
        if (i2 - i3 >= i) {
            System.arraycopy(bArr, 0, this.f38104a, i3, i);
            this.f38106c += i;
        } else {
            int i4 = i2 - i3;
            System.arraycopy(bArr, 0, this.f38104a, i3, i4);
            int i5 = i4 + 0;
            i -= i4;
            this.f38106c = this.f38105b;
            this.f38107d += i4;
            b();
            if (i <= this.f38105b) {
                System.arraycopy(bArr, i5, this.f38104a, 0, i);
                this.f38106c = i;
            } else {
                this.e.write(bArr, i5, i);
            }
        }
        this.f38107d += i;
    }

    public static int b(long j) {
        return d(2) + d(f(j));
    }

    public static int b(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return f(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.", e);
        }
    }

    public static int b(d dVar) {
        return d(6) + c(dVar);
    }

    public static int b(p pVar) {
        int f = pVar.f();
        return f(f) + f;
    }

    public static int b(byte[] bArr) {
        return f(bArr.length) + bArr.length;
    }

    private void b() throws IOException {
        OutputStream outputStream = this.e;
        if (outputStream != null) {
            outputStream.write(this.f38104a, 0, this.f38106c);
            this.f38106c = 0;
            return;
        }
        throw new OutOfSpaceException();
    }

    public static int c(int i) {
        if (i >= 0) {
            return f(i);
        }
        return 10;
    }

    public static int c(int i, int i2) {
        return d(i) + c(i2);
    }

    public static int c(int i, p pVar) {
        return d(i) + b(pVar);
    }

    public static int c(d dVar) {
        return f(dVar.a()) + dVar.a();
    }

    public static int d(int i) {
        return f(x.a(i, 0));
    }

    public static int d(int i, int i2) {
        return d(i) + c(i2);
    }

    public static int d(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int f(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static long f(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int h(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public final void a() throws IOException {
        if (this.e != null) {
            b();
        }
    }

    public final void a(double d2) throws IOException {
        e(Double.doubleToRawLongBits(d2));
    }

    public final void a(float f) throws IOException {
        g(Float.floatToRawIntBits(f));
    }

    public final void a(int i) throws IOException {
        if (i >= 0) {
            e(i);
        } else {
            c(i);
        }
    }

    public final void a(int i, int i2) throws IOException {
        e(i, 0);
        a(i2);
    }

    public final void a(int i, d dVar) throws IOException {
        e(i, 2);
        a(dVar);
    }

    public final void a(int i, p pVar) throws IOException {
        e(i, 2);
        a(pVar);
    }

    public final void a(long j) throws IOException {
        c(f(j));
    }

    public final void a(String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        e(bytes.length);
        a(bytes, bytes.length);
    }

    public final void a(d dVar) throws IOException {
        e(dVar.a());
        d(dVar);
    }

    public final void a(p pVar) throws IOException {
        e(pVar.f());
        pVar.a(this);
    }

    public final void a(boolean z) throws IOException {
        e(3, 0);
        b(z);
    }

    public final void a(byte[] bArr) throws IOException {
        e(bArr.length);
        a(bArr, bArr.length);
    }

    public final void b(int i) throws IOException {
        e(h(i));
    }

    public final void b(int i, int i2) throws IOException {
        e(i, 0);
        a(i2);
    }

    public final void b(int i, p pVar) throws IOException {
        e(1, 3);
        e(2, 0);
        e(i);
        a(3, pVar);
        e(1, 4);
    }

    public final void b(boolean z) throws IOException {
        a(z ? (byte) 1 : (byte) 0);
    }

    public final void c(long j) throws IOException {
        while (((-128) & j) != 0) {
            a((byte) ((((int) j) & 127) | 128));
            j >>>= 7;
        }
        a((byte) j);
    }

    public final void d(d dVar) throws IOException {
        a(dVar, dVar.a());
    }

    public final void e(int i) throws IOException {
        while ((i & (-128)) != 0) {
            a((byte) ((i & 127) | 128));
            i >>>= 7;
        }
        a((byte) i);
    }

    public final void e(int i, int i2) throws IOException {
        e(x.a(i, i2));
    }

    public final void e(long j) throws IOException {
        a((byte) (((int) j) & 255));
        a((byte) (((int) (j >> 8)) & 255));
        a((byte) (((int) (j >> 16)) & 255));
        a((byte) (((int) (j >> 24)) & 255));
        a((byte) (((int) (j >> 32)) & 255));
        a((byte) (((int) (j >> 40)) & 255));
        a((byte) (((int) (j >> 48)) & 255));
        a((byte) (((int) (j >> 56)) & 255));
    }

    public final void g(int i) throws IOException {
        a((byte) (i & 255));
        a((byte) ((i >> 8) & 255));
        a((byte) ((i >> 16) & 255));
        a((byte) ((i >> 24) & 255));
    }
}

package com.google.firebase.crashlytics.internal.proto;

import com.google.protobuf.CodedOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p131c.p161d.p282e.p289l.p290d.p299m.C5406a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/proto/CodedOutputStream.class */
public final class CodedOutputStream implements Flushable {

    /* renamed from: a */
    public final byte[] f30951a;

    /* renamed from: b */
    public final int f30952b;

    /* renamed from: c */
    public int f30953c = 0;

    /* renamed from: d */
    public final OutputStream f30954d;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/proto/CodedOutputStream$OutOfSpaceException.class */
    public static class OutOfSpaceException extends IOException {
        public static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException() {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE);
        }
    }

    public CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.f30954d = outputStream;
        this.f30951a = bArr;
        this.f30952b = bArr.length;
    }

    /* renamed from: a */
    public static CodedOutputStream m7401a(OutputStream outputStream) {
        return m7400a(outputStream, 4096);
    }

    /* renamed from: a */
    public static CodedOutputStream m7400a(OutputStream outputStream, int i) {
        return new CodedOutputStream(outputStream, new byte[i]);
    }

    /* renamed from: b */
    public static int m7396b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m7394b(int i, float f) {
        return m7369l(i) + m7396b(f);
    }

    /* renamed from: b */
    public static int m7392b(int i, long j) {
        return m7369l(i) + m7380d(j);
    }

    /* renamed from: b */
    public static int m7391b(int i, C5406a aVar) {
        return m7369l(i) + m7383c(aVar);
    }

    /* renamed from: b */
    public static int m7390b(int i, boolean z) {
        return m7369l(i) + m7387b(z);
    }

    /* renamed from: b */
    public static int m7387b(boolean z) {
        return 1;
    }

    /* renamed from: c */
    public static int m7384c(long j) {
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

    /* renamed from: c */
    public static int m7383c(C5406a aVar) {
        return m7371j(aVar.m23869b()) + aVar.m23869b();
    }

    /* renamed from: d */
    public static int m7380d(long j) {
        return m7384c(j);
    }

    /* renamed from: e */
    public static int m7378e(int i, int i2) {
        return m7369l(i) + m7373h(i2);
    }

    /* renamed from: f */
    public static int m7376f(int i, int i2) {
        return m7369l(i) + m7370k(i2);
    }

    /* renamed from: g */
    public static int m7374g(int i, int i2) {
        return m7369l(i) + m7368m(i2);
    }

    /* renamed from: h */
    public static int m7373h(int i) {
        return m7372i(i);
    }

    /* renamed from: i */
    public static int m7372i(int i) {
        if (i >= 0) {
            return m7371j(i);
        }
        return 10;
    }

    /* renamed from: j */
    public static int m7371j(int i) {
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

    /* renamed from: k */
    public static int m7370k(int i) {
        return m7371j(m7367n(i));
    }

    /* renamed from: l */
    public static int m7369l(int i) {
        return m7371j(WireFormat.m7366a(i, 0));
    }

    /* renamed from: m */
    public static int m7368m(int i) {
        return m7371j(i);
    }

    /* renamed from: n */
    public static int m7367n(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public final void m7413a() throws IOException {
        OutputStream outputStream = this.f30954d;
        if (outputStream != null) {
            outputStream.write(this.f30951a, 0, this.f30953c);
            this.f30953c = 0;
            return;
        }
        throw new OutOfSpaceException();
    }

    /* renamed from: a */
    public void m7412a(byte b) throws IOException {
        if (this.f30953c == this.f30952b) {
            m7413a();
        }
        byte[] bArr = this.f30951a;
        int i = this.f30953c;
        this.f30953c = i + 1;
        bArr[i] = b;
    }

    /* renamed from: a */
    public void m7411a(float f) throws IOException {
        m7382d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public void m7410a(int i) throws IOException {
        m7395b(i);
    }

    /* renamed from: a */
    public void m7409a(int i, float f) throws IOException {
        m7385c(i, 5);
        m7411a(f);
    }

    /* renamed from: a */
    public void m7408a(int i, int i2) throws IOException {
        m7385c(i, 0);
        m7410a(i2);
    }

    /* renamed from: a */
    public void m7407a(int i, long j) throws IOException {
        m7385c(i, 0);
        m7389b(j);
    }

    /* renamed from: a */
    public void m7406a(int i, C5406a aVar) throws IOException {
        m7385c(i, 2);
        m7403a(aVar);
    }

    /* renamed from: a */
    public void m7405a(int i, boolean z) throws IOException {
        m7385c(i, 0);
        m7399a(z);
    }

    /* renamed from: a */
    public void m7404a(long j) throws IOException {
        while (((-128) & j) != 0) {
            m7386c((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m7386c((int) j);
    }

    /* renamed from: a */
    public void m7403a(C5406a aVar) throws IOException {
        m7379e(aVar.m23869b());
        m7388b(aVar);
    }

    /* renamed from: a */
    public void m7402a(C5406a aVar, int i, int i2) throws IOException {
        int i3 = this.f30952b;
        int i4 = this.f30953c;
        if (i3 - i4 >= i2) {
            aVar.m23870a(this.f30951a, i, i4, i2);
            this.f30953c += i2;
            return;
        }
        int i5 = i3 - i4;
        aVar.m23870a(this.f30951a, i, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f30953c = this.f30952b;
        m7413a();
        if (i7 <= this.f30952b) {
            aVar.m23870a(this.f30951a, i6, 0, i7);
            this.f30953c = i7;
            return;
        }
        InputStream a = aVar.m23874a();
        long j = i6;
        if (j == a.skip(j)) {
            while (i7 > 0) {
                int min = Math.min(i7, this.f30952b);
                int read = a.read(this.f30951a, 0, min);
                if (read == min) {
                    this.f30954d.write(this.f30951a, 0, read);
                    i7 -= read;
                } else {
                    throw new IllegalStateException("Read failed.");
                }
            }
            return;
        }
        throw new IllegalStateException("Skip failed.");
    }

    /* renamed from: a */
    public void m7399a(boolean z) throws IOException {
        m7386c(z ? 1 : 0);
    }

    /* renamed from: a */
    public void m7398a(byte[] bArr) throws IOException {
        m7397a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m7397a(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f30952b;
        int i4 = this.f30953c;
        if (i3 - i4 >= i2) {
            System.arraycopy(bArr, i, this.f30951a, i4, i2);
            this.f30953c += i2;
            return;
        }
        int i5 = i3 - i4;
        System.arraycopy(bArr, i, this.f30951a, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f30953c = this.f30952b;
        m7413a();
        if (i7 <= this.f30952b) {
            System.arraycopy(bArr, i6, this.f30951a, 0, i7);
            this.f30953c = i7;
            return;
        }
        this.f30954d.write(bArr, i6, i7);
    }

    /* renamed from: b */
    public void m7395b(int i) throws IOException {
        if (i >= 0) {
            m7379e(i);
        } else {
            m7404a(i);
        }
    }

    /* renamed from: b */
    public void m7393b(int i, int i2) throws IOException {
        m7385c(i, 0);
        m7377f(i2);
    }

    /* renamed from: b */
    public void m7389b(long j) throws IOException {
        m7404a(j);
    }

    /* renamed from: b */
    public void m7388b(C5406a aVar) throws IOException {
        m7402a(aVar, 0, aVar.m23869b());
    }

    /* renamed from: c */
    public void m7386c(int i) throws IOException {
        m7412a((byte) i);
    }

    /* renamed from: c */
    public void m7385c(int i, int i2) throws IOException {
        m7379e(WireFormat.m7366a(i, i2));
    }

    /* renamed from: d */
    public void m7382d(int i) throws IOException {
        m7386c(i & 255);
        m7386c((i >> 8) & 255);
        m7386c((i >> 16) & 255);
        m7386c((i >> 24) & 255);
    }

    /* renamed from: d */
    public void m7381d(int i, int i2) throws IOException {
        m7385c(i, 0);
        m7375g(i2);
    }

    /* renamed from: e */
    public void m7379e(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m7386c((i & 127) | 128);
            i >>>= 7;
        }
        m7386c(i);
    }

    /* renamed from: f */
    public void m7377f(int i) throws IOException {
        m7379e(m7367n(i));
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f30954d != null) {
            m7413a();
        }
    }

    /* renamed from: g */
    public void m7375g(int i) throws IOException {
        m7379e(i);
    }
}

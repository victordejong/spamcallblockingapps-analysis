package p459j.p460a.p474c0.p499h.p500x0;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* renamed from: j.a.c0.h.x0.a */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/a.class */
public class C12225a extends FilterInputStream {

    /* renamed from: a */
    public int f27399a = 0;

    /* renamed from: b */
    public final byte[] f27400b = new byte[8];

    /* renamed from: c */
    public final ByteBuffer f27401c = ByteBuffer.wrap(this.f27400b);

    public C12225a(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: a */
    public String m6713a(int i, Charset charset) throws IOException {
        byte[] bArr = new byte[i];
        m6711a(bArr);
        return new String(bArr, charset);
    }

    /* renamed from: a */
    public ByteOrder m6714a() {
        return this.f27401c.order();
    }

    /* renamed from: a */
    public void m6712a(ByteOrder byteOrder) {
        this.f27401c.order(byteOrder);
    }

    /* renamed from: a */
    public void m6711a(byte[] bArr) throws IOException {
        m6710a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m6710a(byte[] bArr, int i, int i2) throws IOException {
        if (read(bArr, i, i2) != i2) {
            throw new EOFException();
        }
    }

    /* renamed from: b */
    public int m6709b() {
        return this.f27399a;
    }

    /* renamed from: c */
    public long m6708c() throws IOException {
        return readInt() & 4294967295L;
    }

    /* renamed from: d */
    public int m6707d() throws IOException {
        return readShort() & 65535;
    }

    /* renamed from: g */
    public void m6706g(long j) throws IOException {
        if (skip(j) != j) {
            throw new EOFException();
        }
    }

    /* renamed from: h */
    public void m6705h(long j) throws IOException {
        m6706g(j - this.f27399a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        this.f27399a += read >= 0 ? 1 : 0;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr);
        this.f27399a += read >= 0 ? read : 0;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        this.f27399a += read >= 0 ? read : 0;
        return read;
    }

    public int readInt() throws IOException {
        m6710a(this.f27400b, 0, 4);
        this.f27401c.rewind();
        return this.f27401c.getInt();
    }

    public short readShort() throws IOException {
        m6710a(this.f27400b, 0, 2);
        this.f27401c.rewind();
        return this.f27401c.getShort();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(j);
        this.f27399a = (int) (this.f27399a + skip);
        return skip;
    }
}

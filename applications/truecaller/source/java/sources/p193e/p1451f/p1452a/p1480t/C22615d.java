package p193e.p1451f.p1452a.p1480t;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: e.f.a.t.d */
/* loaded from: classes-dex2jar.jar:e/f/a/t/d.class */
public class C22615d extends InputStream {

    /* renamed from: c */
    public static final Queue<C22615d> f62633c = new ArrayDeque(0);

    /* renamed from: a */
    public InputStream f62634a;

    /* renamed from: b */
    public IOException f62635b;

    static {
        char[] cArr = C22623j.f62648a;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f62634a.available();
    }

    /* renamed from: b */
    public void m8032b() {
        this.f62635b = null;
        this.f62634a = null;
        Queue<C22615d> queue = f62633c;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f62634a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f62634a.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f62634a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        int i;
        try {
            i = this.f62634a.read();
        } catch (IOException e) {
            this.f62635b = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        int i;
        try {
            i = this.f62634a.read(bArr);
        } catch (IOException e) {
            this.f62635b = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        try {
            i3 = this.f62634a.read(bArr, i, i2);
        } catch (IOException e) {
            this.f62635b = e;
            i3 = -1;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.f62634a.reset();
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // java.io.InputStream
    public long skip(long j) {
        char c;
        try {
            c = this.f62634a.skip(j);
        } catch (IOException e) {
            this.f62635b = e;
            c = 0;
        }
        return c;
    }
}

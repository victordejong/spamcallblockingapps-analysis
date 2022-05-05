package p081h.p119d.p120a.p149y;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* renamed from: h.d.a.y.c */
/* loaded from: classes-dex2jar.jar:h/d/a/y/c.class */
public class C6091c extends InputStream {

    /* renamed from: c */
    public static final Queue<C6091c> f15144c = C6096h.m23864a(0);

    /* renamed from: a */
    public InputStream f15145a;

    /* renamed from: b */
    public IOException f15146b;

    /* renamed from: b */
    public static C6091c m23880b(InputStream inputStream) {
        C6091c poll;
        synchronized (f15144c) {
            poll = f15144c.poll();
        }
        C6091c cVar = poll;
        if (poll == null) {
            cVar = new C6091c();
        }
        cVar.m23882a(inputStream);
        return cVar;
    }

    /* renamed from: a */
    public IOException m23883a() {
        return this.f15146b;
    }

    /* renamed from: a */
    public void m23882a(InputStream inputStream) {
        this.f15145a = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f15145a.available();
    }

    /* renamed from: b */
    public void m23881b() {
        this.f15146b = null;
        this.f15145a = null;
        synchronized (f15144c) {
            f15144c.offer(this);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15145a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f15145a.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f15145a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i;
        try {
            i = this.f15145a.read();
        } catch (IOException e) {
            this.f15146b = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i;
        try {
            i = this.f15145a.read(bArr);
        } catch (IOException e) {
            this.f15146b = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        try {
            i3 = this.f15145a.read(bArr, i, i2);
        } catch (IOException e) {
            this.f15146b = e;
            i3 = -1;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.f15145a.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        try {
            j2 = this.f15145a.skip(j);
        } catch (IOException e) {
            this.f15146b = e;
            j2 = 0;
        }
        return j2;
    }
}

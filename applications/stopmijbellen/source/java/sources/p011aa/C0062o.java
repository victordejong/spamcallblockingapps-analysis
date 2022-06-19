package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
/* renamed from: aa.o */
/* loaded from: classes2-dex2jar.jar:aa/o.class */
public final class C0062o {

    /* renamed from: a */
    public static final Logger f138a = Logger.getLogger(C0062o.class.getName());

    /* renamed from: aa.o$a */
    /* loaded from: classes2-dex2jar.jar:aa/o$a.class */
    public final class C0063a implements AbstractC0073x {

        /* renamed from: a */
        public final /* synthetic */ C0075z f139a;

        /* renamed from: b */
        public final /* synthetic */ OutputStream f140b;

        public C0063a(C0075z c0075z, OutputStream outputStream) {
            this.f139a = c0075z;
            this.f140b = outputStream;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        @Override // p011aa.AbstractC0073x
        /* renamed from: E */
        public void mo613E(C0053f c0053f, long j) throws IOException {
            C0047a0.m8868b(c0053f.f120b, 0L, j);
            while (j > 0) {
                this.f139a.mo8772f();
                C0070u c0070u = c0053f.f119a;
                int min = (int) Math.min((long) j, c0070u.f153c - c0070u.f152b);
                this.f140b.write(c0070u.f151a, c0070u.f152b, min);
                int i = c0070u.f152b + min;
                c0070u.f152b = i;
                long j2 = min;
                ?? r0 = j - j2;
                c0053f.f120b -= j2;
                j = r0;
                if (i == c0070u.f153c) {
                    c0053f.f119a = c0070u.m8796a();
                    C0071v.m8792a(c0070u);
                    j = r0;
                }
            }
        }

        @Override // p011aa.AbstractC0073x
        /* renamed from: b */
        public C0075z mo612b() {
            return this.f139a;
        }

        @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f140b.close();
        }

        @Override // p011aa.AbstractC0073x, java.io.Flushable
        public void flush() throws IOException {
            this.f140b.flush();
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("sink(");
            m8752j.append(this.f140b);
            m8752j.append(")");
            return m8752j.toString();
        }
    }

    /* renamed from: aa.o$b */
    /* loaded from: classes2-dex2jar.jar:aa/o$b.class */
    public final class C0064b implements AbstractC0074y {

        /* renamed from: a */
        public final /* synthetic */ C0075z f141a;

        /* renamed from: b */
        public final /* synthetic */ InputStream f142b;

        public C0064b(C0075z c0075z, InputStream inputStream) {
            this.f141a = c0075z;
            this.f142b = inputStream;
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: b */
        public C0075z mo610b() {
            return this.f141a;
        }

        @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f142b.close();
        }

        @Override // p011aa.AbstractC0074y
        /* renamed from: f */
        public long mo609f(C0053f c0053f, long j) throws IOException {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (i == 0) {
                return 0L;
            } else {
                try {
                    this.f141a.mo8772f();
                    C0070u m8859K = c0053f.m8859K(1);
                    int read = this.f142b.read(m8859K.f151a, m8859K.f153c, (int) Math.min(j, 8192 - m8859K.f153c));
                    if (read == -1) {
                        return -1L;
                    }
                    m8859K.f153c += read;
                    long j2 = read;
                    c0053f.f120b += j2;
                    return j2;
                } catch (AssertionError e) {
                    if (!C0062o.m8829b(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                }
            }
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("source(");
            m8752j.append(this.f142b);
            m8752j.append(")");
            return m8752j.toString();
        }
    }

    /* renamed from: a */
    public static AbstractC0073x m8830a(File file) throws FileNotFoundException {
        if (file != null) {
            return m8827d(new FileOutputStream(file, true), new C0075z());
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: b */
    public static boolean m8829b(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: c */
    public static AbstractC0073x m8828c(File file) throws FileNotFoundException {
        if (file != null) {
            return m8827d(new FileOutputStream(file), new C0075z());
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: d */
    public static AbstractC0073x m8827d(OutputStream outputStream, C0075z c0075z) {
        if (outputStream != null) {
            return new C0063a(c0075z, outputStream);
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: e */
    public static AbstractC0073x m8826e(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() == null) {
                throw new IOException("socket's output stream == null");
            }
            C0066q c0066q = new C0066q(socket);
            return new C0046a(c0066q, m8827d(socket.getOutputStream(), c0066q));
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* renamed from: f */
    public static AbstractC0074y m8825f(InputStream inputStream) {
        return m8824g(inputStream, new C0075z());
    }

    /* renamed from: g */
    public static AbstractC0074y m8824g(InputStream inputStream, C0075z c0075z) {
        if (inputStream != null) {
            return new C0064b(c0075z, inputStream);
        }
        throw new IllegalArgumentException("in == null");
    }

    /* renamed from: h */
    public static AbstractC0074y m8823h(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getInputStream() == null) {
                throw new IOException("socket's input stream == null");
            }
            C0066q c0066q = new C0066q(socket);
            return new C0048b(c0066q, m8824g(socket.getInputStream(), c0066q));
        }
        throw new IllegalArgumentException("socket == null");
    }
}

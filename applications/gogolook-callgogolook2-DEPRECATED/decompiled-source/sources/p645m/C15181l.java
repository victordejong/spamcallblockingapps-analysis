package p645m;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
/* renamed from: m.l */
/* loaded from: classes3-dex2jar.jar:m/l.class */
public final class C15181l {

    /* renamed from: a */
    public static final Logger f33178a = Logger.getLogger(C15181l.class.getName());

    /* renamed from: m.l$a */
    /* loaded from: classes3-dex2jar.jar:m/l$a.class */
    public final class C15182a implements AbstractC15192r {

        /* renamed from: a */
        public final /* synthetic */ C15194t f33179a;

        /* renamed from: b */
        public final /* synthetic */ OutputStream f33180b;

        public C15182a(C15194t tVar, OutputStream outputStream) {
            this.f33179a = tVar;
            this.f33180b = outputStream;
        }

        @Override // p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f33180b.close();
        }

        @Override // p645m.AbstractC15192r, java.io.Flushable
        public void flush() throws IOException {
            this.f33180b.flush();
        }

        @Override // p645m.AbstractC15192r
        public C15194t timeout() {
            return this.f33179a;
        }

        public String toString() {
            return "sink(" + this.f33180b + ")";
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p645m.AbstractC15192r
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void write(p645m.C15170c r8, long r9) throws java.io.IOException {
            /*
                r7 = this;
                r0 = r8
                long r0 = r0.f33160b
                r1 = 0
                r2 = r9
                p645m.C15196u.m262a(r0, r1, r2)
            L_0x0009:
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0089
                r0 = r7
                m.t r0 = r0.f33179a
                r0.throwIfReached()
                r0 = r8
                m.o r0 = r0.f33159a
                r11 = r0
                r0 = r9
                r1 = r11
                int r1 = r1.f33193c
                r2 = r11
                int r2 = r2.f33192b
                int r1 = r1 - r2
                long r1 = (long) r1
                long r0 = java.lang.Math.min(r0, r1)
                int r0 = (int) r0
                r12 = r0
                r0 = r7
                java.io.OutputStream r0 = r0.f33180b
                r1 = r11
                byte[] r1 = r1.f33191a
                r2 = r11
                int r2 = r2.f33192b
                r3 = r12
                r0.write(r1, r2, r3)
                r0 = r11
                r1 = r11
                int r1 = r1.f33192b
                r2 = r12
                int r1 = r1 + r2
                r0.f33192b = r1
                r0 = r12
                long r0 = (long) r0
                r13 = r0
                r0 = r9
                r1 = r13
                long r0 = r0 - r1
                r15 = r0
                r0 = r8
                r1 = r8
                long r1 = r1.f33160b
                r2 = r13
                long r1 = r1 - r2
                r0.f33160b = r1
                r0 = r15
                r9 = r0
                r0 = r11
                int r0 = r0.f33192b
                r1 = r11
                int r1 = r1.f33193c
                if (r0 != r1) goto L_0x0009
                r0 = r8
                r1 = r11
                m.o r1 = r1.m283b()
                r0.f33159a = r1
                r0 = r11
                p645m.C15190p.m280a(r0)
                r0 = r15
                r9 = r0
                goto L_0x0009
            L_0x0089:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p645m.C15181l.C15182a.write(m.c, long):void");
        }
    }

    /* renamed from: m.l$b */
    /* loaded from: classes3-dex2jar.jar:m/l$b.class */
    public final class C15183b implements AbstractC15193s {

        /* renamed from: a */
        public final /* synthetic */ C15194t f33181a;

        /* renamed from: b */
        public final /* synthetic */ InputStream f33182b;

        public C15183b(C15194t tVar, InputStream inputStream) {
            this.f33181a = tVar;
            this.f33182b = inputStream;
        }

        @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f33182b.close();
        }

        @Override // p645m.AbstractC15193s
        public long read(C15170c cVar, long j) throws IOException {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (i == 0) {
                return 0L;
            } else {
                try {
                    this.f33181a.throwIfReached();
                    C15189o b = cVar.m357b(1);
                    int read = this.f33182b.read(b.f33191a, b.f33193c, (int) Math.min(j, 8192 - b.f33193c));
                    if (read == -1) {
                        return -1L;
                    }
                    b.f33193c += read;
                    long j2 = read;
                    cVar.f33160b += j2;
                    return j2;
                } catch (AssertionError e) {
                    if (C15181l.m321a(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                }
            }
        }

        @Override // p645m.AbstractC15193s
        public C15194t timeout() {
            return this.f33181a;
        }

        public String toString() {
            return "source(" + this.f33182b + ")";
        }
    }

    /* renamed from: m.l$c */
    /* loaded from: classes3-dex2jar.jar:m/l$c.class */
    public final class C15184c implements AbstractC15192r {
        @Override // p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // p645m.AbstractC15192r, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // p645m.AbstractC15192r
        public C15194t timeout() {
            return C15194t.NONE;
        }

        @Override // p645m.AbstractC15192r
        public void write(C15170c cVar, long j) throws IOException {
            cVar.skip(j);
        }
    }

    /* renamed from: m.l$d */
    /* loaded from: classes3-dex2jar.jar:m/l$d.class */
    public final class C15185d extends C15165a {

        /* renamed from: a */
        public final /* synthetic */ Socket f33183a;

        public C15185d(Socket socket) {
            this.f33183a = socket;
        }

        @Override // p645m.C15165a
        public IOException newTimeoutException(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p645m.C15165a
        public void timedOut() {
            try {
                this.f33183a.close();
            } catch (AssertionError e) {
                if (C15181l.m321a(e)) {
                    Logger logger = C15181l.f33178a;
                    Level level = Level.WARNING;
                    logger.log(level, "Failed to close timed out socket " + this.f33183a, (Throwable) e);
                    return;
                }
                throw e;
            } catch (Exception e2) {
                Logger logger2 = C15181l.f33178a;
                Level level2 = Level.WARNING;
                logger2.log(level2, "Failed to close timed out socket " + this.f33183a, (Throwable) e2);
            }
        }
    }

    /* renamed from: a */
    public static AbstractC15173d m319a(AbstractC15192r rVar) {
        return new C15186m(rVar);
    }

    /* renamed from: a */
    public static AbstractC15174e m318a(AbstractC15193s sVar) {
        return new C15187n(sVar);
    }

    /* renamed from: a */
    public static AbstractC15192r m327a() {
        return new C15184c();
    }

    /* renamed from: a */
    public static AbstractC15192r m326a(File file) throws FileNotFoundException {
        if (file != null) {
            return m323a(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: a */
    public static AbstractC15192r m323a(OutputStream outputStream) {
        return m322a(outputStream, new C15194t());
    }

    /* renamed from: a */
    public static AbstractC15192r m322a(OutputStream outputStream, C15194t tVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (tVar != null) {
            return new C15182a(tVar, outputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    /* renamed from: a */
    public static AbstractC15192r m320a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            C15165a c = m314c(socket);
            return c.sink(m322a(socket.getOutputStream(), c));
        } else {
            throw new IOException("socket's output stream == null");
        }
    }

    /* renamed from: a */
    public static AbstractC15193s m325a(InputStream inputStream) {
        return m324a(inputStream, new C15194t());
    }

    /* renamed from: a */
    public static AbstractC15193s m324a(InputStream inputStream, C15194t tVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (tVar != null) {
            return new C15183b(tVar, inputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    /* renamed from: a */
    public static boolean m321a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static AbstractC15192r m317b(File file) throws FileNotFoundException {
        if (file != null) {
            return m323a(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: b */
    public static AbstractC15193s m316b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            C15165a c = m314c(socket);
            return c.source(m324a(socket.getInputStream(), c));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }

    /* renamed from: c */
    public static C15165a m314c(Socket socket) {
        return new C15185d(socket);
    }

    /* renamed from: c */
    public static AbstractC15193s m315c(File file) throws FileNotFoundException {
        if (file != null) {
            return m325a(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }
}

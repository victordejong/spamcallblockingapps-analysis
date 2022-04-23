package p610i;

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
/* renamed from: i.k */
/* loaded from: classes2-dex2jar.jar:i/k.class */
public final class C10270k {

    /* renamed from: a */
    public static final Logger f37904a = Logger.getLogger(C10270k.class.getName());

    /* renamed from: i.k$a */
    /* loaded from: classes2-dex2jar.jar:i/k$a.class */
    public final class C10271a implements AbstractC10280p {

        /* renamed from: a */
        public final /* synthetic */ C10282r f37905a;

        /* renamed from: b */
        public final /* synthetic */ OutputStream f37906b;

        public C10271a(C10282r rVar, OutputStream outputStream) {
            this.f37905a = rVar;
            this.f37906b = outputStream;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p610i.AbstractC10280p
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo706a(p610i.C10260c r8, long r9) throws java.io.IOException {
            /*
                r7 = this;
                r0 = r8
                long r0 = r0.f37889b
                r1 = 0
                r2 = r9
                p610i.C10284s.m693a(r0, r1, r2)
            L_0x0009:
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x008a
                r0 = r7
                i.r r0 = r0.f37905a
                r0.mo695e()
                r0 = r8
                i.n r0 = r0.f37888a
                r11 = r0
                r0 = r9
                r1 = r11
                int r1 = r1.f37919c
                r2 = r11
                int r2 = r2.f37918b
                int r1 = r1 - r2
                long r1 = (long) r1
                long r0 = java.lang.Math.min(r0, r1)
                int r0 = (int) r0
                r12 = r0
                r0 = r7
                java.io.OutputStream r0 = r0.f37906b
                r1 = r11
                byte[] r1 = r1.f37917a
                r2 = r11
                int r2 = r2.f37918b
                r3 = r12
                r0.write(r1, r2, r3)
                r0 = r11
                int r0 = r0.f37918b
                r1 = r12
                int r0 = r0 + r1
                r13 = r0
                r0 = r11
                r1 = r13
                r0.f37918b = r1
                r0 = r12
                long r0 = (long) r0
                r14 = r0
                r0 = r9
                r1 = r14
                long r0 = r0 - r1
                r16 = r0
                r0 = r8
                r1 = r8
                long r1 = r1.f37889b
                r2 = r14
                long r1 = r1 - r2
                r0.f37889b = r1
                r0 = r16
                r9 = r0
                r0 = r13
                r1 = r11
                int r1 = r1.f37919c
                if (r0 != r1) goto L_0x0009
                r0 = r8
                r1 = r11
                i.n r1 = r1.m710b()
                r0.f37888a = r1
                r0 = r11
                p610i.C10279o.m707a(r0)
                r0 = r16
                r9 = r0
                goto L_0x0009
            L_0x008a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p610i.C10270k.C10271a.mo706a(i.c, long):void");
        }

        @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f37906b.close();
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: f0 */
        public C10282r mo705f0() {
            return this.f37905a;
        }

        @Override // p610i.AbstractC10280p, java.io.Flushable
        public void flush() throws IOException {
            this.f37906b.flush();
        }

        public String toString() {
            return "sink(" + this.f37906b + ")";
        }
    }

    /* renamed from: i.k$b */
    /* loaded from: classes2-dex2jar.jar:i/k$b.class */
    public final class C10272b implements AbstractC10281q {

        /* renamed from: a */
        public final /* synthetic */ C10282r f37907a;

        /* renamed from: b */
        public final /* synthetic */ InputStream f37908b;

        public C10272b(C10282r rVar, InputStream inputStream) {
            this.f37907a = rVar;
            this.f37908b = inputStream;
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (j == 0) {
                return 0L;
            } else {
                try {
                    this.f37907a.mo695e();
                    C10278n b = cVar.m775b(1);
                    int read = this.f37908b.read(b.f37917a, b.f37919c, (int) Math.min(j, 8192 - b.f37919c));
                    if (read == -1) {
                        return -1L;
                    }
                    b.f37919c += read;
                    long j2 = read;
                    cVar.f37889b += j2;
                    return j2;
                } catch (AssertionError e) {
                    if (C10270k.m747a(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                }
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f37908b.close();
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return this.f37907a;
        }

        public String toString() {
            return "source(" + this.f37908b + ")";
        }
    }

    /* renamed from: i.k$c */
    /* loaded from: classes2-dex2jar.jar:i/k$c.class */
    public final class C10273c implements AbstractC10280p {
        @Override // p610i.AbstractC10280p
        /* renamed from: a */
        public void mo706a(C10260c cVar, long j) throws IOException {
            cVar.skip(j);
        }

        @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: f0 */
        public C10282r mo705f0() {
            return C10282r.f37926d;
        }

        @Override // p610i.AbstractC10280p, java.io.Flushable
        public void flush() throws IOException {
        }
    }

    /* renamed from: i.k$d */
    /* loaded from: classes2-dex2jar.jar:i/k$d.class */
    public final class C10274d extends C10255a {

        /* renamed from: k */
        public final /* synthetic */ Socket f37909k;

        public C10274d(Socket socket) {
            this.f37909k = socket;
        }

        @Override // p610i.C10255a
        /* renamed from: b */
        public IOException mo741b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p610i.C10255a
        /* renamed from: i */
        public void mo740i() {
            try {
                this.f37909k.close();
            } catch (AssertionError e) {
                if (C10270k.m747a(e)) {
                    Logger logger = C10270k.f37904a;
                    Level level = Level.WARNING;
                    logger.log(level, "Failed to close timed out socket " + this.f37909k, (Throwable) e);
                    return;
                }
                throw e;
            } catch (Exception e2) {
                Logger logger2 = C10270k.f37904a;
                Level level2 = Level.WARNING;
                logger2.log(level2, "Failed to close timed out socket " + this.f37909k, (Throwable) e2);
            }
        }
    }

    /* renamed from: a */
    public static AbstractC10263d m754a(AbstractC10280p pVar) {
        return new C10275l(pVar);
    }

    /* renamed from: a */
    public static AbstractC10264e m753a(AbstractC10281q qVar) {
        return new C10276m(qVar);
    }

    /* renamed from: a */
    public static AbstractC10280p m755a() {
        return new C10273c();
    }

    /* renamed from: a */
    public static AbstractC10280p m752a(File file) throws FileNotFoundException {
        if (file != null) {
            return m749a(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: a */
    public static AbstractC10280p m749a(OutputStream outputStream) {
        return m748a(outputStream, new C10282r());
    }

    /* renamed from: a */
    public static AbstractC10280p m748a(OutputStream outputStream, C10282r rVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        } else if (rVar != null) {
            return new C10271a(rVar, outputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    /* renamed from: a */
    public static AbstractC10280p m746a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getOutputStream() != null) {
            C10255a c = m742c(socket);
            return c.m794a(m748a(socket.getOutputStream(), c));
        } else {
            throw new IOException("socket's output stream == null");
        }
    }

    /* renamed from: a */
    public static AbstractC10281q m751a(InputStream inputStream) {
        return m750a(inputStream, new C10282r());
    }

    /* renamed from: a */
    public static AbstractC10281q m750a(InputStream inputStream, C10282r rVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (rVar != null) {
            return new C10272b(rVar, inputStream);
        } else {
            throw new IllegalArgumentException("timeout == null");
        }
    }

    /* renamed from: a */
    public static boolean m747a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static AbstractC10280p m745b(File file) throws FileNotFoundException {
        if (file != null) {
            return m749a(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    /* renamed from: b */
    public static AbstractC10281q m744b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        } else if (socket.getInputStream() != null) {
            C10255a c = m742c(socket);
            return c.m793a(m750a(socket.getInputStream(), c));
        } else {
            throw new IOException("socket's input stream == null");
        }
    }

    /* renamed from: c */
    public static C10255a m742c(Socket socket) {
        return new C10274d(socket);
    }

    /* renamed from: c */
    public static AbstractC10281q m743c(File file) throws FileNotFoundException {
        if (file != null) {
            return m751a(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }
}

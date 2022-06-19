package p092c;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\b\u001a\u00020\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lokio/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "socket", "Ljava/net/Socket;", "(Ljava/net/Socket;)V", "newTimeoutException", "Ljava/io/IOException;", "cause", "timedOut", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.ac */
/* loaded from: classes-dex2jar.jar:c/ac.class */
public final class C3189ac extends C3196d {

    /* renamed from: a */
    private final Socket f11566a;

    public C3189ac(Socket socket) {
        C18524p.m3840d(socket, "socket");
        this.f11566a = socket;
    }

    @Override // p092c.C3196d
    protected final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // p092c.C3196d
    protected final void timedOut() {
        Logger logger;
        Logger logger2;
        try {
            this.f11566a.close();
        } catch (AssertionError e) {
            if (!C3217q.m39156a(e)) {
                throw e;
            }
            logger2 = C3217q.f11602a;
            Level level = Level.WARNING;
            logger2.log(level, "Failed to close timed out socket " + this.f11566a, (Throwable) e);
        } catch (Exception e2) {
            logger = C3217q.f11602a;
            Level level2 = Level.WARNING;
            logger.log(level2, "Failed to close timed out socket " + this.f11566a, (Throwable) e2);
        }
    }
}

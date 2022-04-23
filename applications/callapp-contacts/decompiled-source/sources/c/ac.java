package c;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\b\u001a\u00020\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lokio/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "socket", "Ljava/net/Socket;", "(Ljava/net/Socket;)V", "newTimeoutException", "Ljava/io/IOException;", "cause", "timedOut", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/ac.class */
public final class ac extends d {

    /* renamed from: a  reason: collision with root package name */
    private final Socket f6283a;

    public ac(Socket socket) {
        p.d(socket, "socket");
        this.f6283a = socket;
    }

    @Override // c.d
    protected final IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // c.d
    protected final void timedOut() {
        Logger logger;
        Logger logger2;
        try {
            this.f6283a.close();
        } catch (AssertionError e) {
            if (q.a(e)) {
                logger2 = q.f6314a;
                Level level = Level.WARNING;
                logger2.log(level, "Failed to close timed out socket " + this.f6283a, (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            logger = q.f6314a;
            Level level2 = Level.WARNING;
            logger.log(level2, "Failed to close timed out socket " + this.f6283a, (Throwable) e2);
        }
    }
}

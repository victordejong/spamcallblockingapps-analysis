package okhttp3.internal.connection;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/RouteException.class */
public final class RouteException extends RuntimeException {

    /* renamed from: a */
    public IOException f12488a;

    /* renamed from: b */
    public IOException f12489b;

    public RouteException(IOException iOException) {
        super(iOException);
        this.f12488a = iOException;
        this.f12489b = iOException;
    }
}

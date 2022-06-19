package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/RouteException.class */
public final class RouteException extends RuntimeException {

    /* renamed from: a */
    private static final Method f22801a;

    /* renamed from: b */
    private IOException f22802b;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
            method = null;
        }
        f22801a = method;
    }

    public RouteException(IOException iOException) {
        super(iOException);
        this.f22802b = iOException;
    }

    /* renamed from: a */
    private void m631a(IOException iOException, IOException iOException2) {
        if (f22801a != null) {
            try {
                f22801a.invoke(iOException, iOException2);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
            }
        }
    }

    /* renamed from: a */
    public IOException m633a() {
        return this.f22802b;
    }

    /* renamed from: a */
    public void m632a(IOException iOException) {
        m631a(iOException, this.f22802b);
        this.f22802b = iOException;
    }
}

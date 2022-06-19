package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/RouteException.class */
public final class RouteException extends RuntimeException {

    /* renamed from: a */
    private static final Method f5027a;

    /* renamed from: b */
    private IOException f5028b;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
            method = null;
        }
        f5027a = method;
    }

    public RouteException(IOException iOException) {
        super(iOException);
        this.f5028b = iOException;
    }

    /* renamed from: a */
    private void m2311a(IOException iOException, IOException iOException2) {
        Method method = f5027a;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }

    /* renamed from: a */
    public IOException m2313a() {
        return this.f5028b;
    }

    /* renamed from: a */
    public void m2312a(IOException iOException) {
        m2311a(iOException, this.f5028b);
        this.f5028b = iOException;
    }
}

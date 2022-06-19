package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/RouteException.class */
public final class RouteException extends Exception {

    /* renamed from: b */
    private static final Method f12301b;
    private IOException lastException;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
            method = null;
        }
        f12301b = method;
    }

    public RouteException(IOException iOException) {
        super(iOException);
        this.lastException = iOException;
    }

    /* renamed from: a */
    private void m1041a(IOException iOException, IOException iOException2) {
        Method method = f12301b;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }

    public void addConnectException(IOException iOException) {
        m1041a(iOException, this.lastException);
        this.lastException = iOException;
    }

    public IOException getLastConnectException() {
        return this.lastException;
    }
}

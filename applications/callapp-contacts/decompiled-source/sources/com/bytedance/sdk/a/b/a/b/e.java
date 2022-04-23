package com.bytedance.sdk.a.b.a.b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/e.class */
public final class e extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f7865a;

    /* renamed from: b  reason: collision with root package name */
    private IOException f7866b;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
            method = null;
        }
        f7865a = method;
    }

    public e(IOException iOException) {
        super(iOException);
        this.f7866b = iOException;
    }

    private void a(IOException iOException, IOException iOException2) {
        Method method = f7865a;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }

    public final IOException a() {
        return this.f7866b;
    }

    public final void a(IOException iOException) {
        a(iOException, this.f7866b);
        this.f7866b = iOException;
    }
}

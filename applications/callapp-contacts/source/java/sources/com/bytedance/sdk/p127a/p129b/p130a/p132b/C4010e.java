package com.bytedance.sdk.p127a.p129b.p130a.p132b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: com.bytedance.sdk.a.b.a.b.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/e.class */
public final class C4010e extends RuntimeException {

    /* renamed from: a */
    private static final Method f14546a;

    /* renamed from: b */
    private IOException f14547b;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e) {
            method = null;
        }
        f14546a = method;
    }

    public C4010e(IOException iOException) {
        super(iOException);
        this.f14547b = iOException;
    }

    /* renamed from: a */
    private void m36947a(IOException iOException, IOException iOException2) {
        Method method = f14546a;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }

    /* renamed from: a */
    public final IOException m36949a() {
        return this.f14547b;
    }

    /* renamed from: a */
    public final void m36948a(IOException iOException) {
        m36947a(iOException, this.f14547b);
        this.f14547b = iOException;
    }
}

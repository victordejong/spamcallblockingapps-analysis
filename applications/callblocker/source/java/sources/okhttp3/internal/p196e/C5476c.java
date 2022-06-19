package okhttp3.internal.p196e;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.EnumC5553y;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.internal.e.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/c.class */
public final class C5476c extends C5480f {

    /* renamed from: a */
    final Method f22863a;

    /* renamed from: b */
    final Method f22864b;

    C5476c(Method method, Method method2) {
        this.f22863a = method;
        this.f22864b = method2;
    }

    /* renamed from: b */
    public static C5476c m564b() {
        C5476c c5476c;
        try {
            c5476c = new C5476c(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            c5476c = null;
        }
        return c5476c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r5.equals("") != false) goto L6;
     */
    @Override // okhttp3.internal.p196e.C5480f
    @javax.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo549a(javax.net.ssl.SSLSocket r5) {
        /*
            r4 = this;
            r0 = r4
            java.lang.reflect.Method r0 = r0.f22864b     // Catch: java.lang.IllegalAccessException -> L23 java.lang.reflect.InvocationTargetException -> L2b
            r1 = r5
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.IllegalAccessException -> L23 java.lang.reflect.InvocationTargetException -> L2b
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.IllegalAccessException -> L23 java.lang.reflect.InvocationTargetException -> L2b
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.IllegalAccessException -> L23 java.lang.reflect.InvocationTargetException -> L2b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L1f
            r0 = r5
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)     // Catch: java.lang.IllegalAccessException -> L23 java.lang.reflect.InvocationTargetException -> L2b
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L21
        L1f:
            r0 = 0
            r5 = r0
        L21:
            r0 = r5
            return r0
        L23:
            r5 = move-exception
        L24:
            java.lang.String r0 = "unable to get selected protocols"
            r1 = r5
            java.lang.AssertionError r0 = okhttp3.internal.C5449c.m664a(r0, r1)
            throw r0
        L2b:
            r5 = move-exception
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.p196e.C5476c.mo549a(javax.net.ssl.SSLSocket):java.lang.String");
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo548a(SSLSocket sSLSocket, String str, List<EnumC5553y> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a = m550a(list);
            this.f22863a.invoke(sSLParameters, a.toArray(new String[a.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C5449c.m664a("unable to set ssl parameters", (Exception) e);
        }
    }
}

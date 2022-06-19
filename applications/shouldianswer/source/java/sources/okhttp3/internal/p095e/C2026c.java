package okhttp3.internal.p095e;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.EnumC2101x;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.internal.e.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/c.class */
public final class C2026c extends C2030f {

    /* renamed from: a */
    final Method f5089a;

    /* renamed from: b */
    final Method f5090b;

    C2026c(Method method, Method method2) {
        this.f5089a = method;
        this.f5090b = method2;
    }

    /* renamed from: b */
    public static C2026c m2246b() {
        try {
            return new C2026c(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    @Nullable
    /* renamed from: a */
    public String mo2232a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f5090b.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (!str.equals("")) {
                return str;
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C1999c.m2344a("unable to get selected protocols", (Exception) e);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2231a(SSLSocket sSLSocket, String str, List<EnumC2101x> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a = m2233a(list);
            this.f5089a.invoke(sSLParameters, a.toArray(new String[a.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C1999c.m2344a("unable to set ssl parameters", (Exception) e);
        }
    }
}

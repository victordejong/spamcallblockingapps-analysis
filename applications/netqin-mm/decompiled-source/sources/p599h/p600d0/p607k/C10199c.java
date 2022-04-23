package p599h.p600d0.p607k;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.k.c */
/* loaded from: classes2-dex2jar.jar:h/d0/k/c.class */
public final class C10199c extends C10203f {

    /* renamed from: c */
    public final Method f37657c;

    /* renamed from: d */
    public final Method f37658d;

    public C10199c(Method method, Method method2) {
        this.f37657c = method;
        this.f37658d = method2;
    }

    /* renamed from: f */
    public static C10199c m1096f() {
        try {
            return new C10199c(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1080a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a = C10203f.m1082a(list);
            this.f37657c.invoke(sSLParameters, a.toArray(new String[a.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C10109c.m1454a("unable to set ssl parameters", (Exception) e);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public String mo1074b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f37658d.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C10109c.m1454a("unable to get selected protocols", (Exception) e);
        }
    }
}

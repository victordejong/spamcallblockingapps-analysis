package com.bytedance.sdk.a.b.a.g;

import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.w;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/b.class */
public final class b extends e {

    /* renamed from: a  reason: collision with root package name */
    final Method f8036a;

    /* renamed from: b  reason: collision with root package name */
    final Method f8037b;

    b(Method method, Method method2) {
        this.f8036a = method;
        this.f8037b = method2;
    }

    public static b a() {
        try {
            return new b(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public final String a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f8037b.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw c.a("unable to get selected protocols", (Exception) e);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public final void a(SSLSocket sSLSocket, String str, List<w> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a2 = a(list);
            this.f8036a.invoke(sSLParameters, a2.toArray(new String[a2.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw c.a("unable to set ssl parameters", (Exception) e);
        }
    }
}

package com.bytedance.sdk.p127a.p129b.p130a.p137g;

import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
/* renamed from: com.bytedance.sdk.a.b.a.g.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/b.class */
public final class C4086b extends C4090e {

    /* renamed from: a */
    final Method f14843a;

    /* renamed from: b */
    final Method f14844b;

    C4086b(Method method, Method method2) {
        this.f14843a = method;
        this.f14844b = method2;
    }

    /* renamed from: a */
    public static C4086b m36661a() {
        try {
            return new C4086b(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public final String mo36646a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f14844b.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (!str.equals("")) {
                return str;
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4015c.m36905a("unable to get selected protocols", (Exception) e);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public final void mo36645a(SSLSocket sSLSocket, String str, List<EnumC4143w> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a = m36647a(list);
            this.f14843a.invoke(sSLParameters, a.toArray(new String[a.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4015c.m36905a("unable to set ssl parameters", (Exception) e);
        }
    }
}

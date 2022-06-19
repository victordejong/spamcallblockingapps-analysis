package p290x9;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import p204p9.EnumC4131w;
import p214q9.C4171c;
/* renamed from: x9.c */
/* loaded from: classes2-dex2jar.jar:x9/c.class */
public final class C4941c extends C4945f {

    /* renamed from: c */
    public final Method f15065c;

    /* renamed from: d */
    public final Method f15066d;

    public C4941c(Method method, Method method2) {
        this.f15065c = method;
        this.f15066d = method2;
    }

    @Override // p290x9.C4945f
    /* renamed from: f */
    public void mo216f(SSLSocket sSLSocket, String str, List<EnumC4131w> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList arrayList = (ArrayList) C4945f.m220b(list);
            this.f15065c.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4171c.m1335a("unable to set ssl parameters", e);
        }
    }

    @Override // p290x9.C4945f
    @Nullable
    /* renamed from: i */
    public String mo213i(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f15066d.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (!str.equals("")) {
                return str;
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4171c.m1335a("unable to get selected protocols", e);
        }
    }
}

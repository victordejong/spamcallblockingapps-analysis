package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.b.s;
import com.bytedance.sdk.a.b.y;
import java.net.Proxy;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/i.class */
public final class i {
    public static String a(s sVar) {
        String h = sVar.h();
        String j = sVar.j();
        if (j == null) {
            return h;
        }
        return h + '?' + j;
    }

    public static String a(y yVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(yVar.b());
        sb.append(' ');
        if (b(yVar, type)) {
            sb.append(yVar.a());
        } else {
            sb.append(a(yVar.a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(y yVar, Proxy.Type type) {
        return !yVar.g() && type == Proxy.Type.HTTP;
    }
}

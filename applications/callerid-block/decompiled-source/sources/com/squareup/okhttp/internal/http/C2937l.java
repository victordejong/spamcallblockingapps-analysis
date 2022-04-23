package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.Protocol;
import java.net.Proxy;
/* renamed from: com.squareup.okhttp.internal.http.l */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/l.class */
public final class C2937l {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m937a(C2954p pVar, Proxy.Type type, Protocol protocol) {
        StringBuilder sb = new StringBuilder();
        sb.append(pVar.m783l());
        sb.append(' ');
        boolean b = m936b(pVar, type);
        C2946l j = pVar.m785j();
        if (b) {
            sb.append(j);
        } else {
            sb.append(m935c(j));
        }
        sb.append(' ');
        sb.append(m934d(protocol));
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m936b(C2954p pVar, Proxy.Type type) {
        return !pVar.m784k() && type == Proxy.Type.HTTP;
    }

    /* renamed from: c */
    public static String m935c(C2946l lVar) {
        String l = lVar.m869l();
        String n = lVar.m867n();
        String str = l;
        if (n != null) {
            str = l + '?' + n;
        }
        return str;
    }

    /* renamed from: d */
    public static String m934d(Protocol protocol) {
        return protocol == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1";
    }
}

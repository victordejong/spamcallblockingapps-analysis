package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.Protocol;
import java.net.Proxy;
/* renamed from: com.squareup.okhttp.internal.http.l */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/l.class */
public final class C2937l {
    /* renamed from: a */
    public static String m937a(C2954p c2954p, Proxy.Type type, Protocol protocol) {
        StringBuilder sb = new StringBuilder();
        sb.append(c2954p.m783l());
        sb.append(' ');
        boolean m936b = m936b(c2954p, type);
        C2946l m785j = c2954p.m785j();
        if (m936b) {
            sb.append(m785j);
        } else {
            sb.append(m935c(m785j));
        }
        sb.append(' ');
        sb.append(m934d(protocol));
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m936b(C2954p c2954p, Proxy.Type type) {
        return !c2954p.m784k() && type == Proxy.Type.HTTP;
    }

    /* renamed from: c */
    public static String m935c(C2946l c2946l) {
        String m869l = c2946l.m869l();
        String m867n = c2946l.m867n();
        String str = m869l;
        if (m867n != null) {
            str = m869l + '?' + m867n;
        }
        return str;
    }

    /* renamed from: d */
    public static String m934d(Protocol protocol) {
        return protocol == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1";
    }
}

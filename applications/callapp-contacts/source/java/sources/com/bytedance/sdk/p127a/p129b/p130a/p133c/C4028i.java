package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p129b.C4134s;
import com.bytedance.sdk.p127a.p129b.C4146y;
import java.net.Proxy;
/* renamed from: com.bytedance.sdk.a.b.a.c.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/i.class */
public final class C4028i {
    /* renamed from: a */
    public static String m36863a(C4134s c4134s) {
        String m36433h = c4134s.m36433h();
        String m36431j = c4134s.m36431j();
        if (m36431j != null) {
            return m36433h + '?' + m36431j;
        }
        return m36433h;
    }

    /* renamed from: a */
    public static String m36862a(C4146y c4146y, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(c4146y.m36339b());
        sb.append(' ');
        if (m36861b(c4146y, type)) {
            sb.append(c4146y.m36341a());
        } else {
            sb.append(m36863a(c4146y.m36341a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m36861b(C4146y c4146y, Proxy.Type type) {
        return !c4146y.m36334g() && type == Proxy.Type.HTTP;
    }
}

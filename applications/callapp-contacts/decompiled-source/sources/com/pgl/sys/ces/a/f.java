package com.pgl.sys.ces.a;

import com.pgl.sys.ces.b;
import com.pgl.sys.ces.d.a;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/f.class */
public final class f {
    public static String a() {
        String str;
        try {
            a e = b.e();
            str = null;
            if (e != null) {
                e.a();
                str = "[<!>][<!>][<!>]";
            }
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }
}

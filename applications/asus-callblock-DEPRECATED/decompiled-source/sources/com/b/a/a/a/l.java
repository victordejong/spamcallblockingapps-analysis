package com.b.a.a.a;

import com.b.a.t;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/l.class */
public final class l {
    public static String a(t tVar) {
        return tVar == t.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1";
    }

    public static String a(URL url) {
        String str;
        String file = url.getFile();
        if (file == null) {
            str = "/";
        } else {
            str = file;
            if (!file.startsWith("/")) {
                str = "/" + file;
            }
        }
        return str;
    }
}

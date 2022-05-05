package com.b.a;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/b/a/t.class */
public enum t {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    
    private final String e;

    t(String str) {
        this.e = str;
    }

    public static t a(String str) {
        t tVar;
        if (str.equals(HTTP_1_0.e)) {
            tVar = HTTP_1_0;
        } else if (str.equals(HTTP_1_1.e)) {
            tVar = HTTP_1_1;
        } else if (str.equals(HTTP_2.e)) {
            tVar = HTTP_2;
        } else if (str.equals(SPDY_3.e)) {
            tVar = SPDY_3;
        } else {
            throw new IOException("Unexpected protocol: " + str);
        }
        return tVar;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.e;
    }
}

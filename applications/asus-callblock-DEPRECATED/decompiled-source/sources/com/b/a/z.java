package com.b.a;
/* loaded from: classes-dex2jar.jar:com/b/a/z.class */
public enum z {
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    
    final String e;

    z(String str) {
        this.e = str;
    }

    public static z a(String str) {
        z zVar;
        char c = 65535;
        switch (str.hashCode()) {
            case -503070503:
                if (str.equals("TLSv1.1")) {
                    c = 1;
                    break;
                }
                break;
            case -503070502:
                if (str.equals("TLSv1.2")) {
                    c = 0;
                    break;
                }
                break;
            case 79201641:
                if (str.equals("SSLv3")) {
                    c = 3;
                    break;
                }
                break;
            case 79923350:
                if (str.equals("TLSv1")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                zVar = TLS_1_2;
                break;
            case 1:
                zVar = TLS_1_1;
                break;
            case 2:
                zVar = TLS_1_0;
                break;
            case 3:
                zVar = SSL_3_0;
                break;
            default:
                throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }
        return zVar;
    }
}

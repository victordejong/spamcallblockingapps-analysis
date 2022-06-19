package com.squareup.okhttp;
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/TlsVersion.class */
public enum TlsVersion {
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    
    final String javaName;

    TlsVersion(String str) {
        this.javaName = str;
    }

    public static TlsVersion forJavaName(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -503070503:
                if (str.equals("TLSv1.1")) {
                    z = false;
                    break;
                }
                break;
            case -503070502:
                if (str.equals("TLSv1.2")) {
                    z = true;
                    break;
                }
                break;
            case 79201641:
                if (str.equals("SSLv3")) {
                    z = true;
                    break;
                }
                break;
            case 79923350:
                if (str.equals("TLSv1")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return TLS_1_1;
            case true:
                return TLS_1_2;
            case true:
                return SSL_3_0;
            case true:
                return TLS_1_0;
            default:
                throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }
    }

    public String javaName() {
        return this.javaName;
    }
}

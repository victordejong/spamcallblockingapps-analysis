package com.tenor.android.core.network.constant;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/network/constant/Protocols.class */
public class Protocols {
    public static final String HTTP = "http";
    public static final String HTTPS = "https";

    @Protocol
    public static String getOrHttps(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode != 3213448) {
            if (hashCode == 99617003 && str.equals("https")) {
                z = true;
            }
            z = true;
        } else {
            if (str.equals(HTTP)) {
                z = false;
            }
            z = true;
        }
        return z ? "https" : HTTP;
    }
}

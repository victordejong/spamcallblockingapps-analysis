package com.criteo.publisher.m0;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/t.class */
public final class t {
    public static boolean a(String str) {
        boolean z = false;
        if (str != null) {
            z = false;
            if (str.length() != 0) {
                if (!(str != null && str.length() > 6 && str.substring(0, 7).equalsIgnoreCase("http://"))) {
                    if (!(str != null && str.length() > 7 && str.substring(0, 8).equalsIgnoreCase("https://"))) {
                        z = false;
                    }
                }
                z = true;
            }
        }
        return z;
    }
}

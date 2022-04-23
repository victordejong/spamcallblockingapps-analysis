package com.firstorion.libcyd;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Constants.class */
final class Constants {
    static final int CONNECT_TIMEOUT = 15000;
    static final String CYD_SERVER = "https://api.calleryd.com";
    static final int READ_TIMEOUT = 25000;
    static final boolean SEND_BEACONS = true;

    static {
        HttpsTrustManager.bootstrap();
    }

    Constants() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HttpURLConnection getConnection(String str) throws IOException {
        return (HttpsURLConnection) new URL(str).openConnection();
    }
}

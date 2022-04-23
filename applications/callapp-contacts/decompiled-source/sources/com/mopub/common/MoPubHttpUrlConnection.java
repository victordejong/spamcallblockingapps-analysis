package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubHttpUrlConnection.class */
public abstract class MoPubHttpUrlConnection extends HttpURLConnection {
    private MoPubHttpUrlConnection(URL url) {
        super(url);
    }

    private static boolean a(String str) {
        try {
            URLDecoder.decode(str, "UTF-8");
            return false;
        } catch (UnsupportedEncodingException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Url is improperly encoded: ".concat(String.valueOf(str)));
            return true;
        }
    }

    private static boolean b(String str) {
        try {
            new URI(str);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    private static URI c(String str) throws Exception {
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to encode url: ".concat(String.valueOf(str)));
            throw e;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(String str) throws IOException {
        Preconditions.checkNotNull(str);
        if (!a(str)) {
            try {
                str = urlEncode(str);
            } catch (Exception e) {
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty("user-agent", Networking.getCachedUserAgent());
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            return httpURLConnection;
        }
        throw new IllegalArgumentException("URL is improperly encoded: ".concat(String.valueOf(str)));
    }

    public static String urlEncode(String str) throws Exception {
        Preconditions.checkNotNull(str);
        if (!a(str)) {
            return (b(str) ? c(str) : new URI(str)).toURL().toString();
        }
        throw new UnsupportedEncodingException("URL is improperly encoded: ".concat(String.valueOf(str)));
    }
}

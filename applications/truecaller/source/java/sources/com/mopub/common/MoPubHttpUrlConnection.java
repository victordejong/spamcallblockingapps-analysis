package com.mopub.common;

import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubHttpUrlConnection.class */
public abstract class MoPubHttpUrlConnection extends HttpURLConnection {
    /* renamed from: a */
    public static boolean m36304a(String str) {
        try {
            URLDecoder.decode(str, StringConstant.UTF8);
            return false;
        } catch (UnsupportedEncodingException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Url is improperly encoded: ", str));
            return true;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(String str) throws IOException {
        Preconditions.checkNotNull(str);
        if (!m36304a(str)) {
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
        throw new IllegalArgumentException(C22128a.m8543z2("URL is improperly encoded: ", str));
    }

    public static String urlEncode(String str) throws Exception {
        boolean z;
        URI uri;
        Preconditions.checkNotNull(str);
        if (!m36304a(str)) {
            try {
                new URI(str);
                z = false;
            } catch (URISyntaxException e) {
                z = true;
            }
            if (z) {
                try {
                    URL url = new URL(str);
                    uri = new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
                } catch (Exception e2) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Failed to encode url: ", str));
                    throw e2;
                }
            } else {
                uri = new URI(str);
            }
            return uri.toURL().toString();
        }
        throw new UnsupportedEncodingException(C22128a.m8543z2("URL is improperly encoded: ", str));
    }
}

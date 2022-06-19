package com.mopub.common;

import com.google.android.exoplayer2.C0515C;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubHttpUrlConnection.class */
public abstract class MoPubHttpUrlConnection extends HttpURLConnection {
    /* renamed from: a */
    public static URI m3931a(String str) {
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to encode url: " + str);
            throw e;
        }
    }

    /* renamed from: b */
    public static boolean m3930b(String str) {
        try {
            URLDecoder.decode(str, C0515C.UTF8_NAME);
            return false;
        } catch (UnsupportedEncodingException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Url is improperly encoded: " + str);
            return true;
        }
    }

    /* renamed from: c */
    public static boolean m3929c(String str) {
        try {
            new URI(str);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(String str) {
        Preconditions.checkNotNull(str);
        if (m3930b(str)) {
            throw new IllegalArgumentException("URL is improperly encoded: " + str);
        }
        try {
            str = urlEncode(str);
        } catch (Exception e) {
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        httpURLConnection.setRequestProperty("user-agent", Networking.getCachedUserAgent());
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(10000);
        return httpURLConnection;
    }

    public static String urlEncode(String str) {
        Preconditions.checkNotNull(str);
        if (!m3930b(str)) {
            return (m3929c(str) ? m3931a(str) : new URI(str)).toURL().toString();
        }
        throw new UnsupportedEncodingException("URL is improperly encoded: " + str);
    }
}

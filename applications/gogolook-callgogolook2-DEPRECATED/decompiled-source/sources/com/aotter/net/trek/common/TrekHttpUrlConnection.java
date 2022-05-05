package com.aotter.net.trek.common;

import androidx.annotation.NonNull;
import com.aotter.net.trek.util.TrekLog;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/TrekHttpUrlConnection.class */
public abstract class TrekHttpUrlConnection extends HttpURLConnection {

    /* renamed from: a */
    public static final int f1503a = 10000;

    /* renamed from: b */
    public static final int f1504b = 10000;

    public TrekHttpUrlConnection(URL url) {
        super(url);
    }

    /* renamed from: a */
    public static boolean m36366a(@NonNull String str) {
        try {
            URLDecoder.decode(str, "UTF-8");
            return false;
        } catch (UnsupportedEncodingException e) {
            TrekLog.m36311w("Url is improperly encoded: " + str);
            return true;
        }
    }

    /* renamed from: b */
    public static boolean m36365b(@NonNull String str) {
        try {
            new URI(str);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    @NonNull
    /* renamed from: c */
    public static URI m36364c(@NonNull String str) {
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (Exception e) {
            TrekLog.m36311w("Failed to encode url: " + str);
            throw e;
        }
    }

    public static HttpURLConnection getHttpUrlConnection(@NonNull String str) {
        Preconditions.checkNotNull(str);
        if (!m36366a(str)) {
            try {
                str = urlEncode(str);
            } catch (Exception e) {
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            return httpURLConnection;
        }
        throw new IllegalArgumentException("URL is improperly encoded: " + str);
    }

    @NonNull
    public static String urlEncode(@NonNull String str) {
        Preconditions.checkNotNull(str);
        if (!m36366a(str)) {
            return (m36365b(str) ? m36364c(str) : new URI(str)).toURL().toString();
        }
        throw new UnsupportedEncodingException("URL is improperly encoded: " + str);
    }
}

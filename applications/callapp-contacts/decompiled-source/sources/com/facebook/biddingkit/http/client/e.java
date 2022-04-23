package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/e.class */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected String f19761a;

    /* renamed from: b  reason: collision with root package name */
    protected c f19762b;

    /* renamed from: c  reason: collision with root package name */
    protected String f19763c;

    /* renamed from: d  reason: collision with root package name */
    protected byte[] f19764d;

    public e(String str, Map<String, String> map) {
        this.f19761a = "";
        if (str != null) {
            this.f19761a = str;
        }
        if (map != null) {
            this.f19761a += "?" + a(map);
        }
    }

    private static String a(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str);
            String str2 = map.get(str);
            if (str2 != null) {
                sb.append("=");
                try {
                    sb.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    Log.e("HttpRequest", "Failed url encode: ", e);
                }
            }
        }
        return sb.toString();
    }

    public final String a() {
        return this.f19761a;
    }

    public final c b() {
        return this.f19762b;
    }

    public final String c() {
        return this.f19763c;
    }

    public final byte[] d() {
        return this.f19764d;
    }
}

package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
/* renamed from: com.facebook.biddingkit.http.client.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/e.class */
public abstract class AbstractC10161e {

    /* renamed from: a */
    protected String f33577a;

    /* renamed from: b */
    protected EnumC10159c f33578b;

    /* renamed from: c */
    protected String f33579c;

    /* renamed from: d */
    protected byte[] f33580d;

    public AbstractC10161e(String str, Map<String, String> map) {
        this.f33577a = "";
        if (str != null) {
            this.f33577a = str;
        }
        if (map != null) {
            this.f33577a += "?" + m23322a(map);
        }
    }

    /* renamed from: a */
    private static String m23322a(Map<String, String> map) {
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

    /* renamed from: a */
    public final String m23323a() {
        return this.f33577a;
    }

    /* renamed from: b */
    public final EnumC10159c m23321b() {
        return this.f33578b;
    }

    /* renamed from: c */
    public final String m23320c() {
        return this.f33579c;
    }

    /* renamed from: d */
    public final byte[] m23319d() {
        return this.f33580d;
    }
}

package com.amazonaws.http;

import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpRequest.class */
public class HttpRequest {

    /* renamed from: a */
    final String f12061a;

    /* renamed from: b */
    URI f12062b;

    /* renamed from: c */
    final Map<String, String> f12063c;

    /* renamed from: d */
    final InputStream f12064d;

    /* renamed from: e */
    boolean f12065e;

    public HttpRequest(String str, URI uri) {
        this(str, uri, null, null);
    }

    public HttpRequest(String str, URI uri, Map<String, String> map, InputStream inputStream) {
        this.f12061a = StringUtils.m38226c(str);
        this.f12062b = uri;
        this.f12063c = map == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(map);
        this.f12064d = inputStream;
    }

    /* renamed from: a */
    public final long m38619a() {
        String str;
        Map<String, String> map = this.f12063c;
        if (map == null || (str = map.get("Content-Length")) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }
}

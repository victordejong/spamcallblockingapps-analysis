package com.amazonaws.http;

import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpRequest.class */
public class HttpRequest {

    /* renamed from: a  reason: collision with root package name */
    final String f6615a;

    /* renamed from: b  reason: collision with root package name */
    URI f6616b;

    /* renamed from: c  reason: collision with root package name */
    final Map<String, String> f6617c;

    /* renamed from: d  reason: collision with root package name */
    final InputStream f6618d;
    boolean e;

    public HttpRequest(String str, URI uri) {
        this(str, uri, null, null);
    }

    public HttpRequest(String str, URI uri, Map<String, String> map, InputStream inputStream) {
        this.f6615a = StringUtils.c(str);
        this.f6616b = uri;
        this.f6617c = map == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(map);
        this.f6618d = inputStream;
    }

    public final long a() {
        String str;
        Map<String, String> map = this.f6617c;
        if (map == null || (str = map.get("Content-Length")) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }
}

package com.mopub.volley.toolbox;

import com.mopub.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a */
    public final int f5532a;

    /* renamed from: b */
    public final List<Header> f5533b;

    /* renamed from: c */
    public final int f5534c;

    /* renamed from: d */
    public final InputStream f5535d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f5532a = i;
        this.f5533b = list;
        this.f5534c = i2;
        this.f5535d = inputStream;
    }

    public final InputStream getContent() {
        return this.f5535d;
    }

    public final int getContentLength() {
        return this.f5534c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f5533b);
    }

    public final int getStatusCode() {
        return this.f5532a;
    }
}

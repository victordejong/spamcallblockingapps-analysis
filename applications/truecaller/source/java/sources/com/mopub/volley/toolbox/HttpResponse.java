package com.mopub.volley.toolbox;

import com.mopub.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a */
    public final int f9324a;

    /* renamed from: b */
    public final List<Header> f9325b;

    /* renamed from: c */
    public final int f9326c;

    /* renamed from: d */
    public final InputStream f9327d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f9324a = i;
        this.f9325b = list;
        this.f9326c = i2;
        this.f9327d = inputStream;
    }

    public final InputStream getContent() {
        return this.f9327d;
    }

    public final int getContentLength() {
        return this.f9326c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f9325b);
    }

    public final int getStatusCode() {
        return this.f9324a;
    }
}

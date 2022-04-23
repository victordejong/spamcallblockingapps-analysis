package com.mopub.volley.toolbox;

import com.mopub.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a */
    public final int f35151a;

    /* renamed from: b */
    public final List<Header> f35152b;

    /* renamed from: c */
    public final int f35153c;

    /* renamed from: d */
    public final InputStream f35154d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f35151a = i;
        this.f35152b = list;
        this.f35153c = i2;
        this.f35154d = inputStream;
    }

    public final InputStream getContent() {
        return this.f35154d;
    }

    public final int getContentLength() {
        return this.f35153c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f35152b);
    }

    public final int getStatusCode() {
        return this.f35151a;
    }
}

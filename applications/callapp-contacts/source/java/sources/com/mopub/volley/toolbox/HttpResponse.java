package com.mopub.volley.toolbox;

import com.mopub.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a */
    private final int f60421a;

    /* renamed from: b */
    private final List<Header> f60422b;

    /* renamed from: c */
    private final int f60423c;

    /* renamed from: d */
    private final InputStream f60424d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f60421a = i;
        this.f60422b = list;
        this.f60423c = i2;
        this.f60424d = inputStream;
    }

    public final InputStream getContent() {
        return this.f60424d;
    }

    public final int getContentLength() {
        return this.f60423c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f60422b);
    }

    public final int getStatusCode() {
        return this.f60421a;
    }
}

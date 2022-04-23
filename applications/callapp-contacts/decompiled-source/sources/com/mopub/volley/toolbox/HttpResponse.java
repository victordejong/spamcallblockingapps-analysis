package com.mopub.volley.toolbox;

import com.mopub.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a  reason: collision with root package name */
    private final int f34835a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Header> f34836b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34837c;

    /* renamed from: d  reason: collision with root package name */
    private final InputStream f34838d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f34835a = i;
        this.f34836b = list;
        this.f34837c = i2;
        this.f34838d = inputStream;
    }

    public final InputStream getContent() {
        return this.f34838d;
    }

    public final int getContentLength() {
        return this.f34837c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f34836b);
    }

    public final int getStatusCode() {
        return this.f34835a;
    }
}

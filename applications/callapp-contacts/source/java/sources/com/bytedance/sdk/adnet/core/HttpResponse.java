package com.bytedance.sdk.adnet.core;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a */
    private final int f15363a;

    /* renamed from: b */
    private final List<Header> f15364b;

    /* renamed from: c */
    private final int f15365c;

    /* renamed from: d */
    private final InputStream f15366d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f15363a = i;
        this.f15364b = list;
        this.f15365c = i2;
        this.f15366d = inputStream;
    }

    public final InputStream getContent() {
        return this.f15366d;
    }

    public final int getContentLength() {
        return this.f15365c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f15364b);
    }

    public final int getStatusCode() {
        return this.f15363a;
    }
}

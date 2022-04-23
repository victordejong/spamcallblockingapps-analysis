package com.bytedance.sdk.adnet.core;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a  reason: collision with root package name */
    private final int f8265a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Header> f8266b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8267c;

    /* renamed from: d  reason: collision with root package name */
    private final InputStream f8268d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f8265a = i;
        this.f8266b = list;
        this.f8267c = i2;
        this.f8268d = inputStream;
    }

    public final InputStream getContent() {
        return this.f8268d;
    }

    public final int getContentLength() {
        return this.f8267c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f8266b);
    }

    public final int getStatusCode() {
        return this.f8265a;
    }
}

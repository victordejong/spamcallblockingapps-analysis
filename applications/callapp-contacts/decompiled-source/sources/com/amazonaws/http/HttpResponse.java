package com.amazonaws.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponse.class */
public class HttpResponse {

    /* renamed from: a  reason: collision with root package name */
    public final String f6619a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6620b;

    /* renamed from: c  reason: collision with root package name */
    final InputStream f6621c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f6622d;
    private InputStream e;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponse$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        String f6623a;

        /* renamed from: b  reason: collision with root package name */
        int f6624b;

        /* renamed from: c  reason: collision with root package name */
        InputStream f6625c;

        /* renamed from: d  reason: collision with root package name */
        final Map<String, String> f6626d = new HashMap();
    }

    private HttpResponse(String str, int i, Map<String, String> map, InputStream inputStream) {
        this.f6619a = str;
        this.f6620b = i;
        this.f6622d = map;
        this.f6621c = inputStream;
    }

    public static Builder b() {
        return new Builder();
    }

    public final InputStream a() throws IOException {
        if (this.e == null) {
            synchronized (this) {
                if (this.f6621c == null || !"gzip".equals(this.f6622d.get("Content-Encoding"))) {
                    this.e = this.f6621c;
                } else {
                    this.e = new GZIPInputStream(this.f6621c);
                }
            }
        }
        return this.e;
    }
}

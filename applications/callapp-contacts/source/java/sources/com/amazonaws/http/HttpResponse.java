package com.amazonaws.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponse.class */
public class HttpResponse {

    /* renamed from: a */
    public final String f12066a;

    /* renamed from: b */
    public final int f12067b;

    /* renamed from: c */
    final InputStream f12068c;

    /* renamed from: d */
    public final Map<String, String> f12069d;

    /* renamed from: e */
    private InputStream f12070e;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponse$Builder.class */
    public static class Builder {

        /* renamed from: a */
        String f12071a;

        /* renamed from: b */
        int f12072b;

        /* renamed from: c */
        InputStream f12073c;

        /* renamed from: d */
        final Map<String, String> f12074d = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpResponse(String str, int i, Map<String, String> map, InputStream inputStream) {
        this.f12066a = str;
        this.f12067b = i;
        this.f12069d = map;
        this.f12068c = inputStream;
    }

    /* renamed from: b */
    public static Builder m38616b() {
        return new Builder();
    }

    /* renamed from: a */
    public final InputStream m38617a() throws IOException {
        if (this.f12070e == null) {
            synchronized (this) {
                if (this.f12068c == null || !"gzip".equals(this.f12069d.get("Content-Encoding"))) {
                    this.f12070e = this.f12068c;
                } else {
                    this.f12070e = new GZIPInputStream(this.f12068c);
                }
            }
        }
        return this.f12070e;
    }
}

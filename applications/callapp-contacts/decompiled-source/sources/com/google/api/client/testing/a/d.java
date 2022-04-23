package com.google.api.client.testing.a;

import com.google.api.client.http.aa;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/d.class */
public final class d extends aa {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f31845a;

    /* renamed from: b  reason: collision with root package name */
    private String f31846b;

    /* renamed from: d  reason: collision with root package name */
    private String f31848d;
    private String g;
    private boolean i;

    /* renamed from: c  reason: collision with root package name */
    private int f31847c = 200;
    private List<String> e = new ArrayList();
    private List<String> f = new ArrayList();
    private long h = -1;

    public final d a(int i) {
        this.f31847c = i;
        return this;
    }

    public final d a(String str) {
        this.f31848d = str;
        return this;
    }

    @Override // com.google.api.client.http.aa
    public final void disconnect() throws IOException {
        this.i = true;
        super.disconnect();
    }

    @Override // com.google.api.client.http.aa
    public final InputStream getContent() throws IOException {
        return this.f31845a;
    }

    @Override // com.google.api.client.http.aa
    public final String getContentEncoding() {
        return this.g;
    }

    @Override // com.google.api.client.http.aa
    public final long getContentLength() {
        return this.h;
    }

    @Override // com.google.api.client.http.aa
    public final String getContentType() {
        return this.f31846b;
    }

    @Override // com.google.api.client.http.aa
    public final int getHeaderCount() {
        return this.e.size();
    }

    @Override // com.google.api.client.http.aa
    public final String getHeaderName(int i) {
        return this.e.get(i);
    }

    @Override // com.google.api.client.http.aa
    public final String getHeaderValue(int i) {
        return this.f.get(i);
    }

    @Override // com.google.api.client.http.aa
    public final String getReasonPhrase() {
        return this.f31848d;
    }

    @Override // com.google.api.client.http.aa
    public final int getStatusCode() {
        return this.f31847c;
    }

    @Override // com.google.api.client.http.aa
    public final String getStatusLine() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f31847c);
        String str = this.f31848d;
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }
}

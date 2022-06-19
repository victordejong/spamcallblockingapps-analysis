package com.google.api.client.testing.p384a;

import com.google.api.client.http.AbstractC15313aa;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.api.client.testing.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/d.class */
public final class C15356d extends AbstractC15313aa {

    /* renamed from: a */
    private InputStream f55414a;

    /* renamed from: b */
    private String f55415b;

    /* renamed from: d */
    private String f55417d;

    /* renamed from: g */
    private String f55420g;

    /* renamed from: i */
    private boolean f55422i;

    /* renamed from: c */
    private int f55416c = 200;

    /* renamed from: e */
    private List<String> f55418e = new ArrayList();

    /* renamed from: f */
    private List<String> f55419f = new ArrayList();

    /* renamed from: h */
    private long f55421h = -1;

    /* renamed from: a */
    public final C15356d m8994a(int i) {
        this.f55416c = i;
        return this;
    }

    /* renamed from: a */
    public final C15356d m8993a(String str) {
        this.f55417d = str;
        return this;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final void disconnect() throws IOException {
        this.f55422i = true;
        super.disconnect();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final InputStream getContent() throws IOException {
        return this.f55414a;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getContentEncoding() {
        return this.f55420g;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final long getContentLength() {
        return this.f55421h;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getContentType() {
        return this.f55415b;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final int getHeaderCount() {
        return this.f55418e.size();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getHeaderName(int i) {
        return this.f55418e.get(i);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getHeaderValue(int i) {
        return this.f55419f.get(i);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getReasonPhrase() {
        return this.f55417d;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final int getStatusCode() {
        return this.f55416c;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getStatusLine() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f55416c);
        String str = this.f55417d;
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }
}

package com.callapp.contacts.api.helper.google;

import com.google.api.client.http.AbstractC15313aa;
import com.google.api.client.http.C15345v;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/OkHttpResponse.class */
final class OkHttpResponse extends AbstractC15313aa {

    /* renamed from: a */
    private final HttpURLConnection f24849a;

    /* renamed from: b */
    private final int f24850b;

    /* renamed from: c */
    private final String f24851c;

    /* renamed from: d */
    private final ArrayList<String> f24852d;

    /* renamed from: e */
    private final ArrayList<String> f24853e;

    public OkHttpResponse(HttpURLConnection httpURLConnection) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f24852d = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.f24853e = arrayList2;
        this.f24849a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.f24850b = responseCode == -1 ? 0 : responseCode;
        this.f24851c = httpURLConnection.getResponseMessage();
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        arrayList.add(key);
                        arrayList2.add(str);
                    }
                }
            }
        }
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final void disconnect() {
        this.f24849a.disconnect();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final InputStream getContent() throws IOException {
        HttpURLConnection httpURLConnection = this.f24849a;
        return C15345v.m9005a(this.f24850b) ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getContentEncoding() {
        return this.f24849a.getContentEncoding();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final long getContentLength() {
        String headerField = this.f24849a.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getContentType() {
        return this.f24849a.getHeaderField("Content-Type");
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final int getHeaderCount() {
        return this.f24852d.size();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getHeaderName(int i) {
        return this.f24852d.get(i);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getHeaderValue(int i) {
        return this.f24853e.get(i);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getReasonPhrase() {
        return this.f24851c;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final int getStatusCode() {
        return this.f24850b;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getStatusLine() {
        String headerField = this.f24849a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }
}

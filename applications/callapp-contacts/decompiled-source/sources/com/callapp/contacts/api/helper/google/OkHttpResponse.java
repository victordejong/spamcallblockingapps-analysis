package com.callapp.contacts.api.helper.google;

import com.google.api.client.http.aa;
import com.google.api.client.http.v;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/OkHttpResponse.class */
final class OkHttpResponse extends aa {

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f14188a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14189b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14190c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<String> f14191d;
    private final ArrayList<String> e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpResponse(HttpURLConnection httpURLConnection) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f14191d = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.e = arrayList2;
        this.f14188a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.f14189b = responseCode == -1 ? 0 : responseCode;
        this.f14190c = httpURLConnection.getResponseMessage();
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

    @Override // com.google.api.client.http.aa
    public final void disconnect() {
        this.f14188a.disconnect();
    }

    @Override // com.google.api.client.http.aa
    public final InputStream getContent() throws IOException {
        HttpURLConnection httpURLConnection = this.f14188a;
        return v.a(this.f14189b) ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
    }

    @Override // com.google.api.client.http.aa
    public final String getContentEncoding() {
        return this.f14188a.getContentEncoding();
    }

    @Override // com.google.api.client.http.aa
    public final long getContentLength() {
        String headerField = this.f14188a.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.api.client.http.aa
    public final String getContentType() {
        return this.f14188a.getHeaderField("Content-Type");
    }

    @Override // com.google.api.client.http.aa
    public final int getHeaderCount() {
        return this.f14191d.size();
    }

    @Override // com.google.api.client.http.aa
    public final String getHeaderName(int i) {
        return this.f14191d.get(i);
    }

    @Override // com.google.api.client.http.aa
    public final String getHeaderValue(int i) {
        return this.e.get(i);
    }

    @Override // com.google.api.client.http.aa
    public final String getReasonPhrase() {
        return this.f14190c;
    }

    @Override // com.google.api.client.http.aa
    public final int getStatusCode() {
        return this.f14189b;
    }

    @Override // com.google.api.client.http.aa
    public final String getStatusLine() {
        String headerField = this.f14188a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }
}

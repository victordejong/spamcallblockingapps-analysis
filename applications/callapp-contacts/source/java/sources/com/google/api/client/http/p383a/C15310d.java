package com.google.api.client.http.p383a;

import com.google.api.client.http.AbstractC15313aa;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.api.client.http.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/d.class */
public final class C15310d extends AbstractC15313aa {

    /* renamed from: a */
    private final HttpURLConnection f55297a;

    /* renamed from: b */
    private final int f55298b;

    /* renamed from: c */
    private final String f55299c;

    /* renamed from: d */
    private final ArrayList<String> f55300d;

    /* renamed from: e */
    private final ArrayList<String> f55301e;

    /* renamed from: com.google.api.client.http.a.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/d$a.class */
    final class C15311a extends FilterInputStream {

        /* renamed from: b */
        private long f55303b = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15311a(InputStream inputStream) {
            super(inputStream);
            C15310d.this = r5;
        }

        /* renamed from: a */
        private void m9139a() throws IOException {
            long contentLength = C15310d.this.getContentLength();
            if (contentLength == -1) {
                return;
            }
            long j = this.f55303b;
            if (j == 0 || j >= contentLength) {
                return;
            }
            throw new IOException("Connection closed prematurely: bytesRead = " + this.f55303b + ", Content-Length = " + contentLength);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            int read = this.in.read();
            if (read == -1) {
                m9139a();
            } else {
                this.f55303b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.in.read(bArr, i, i2);
            if (read == -1) {
                m9139a();
            } else {
                this.f55303b += read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) throws IOException {
            long skip = this.in.skip(j);
            this.f55303b += skip;
            return skip;
        }
    }

    public C15310d(HttpURLConnection httpURLConnection) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f55300d = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.f55301e = arrayList2;
        this.f55297a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.f55298b = responseCode == -1 ? 0 : responseCode;
        this.f55299c = httpURLConnection.getResponseMessage();
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
        this.f55297a.disconnect();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final InputStream getContent() throws IOException {
        InputStream inputStream;
        try {
            inputStream = this.f55297a.getInputStream();
        } catch (IOException e) {
            inputStream = this.f55297a.getErrorStream();
        }
        if (inputStream == null) {
            return null;
        }
        return new C15311a(inputStream);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getContentEncoding() {
        return this.f55297a.getContentEncoding();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final long getContentLength() {
        String headerField = this.f55297a.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getContentType() {
        return this.f55297a.getHeaderField("Content-Type");
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final int getHeaderCount() {
        return this.f55300d.size();
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getHeaderName(int i) {
        return this.f55300d.get(i);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getHeaderValue(int i) {
        return this.f55301e.get(i);
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getReasonPhrase() {
        return this.f55299c;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final int getStatusCode() {
        return this.f55298b;
    }

    @Override // com.google.api.client.http.AbstractC15313aa
    public final String getStatusLine() {
        String headerField = this.f55297a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }
}

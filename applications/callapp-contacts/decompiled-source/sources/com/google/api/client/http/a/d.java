package com.google.api.client.http.a;

import com.google.api.client.http.aa;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/d.class */
public final class d extends aa {

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f31776a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31777b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31778c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<String> f31779d;
    private final ArrayList<String> e;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/d$a.class */
    final class a extends FilterInputStream {

        /* renamed from: b  reason: collision with root package name */
        private long f31781b = 0;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        private void a() throws IOException {
            long contentLength = d.this.getContentLength();
            if (contentLength != -1) {
                long j = this.f31781b;
                if (j != 0 && j < contentLength) {
                    throw new IOException("Connection closed prematurely: bytesRead = " + this.f31781b + ", Content-Length = " + contentLength);
                }
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            int read = this.in.read();
            if (read == -1) {
                a();
            } else {
                this.f31781b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.in.read(bArr, i, i2);
            if (read == -1) {
                a();
            } else {
                this.f31781b += read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) throws IOException {
            long skip = this.in.skip(j);
            this.f31781b += skip;
            return skip;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(HttpURLConnection httpURLConnection) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f31779d = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.e = arrayList2;
        this.f31776a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.f31777b = responseCode == -1 ? 0 : responseCode;
        this.f31778c = httpURLConnection.getResponseMessage();
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
        this.f31776a.disconnect();
    }

    @Override // com.google.api.client.http.aa
    public final InputStream getContent() throws IOException {
        InputStream inputStream;
        try {
            inputStream = this.f31776a.getInputStream();
        } catch (IOException e) {
            inputStream = this.f31776a.getErrorStream();
        }
        if (inputStream == null) {
            return null;
        }
        return new a(inputStream);
    }

    @Override // com.google.api.client.http.aa
    public final String getContentEncoding() {
        return this.f31776a.getContentEncoding();
    }

    @Override // com.google.api.client.http.aa
    public final long getContentLength() {
        String headerField = this.f31776a.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.api.client.http.aa
    public final String getContentType() {
        return this.f31776a.getHeaderField("Content-Type");
    }

    @Override // com.google.api.client.http.aa
    public final int getHeaderCount() {
        return this.f31779d.size();
    }

    @Override // com.google.api.client.http.aa
    public final String getHeaderName(int i) {
        return this.f31779d.get(i);
    }

    @Override // com.google.api.client.http.aa
    public final String getHeaderValue(int i) {
        return this.e.get(i);
    }

    @Override // com.google.api.client.http.aa
    public final String getReasonPhrase() {
        return this.f31778c;
    }

    @Override // com.google.api.client.http.aa
    public final int getStatusCode() {
        return this.f31777b;
    }

    @Override // com.google.api.client.http.aa
    public final String getStatusLine() {
        String headerField = this.f31776a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }
}

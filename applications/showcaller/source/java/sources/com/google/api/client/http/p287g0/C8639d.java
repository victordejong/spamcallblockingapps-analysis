package com.google.api.client.http.p287g0;

import com.google.api.client.http.AbstractC8615a0;
import com.yanzhenjie.nohttp.Headers;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.api.client.http.g0.d */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/d.class */
public final class C8639d extends AbstractC8615a0 {

    /* renamed from: a */
    private final HttpURLConnection f38338a;

    /* renamed from: b */
    private final int f38339b;

    /* renamed from: c */
    private final String f38340c;

    /* renamed from: d */
    private final ArrayList<String> f38341d;

    /* renamed from: e */
    private final ArrayList<String> f38342e;

    /* renamed from: com.google.api.client.http.g0.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/d$a.class */
    private final class C8640a extends FilterInputStream {

        /* renamed from: d */
        private long f38343d = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8640a(InputStream inputStream) {
            super(inputStream);
            C8639d.this = r5;
        }

        /* renamed from: a */
        private void m3181a() {
            long mo3189d = C8639d.this.mo3189d();
            if (mo3189d == -1) {
                return;
            }
            long j = this.f38343d;
            if (j == 0 || j >= mo3189d) {
                return;
            }
            throw new IOException("Connection closed prematurely: bytesRead = " + this.f38343d + ", Content-Length = " + mo3189d);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            int read = ((FilterInputStream) this).in.read();
            if (read == -1) {
                m3181a();
            } else {
                this.f38343d++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = ((FilterInputStream) this).in.read(bArr, i, i2);
            if (read == -1) {
                m3181a();
            } else {
                this.f38343d += read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) {
            long skip = ((FilterInputStream) this).in.skip(j);
            this.f38343d += skip;
            return skip;
        }
    }

    public C8639d(HttpURLConnection httpURLConnection) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f38341d = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.f38342e = arrayList2;
        this.f38338a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.f38339b = responseCode == -1 ? 0 : responseCode;
        this.f38340c = httpURLConnection.getResponseMessage();
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

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: a */
    public void mo3192a() {
        this.f38338a.disconnect();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: b */
    public InputStream mo3191b() {
        InputStream inputStream;
        try {
            inputStream = this.f38338a.getInputStream();
        } catch (IOException e) {
            inputStream = this.f38338a.getErrorStream();
        }
        return inputStream == null ? null : new C8640a(inputStream);
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: c */
    public String mo3190c() {
        return this.f38338a.getContentEncoding();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: d */
    public long mo3189d() {
        String headerField = this.f38338a.getHeaderField(Headers.HEAD_KEY_CONTENT_LENGTH);
        return headerField == null ? (char) 65535 : Long.parseLong(headerField);
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: e */
    public String mo3188e() {
        return this.f38338a.getHeaderField(Headers.HEAD_KEY_CONTENT_TYPE);
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: f */
    public int mo3187f() {
        return this.f38341d.size();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: g */
    public String mo3186g(int i) {
        return this.f38341d.get(i);
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: h */
    public String mo3185h(int i) {
        return this.f38342e.get(i);
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: i */
    public String mo3184i() {
        return this.f38340c;
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: j */
    public int mo3183j() {
        return this.f38339b;
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: k */
    public String mo3182k() {
        String headerField = this.f38338a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            headerField = null;
        }
        return headerField;
    }
}

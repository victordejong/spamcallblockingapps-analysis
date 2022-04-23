package com.callapp.contacts.api.helper.google;

import com.google.api.client.http.aa;
import com.google.api.client.http.z;
import com.google.common.base.m;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/OkHttpRequest.class */
final class OkHttpRequest extends z {

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f14187a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpRequest(HttpURLConnection httpURLConnection) {
        this.f14187a = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    @Override // com.google.api.client.http.z
    public final void addHeader(String str, String str2) {
        this.f14187a.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.z
    public final aa execute() throws IOException {
        HttpURLConnection httpURLConnection = this.f14187a;
        if (getStreamingContent() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader("Content-Type", contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader("Content-Encoding", contentEncoding);
            }
            long contentLength = getContentLength();
            int i = (contentLength > 0L ? 1 : (contentLength == 0L ? 0 : -1));
            if (i >= 0) {
                addHeader("Content-Length", Long.toString(contentLength));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if ("POST".equals(requestMethod) || "PUT".equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (i < 0 || contentLength > 2147483647L) {
                    httpURLConnection.setChunkedStreamingMode(0);
                } else {
                    httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    getStreamingContent().writeTo(outputStream);
                    if (outputStream != null) {
                        outputStream.close();
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            } else {
                m.a(i == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        try {
            httpURLConnection.connect();
            return new OkHttpResponse(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }

    @Override // com.google.api.client.http.z
    public final void setTimeout(int i, int i2) {
        this.f14187a.setReadTimeout(i2);
        this.f14187a.setConnectTimeout(i);
    }
}

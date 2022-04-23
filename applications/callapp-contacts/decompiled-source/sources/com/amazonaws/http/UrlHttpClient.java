package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/UrlHttpClient.class */
public class UrlHttpClient implements HttpClient {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6627a = LogFactory.a(UrlHttpClient.class);

    /* renamed from: b  reason: collision with root package name */
    private final ClientConfiguration f6628b;

    /* renamed from: c  reason: collision with root package name */
    private SSLContext f6629c = null;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/UrlHttpClient$CurlBuilder.class */
    public final class CurlBuilder {

        /* renamed from: a  reason: collision with root package name */
        String f6630a = null;

        /* renamed from: b  reason: collision with root package name */
        final HashMap<String, String> f6631b = new HashMap<>();

        /* renamed from: c  reason: collision with root package name */
        String f6632c = null;

        /* renamed from: d  reason: collision with root package name */
        boolean f6633d = false;
        private final URL f;

        public CurlBuilder(URL url) {
            if (url != null) {
                this.f = url;
                return;
            }
            throw new IllegalArgumentException("Must have a valid url");
        }

        public final boolean a() {
            return !this.f6633d;
        }

        public final String b() {
            if (a()) {
                StringBuilder sb = new StringBuilder("curl");
                if (this.f6630a != null) {
                    sb.append(" -X ");
                    sb.append(this.f6630a);
                }
                for (Map.Entry<String, String> entry : this.f6631b.entrySet()) {
                    sb.append(" -H \"");
                    sb.append(entry.getKey());
                    sb.append(":");
                    sb.append(entry.getValue());
                    sb.append("\"");
                }
                if (this.f6632c != null) {
                    sb.append(" -d '");
                    sb.append(this.f6632c);
                    sb.append("'");
                }
                sb.append(StringUtils.SPACE);
                sb.append(this.f.toString());
                return sb.toString();
            }
            throw new IllegalStateException("Invalid state, cannot create curl command");
        }
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.f6628b = clientConfiguration;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00bf -> B:7:0x002f). Please submit an issue!!! */
    private static HttpResponse a(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        InputStream inputStream = errorStream;
        if (errorStream == null) {
            inputStream = errorStream;
            if (!"HEAD".equals(httpRequest.f6615a)) {
                try {
                    inputStream = httpURLConnection.getInputStream();
                } catch (IOException e) {
                    inputStream = errorStream;
                }
            }
        }
        HttpResponse.Builder b2 = HttpResponse.b();
        b2.f6624b = responseCode;
        b2.f6623a = responseMessage;
        b2.f6625c = inputStream;
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                b2.f6626d.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return new HttpResponse(b2.f6623a, b2.f6624b, Collections.unmodifiableMap(b2.f6626d), b2.f6625c);
    }

    private static void a(InputStream inputStream, OutputStream outputStream, CurlBuilder curlBuilder, ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                if (byteBuffer != null) {
                    try {
                        byteBuffer.put(bArr, 0, read);
                    } catch (BufferOverflowException e) {
                        curlBuilder.f6633d = true;
                    }
                }
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void a(String str) {
        f6627a.b(str);
    }

    @Override // com.amazonaws.http.HttpClient
    public final HttpResponse a(HttpRequest httpRequest) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) httpRequest.f6616b.toURL().openConnection();
        CurlBuilder curlBuilder = this.f6628b.isCurlLogging() ? new CurlBuilder(httpRequest.f6616b.toURL()) : null;
        httpURLConnection.setConnectTimeout(this.f6628b.getConnectionTimeout());
        httpURLConnection.setReadTimeout(this.f6628b.getSocketTimeout());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpRequest.e) {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (this.f6628b.getTrustManager() != null) {
                if (this.f6629c == null) {
                    TrustManager trustManager = this.f6628b.getTrustManager();
                    try {
                        SSLContext instance = SSLContext.getInstance("TLS");
                        this.f6629c = instance;
                        instance.init(null, new TrustManager[]{trustManager}, null);
                    } catch (GeneralSecurityException e) {
                        throw new RuntimeException(e);
                    }
                }
                httpsURLConnection.setSSLSocketFactory(this.f6629c.getSocketFactory());
            }
        }
        if (httpRequest.f6617c != null && !httpRequest.f6617c.isEmpty()) {
            if (curlBuilder != null) {
                Map<String, String> map = httpRequest.f6617c;
                curlBuilder.f6631b.clear();
                curlBuilder.f6631b.putAll(map);
            }
            for (Map.Entry<String, String> entry : httpRequest.f6617c.entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals("Host")) {
                    key.equals("Expect");
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        String str = httpRequest.f6615a;
        httpURLConnection.setRequestMethod(str);
        if (curlBuilder != null) {
            curlBuilder.f6630a = str;
        }
        if (httpRequest.f6618d != null && httpRequest.a() >= 0) {
            httpURLConnection.setDoOutput(true);
            if (!httpRequest.e) {
                httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.a());
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            ByteBuffer byteBuffer = null;
            if (curlBuilder != null) {
                if (httpRequest.a() < 2147483647L) {
                    byteBuffer = ByteBuffer.allocate((int) httpRequest.a());
                } else {
                    curlBuilder.f6633d = true;
                    byteBuffer = null;
                }
            }
            a(httpRequest.f6618d, outputStream, curlBuilder, byteBuffer);
            if (!(curlBuilder == null || byteBuffer == null || byteBuffer.position() == 0)) {
                curlBuilder.f6632c = new String(byteBuffer.array(), "UTF-8");
            }
            outputStream.flush();
            outputStream.close();
        }
        if (curlBuilder != null) {
            if (curlBuilder.a()) {
                a(curlBuilder.b());
            } else {
                a("Failed to create curl, content too long");
            }
        }
        return a(httpRequest, httpURLConnection);
    }
}

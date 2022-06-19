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

    /* renamed from: a */
    private static final Log f12075a = LogFactory.m38584a(UrlHttpClient.class);

    /* renamed from: b */
    private final ClientConfiguration f12076b;

    /* renamed from: c */
    private SSLContext f12077c = null;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/UrlHttpClient$CurlBuilder.class */
    public final class CurlBuilder {

        /* renamed from: a */
        String f12078a = null;

        /* renamed from: b */
        final HashMap<String, String> f12079b = new HashMap<>();

        /* renamed from: c */
        String f12080c = null;

        /* renamed from: d */
        boolean f12081d = false;

        /* renamed from: f */
        private final URL f12083f;

        public CurlBuilder(URL url) {
            UrlHttpClient.this = r5;
            if (url != null) {
                this.f12083f = url;
                return;
            }
            throw new IllegalArgumentException("Must have a valid url");
        }

        /* renamed from: a */
        public final boolean m38611a() {
            return !this.f12081d;
        }

        /* renamed from: b */
        public final String m38610b() {
            if (m38611a()) {
                StringBuilder sb = new StringBuilder("curl");
                if (this.f12078a != null) {
                    sb.append(" -X ");
                    sb.append(this.f12078a);
                }
                for (Map.Entry<String, String> entry : this.f12079b.entrySet()) {
                    sb.append(" -H \"");
                    sb.append(entry.getKey());
                    sb.append(":");
                    sb.append(entry.getValue());
                    sb.append("\"");
                }
                if (this.f12080c != null) {
                    sb.append(" -d '");
                    sb.append(this.f12080c);
                    sb.append("'");
                }
                sb.append(StringUtils.SPACE);
                sb.append(this.f12083f.toString());
                return sb.toString();
            }
            throw new IllegalStateException("Invalid state, cannot create curl command");
        }
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.f12076b = clientConfiguration;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00bf -> B:7:0x002f). Please submit an issue!!! */
    /* renamed from: a */
    private static HttpResponse m38614a(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        InputStream inputStream = errorStream;
        if (errorStream == null) {
            inputStream = errorStream;
            if (!"HEAD".equals(httpRequest.f12061a)) {
                try {
                    inputStream = httpURLConnection.getInputStream();
                } catch (IOException e) {
                    inputStream = errorStream;
                }
            }
        }
        HttpResponse.Builder m38616b = HttpResponse.m38616b();
        m38616b.f12072b = responseCode;
        m38616b.f12071a = responseMessage;
        m38616b.f12073c = inputStream;
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                m38616b.f12074d.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return new HttpResponse(m38616b.f12071a, m38616b.f12072b, Collections.unmodifiableMap(m38616b.f12074d), m38616b.f12073c);
    }

    /* renamed from: a */
    private static void m38613a(InputStream inputStream, OutputStream outputStream, CurlBuilder curlBuilder, ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                if (byteBuffer != null) {
                    try {
                        byteBuffer.put(bArr, 0, read);
                    } catch (BufferOverflowException e) {
                        curlBuilder.f12081d = true;
                    }
                }
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private static void m38612a(String str) {
        f12075a.mo38593b(str);
    }

    @Override // com.amazonaws.http.HttpClient
    /* renamed from: a */
    public final HttpResponse mo38615a(HttpRequest httpRequest) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) httpRequest.f12062b.toURL().openConnection();
        CurlBuilder curlBuilder = this.f12076b.isCurlLogging() ? new CurlBuilder(httpRequest.f12062b.toURL()) : null;
        httpURLConnection.setConnectTimeout(this.f12076b.getConnectionTimeout());
        httpURLConnection.setReadTimeout(this.f12076b.getSocketTimeout());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpRequest.f12065e) {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (this.f12076b.getTrustManager() != null) {
                if (this.f12077c == null) {
                    TrustManager trustManager = this.f12076b.getTrustManager();
                    try {
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        this.f12077c = sSLContext;
                        sSLContext.init(null, new TrustManager[]{trustManager}, null);
                    } catch (GeneralSecurityException e) {
                        throw new RuntimeException(e);
                    }
                }
                httpsURLConnection.setSSLSocketFactory(this.f12077c.getSocketFactory());
            }
        }
        if (httpRequest.f12063c != null && !httpRequest.f12063c.isEmpty()) {
            if (curlBuilder != null) {
                Map<String, String> map = httpRequest.f12063c;
                curlBuilder.f12079b.clear();
                curlBuilder.f12079b.putAll(map);
            }
            for (Map.Entry<String, String> entry : httpRequest.f12063c.entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals("Host")) {
                    key.equals("Expect");
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        String str = httpRequest.f12061a;
        httpURLConnection.setRequestMethod(str);
        if (curlBuilder != null) {
            curlBuilder.f12078a = str;
        }
        if (httpRequest.f12064d != null && httpRequest.m38619a() >= 0) {
            httpURLConnection.setDoOutput(true);
            if (!httpRequest.f12065e) {
                httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.m38619a());
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            ByteBuffer byteBuffer = null;
            if (curlBuilder != null) {
                if (httpRequest.m38619a() < 2147483647L) {
                    byteBuffer = ByteBuffer.allocate((int) httpRequest.m38619a());
                } else {
                    curlBuilder.f12081d = true;
                    byteBuffer = null;
                }
            }
            m38613a(httpRequest.f12064d, outputStream, curlBuilder, byteBuffer);
            if (curlBuilder != null && byteBuffer != null && byteBuffer.position() != 0) {
                curlBuilder.f12080c = new String(byteBuffer.array(), "UTF-8");
            }
            outputStream.flush();
            outputStream.close();
        }
        if (curlBuilder != null) {
            if (curlBuilder.m38611a()) {
                m38612a(curlBuilder.m38610b());
            } else {
                m38612a("Failed to create curl, content too long");
            }
        }
        return m38614a(httpRequest, httpURLConnection);
    }
}

package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.http.HttpResponse;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/UrlHttpClient.class */
public class UrlHttpClient implements HttpClient {
    public static final Log log = LogFactory.getLog(UrlHttpClient.class);
    public final ClientConfiguration config;

    /* renamed from: sc */
    public SSLContext f805sc = null;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/UrlHttpClient$CurlBuilder.class */
    public final class CurlBuilder {
        public final URL url;
        public String method = null;
        public final HashMap<String, String> headers = new HashMap<>();
        public String content = null;
        public boolean contentOverflow = false;

        public CurlBuilder(UrlHttpClient urlHttpClient, URL url) {
            if (url != null) {
                this.url = url;
                return;
            }
            throw new IllegalArgumentException("Must have a valid url");
        }

        public String build() {
            if (isValid()) {
                StringBuilder sb = new StringBuilder("curl");
                if (this.method != null) {
                    sb.append(" -X ");
                    sb.append(this.method);
                }
                for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                    sb.append(" -H \"");
                    sb.append(entry.getKey());
                    sb.append(":");
                    sb.append(entry.getValue());
                    sb.append("\"");
                }
                if (this.content != null) {
                    sb.append(" -d '");
                    sb.append(this.content);
                    sb.append("'");
                }
                sb.append(" ");
                sb.append(this.url.toString());
                return sb.toString();
            }
            throw new IllegalStateException("Invalid state, cannot create curl command");
        }

        public boolean isValid() {
            return !this.contentOverflow;
        }

        public CurlBuilder setContent(String str) {
            this.content = str;
            return this;
        }

        public CurlBuilder setContentOverflow(boolean z) {
            this.contentOverflow = z;
            return this;
        }

        public CurlBuilder setHeaders(Map<String, String> map) {
            this.headers.clear();
            this.headers.putAll(map);
            return this;
        }

        public CurlBuilder setMethod(String str) {
            this.method = str;
            return this;
        }
    }

    public UrlHttpClient(ClientConfiguration clientConfiguration) {
        this.config = clientConfiguration;
    }

    public HttpURLConnection applyHeadersAndMethod(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws ProtocolException {
        if (httpRequest.getHeaders() != null && !httpRequest.getHeaders().isEmpty()) {
            if (curlBuilder != null) {
                curlBuilder.setHeaders(httpRequest.getHeaders());
            }
            for (Map.Entry<String, String> entry : httpRequest.getHeaders().entrySet()) {
                String key = entry.getKey();
                if (!key.equals("Content-Length") && !key.equals("Host")) {
                    key.equals("Expect");
                    httpURLConnection.setRequestProperty(key, entry.getValue());
                }
            }
        }
        String method = httpRequest.getMethod();
        httpURLConnection.setRequestMethod(method);
        if (curlBuilder != null) {
            curlBuilder.setMethod(method);
        }
        return httpURLConnection;
    }

    public void configureConnection(HttpRequest httpRequest, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(this.config.getConnectionTimeout());
        httpURLConnection.setReadTimeout(this.config.getSocketTimeout());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        if (httpRequest.isStreaming()) {
            httpURLConnection.setChunkedStreamingMode(0);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            if (this.config.getTrustManager() != null) {
                enableCustomTrustManager(httpsURLConnection);
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00a2 -> B:7:0x0030). Please submit an issue!!! */
    public HttpResponse createHttpResponse(HttpRequest httpRequest, HttpURLConnection httpURLConnection) throws IOException {
        String responseMessage = httpURLConnection.getResponseMessage();
        int responseCode = httpURLConnection.getResponseCode();
        InputStream errorStream = httpURLConnection.getErrorStream();
        InputStream inputStream = errorStream;
        if (errorStream == null) {
            inputStream = errorStream;
            if (!httpRequest.getMethod().equals("HEAD")) {
                try {
                    inputStream = httpURLConnection.getInputStream();
                } catch (IOException e) {
                    inputStream = errorStream;
                }
            }
        }
        HttpResponse.Builder builder = HttpResponse.builder();
        builder.statusCode(responseCode);
        builder.statusText(responseMessage);
        builder.content(inputStream);
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                builder.header(entry.getKey(), entry.getValue().get(0));
            }
        }
        return builder.build();
    }

    public final void enableCustomTrustManager(HttpsURLConnection httpsURLConnection) {
        if (this.f805sc == null) {
            TrustManager trustManager = this.config.getTrustManager();
            try {
                this.f805sc = SSLContext.getInstance("TLS");
                this.f805sc.init(null, new TrustManager[]{trustManager}, null);
            } catch (GeneralSecurityException e) {
                throw new RuntimeException(e);
            }
        }
        httpsURLConnection.setSSLSocketFactory(this.f805sc.getSocketFactory());
    }

    @Override // com.amazonaws.http.HttpClient
    public HttpResponse execute(HttpRequest httpRequest) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(httpRequest.getUri().toURL().openConnection());
        CurlBuilder curlBuilder = this.config.isCurlLogging() ? new CurlBuilder(this, httpRequest.getUri().toURL()) : null;
        configureConnection(httpRequest, httpURLConnection);
        applyHeadersAndMethod(httpRequest, httpURLConnection, curlBuilder);
        writeContentToConnection(httpRequest, httpURLConnection, curlBuilder);
        if (curlBuilder != null) {
            if (curlBuilder.isValid()) {
                printToLog(curlBuilder.build());
            } else {
                printToLog("Failed to create curl, content too long");
            }
        }
        return createHttpResponse(httpRequest, httpURLConnection);
    }

    public void printToLog(String str) {
        log.debug(str);
    }

    @Override // com.amazonaws.http.HttpClient
    public void shutdown() {
    }

    public final void write(InputStream inputStream, OutputStream outputStream, CurlBuilder curlBuilder, ByteBuffer byteBuffer) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                if (byteBuffer != null) {
                    try {
                        byteBuffer.put(bArr, 0, read);
                    } catch (BufferOverflowException e) {
                        curlBuilder.setContentOverflow(true);
                    }
                }
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public void writeContentToConnection(HttpRequest httpRequest, HttpURLConnection httpURLConnection, CurlBuilder curlBuilder) throws IOException {
        if (httpRequest.getContent() != null && httpRequest.getContentLength() >= 0) {
            httpURLConnection.setDoOutput(true);
            if (!httpRequest.isStreaming()) {
                httpURLConnection.setFixedLengthStreamingMode((int) httpRequest.getContentLength());
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            ByteBuffer byteBuffer = null;
            if (curlBuilder != null) {
                if (httpRequest.getContentLength() < 2147483647L) {
                    byteBuffer = ByteBuffer.allocate((int) httpRequest.getContentLength());
                } else {
                    curlBuilder.setContentOverflow(true);
                    byteBuffer = null;
                }
            }
            write(httpRequest.getContent(), outputStream, curlBuilder, byteBuffer);
            if (!(curlBuilder == null || byteBuffer == null || byteBuffer.position() == 0)) {
                curlBuilder.setContent(new String(byteBuffer.array(), "UTF-8"));
            }
            outputStream.flush();
            outputStream.close();
        }
    }
}

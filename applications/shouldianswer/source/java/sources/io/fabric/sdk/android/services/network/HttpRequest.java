package io.fabric.sdk.android.services.network;

import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequest.class */
public class HttpRequest {

    /* renamed from: b */
    private static final String[] f4300b = new String[0];

    /* renamed from: c */
    private static AbstractC1580b f4301c = AbstractC1580b.f4317a;

    /* renamed from: a */
    public final URL f4302a;

    /* renamed from: e */
    private final String f4304e;

    /* renamed from: f */
    private C1583d f4305f;

    /* renamed from: g */
    private boolean f4306g;

    /* renamed from: k */
    private String f4310k;

    /* renamed from: l */
    private int f4311l;

    /* renamed from: d */
    private HttpURLConnection f4303d = null;

    /* renamed from: h */
    private boolean f4307h = true;

    /* renamed from: i */
    private boolean f4308i = false;

    /* renamed from: j */
    private int f4309j = 8192;

    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequest$HttpRequestException.class */
    public static class HttpRequestException extends RuntimeException {
        protected HttpRequestException(IOException iOException) {
            super(iOException);
        }

        /* renamed from: a */
        public IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: io.fabric.sdk.android.services.network.HttpRequest$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequest$a.class */
    public static abstract class AbstractC1579a<V> extends AbstractCallableC1582c<V> {

        /* renamed from: a */
        private final Closeable f4315a;

        /* renamed from: b */
        private final boolean f4316b;

        protected AbstractC1579a(Closeable closeable, boolean z) {
            this.f4315a = closeable;
            this.f4316b = z;
        }

        @Override // io.fabric.sdk.android.services.network.HttpRequest.AbstractCallableC1582c
        /* renamed from: c */
        protected void mo3236c() {
            Closeable closeable = this.f4315a;
            if (closeable instanceof Flushable) {
                ((Flushable) closeable).flush();
            }
            if (!this.f4316b) {
                this.f4315a.close();
                return;
            }
            try {
                this.f4315a.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: io.fabric.sdk.android.services.network.HttpRequest$b */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequest$b.class */
    public interface AbstractC1580b {

        /* renamed from: a */
        public static final AbstractC1580b f4317a = new AbstractC1580b() { // from class: io.fabric.sdk.android.services.network.HttpRequest.b.1
            @Override // io.fabric.sdk.android.services.network.HttpRequest.AbstractC1580b
            /* renamed from: a */
            public HttpURLConnection mo3239a(URL url) {
                return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            }

            @Override // io.fabric.sdk.android.services.network.HttpRequest.AbstractC1580b
            /* renamed from: a */
            public HttpURLConnection mo3238a(URL url, Proxy proxy) {
                return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection(proxy)));
            }
        };

        /* renamed from: a */
        HttpURLConnection mo3239a(URL url);

        /* renamed from: a */
        HttpURLConnection mo3238a(URL url, Proxy proxy);
    }

    /* renamed from: io.fabric.sdk.android.services.network.HttpRequest$c */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequest$c.class */
    public static abstract class AbstractCallableC1582c<V> implements Callable<V> {
        protected AbstractCallableC1582c() {
        }

        /* renamed from: b */
        protected abstract V mo3237b();

        /* renamed from: c */
        protected abstract void mo3236c();

        @Override // java.util.concurrent.Callable
        public V call() {
            Throwable th;
            boolean z = true;
            try {
                try {
                    try {
                        V mo3237b = mo3237b();
                        try {
                            mo3236c();
                            return mo3237b;
                        } catch (IOException e) {
                            throw new HttpRequestException(e);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            mo3236c();
                        } catch (IOException e2) {
                            if (!z) {
                                throw new HttpRequestException(e2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    throw new HttpRequestException(e3);
                }
            } catch (HttpRequestException e4) {
                throw e4;
            } catch (Throwable th3) {
                th = th3;
                z = false;
                mo3236c();
                throw th;
            }
        }
    }

    /* renamed from: io.fabric.sdk.android.services.network.HttpRequest$d */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequest$d.class */
    public static class C1583d extends BufferedOutputStream {

        /* renamed from: a */
        private final CharsetEncoder f4318a;

        public C1583d(OutputStream outputStream, String str, int i) {
            super(outputStream, i);
            this.f4318a = Charset.forName(HttpRequest.m3254f(str)).newEncoder();
        }

        /* renamed from: a */
        public C1583d m3235a(String str) {
            ByteBuffer encode = this.f4318a.encode(CharBuffer.wrap(str));
            super.write(encode.array(), 0, encode.limit());
            return this;
        }
    }

    public HttpRequest(CharSequence charSequence, String str) {
        try {
            this.f4302a = new URL(charSequence.toString());
            this.f4304e = str;
        } catch (MalformedURLException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: a */
    public static HttpRequest m3288a(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String m3289a = m3289a(charSequence, map);
        String str = m3289a;
        if (z) {
            str = m3290a((CharSequence) m3289a);
        }
        return m3274b((CharSequence) str);
    }

    /* renamed from: a */
    public static String m3290a(CharSequence charSequence) {
        int port;
        int i;
        try {
            URL url = new URL(charSequence.toString());
            String host = url.getHost();
            String str = host;
            if (url.getPort() != -1) {
                str = host + ':' + Integer.toString(port);
            }
            try {
                String aSCIIString = new URI(url.getProtocol(), str, url.getPath(), url.getQuery(), null).toASCIIString();
                int indexOf = aSCIIString.indexOf(63);
                String str2 = aSCIIString;
                if (indexOf > 0) {
                    str2 = aSCIIString;
                    if (indexOf + 1 < aSCIIString.length()) {
                        str2 = aSCIIString.substring(0, i) + aSCIIString.substring(i).replace("+", "%2B");
                    }
                }
                return str2;
            } catch (URISyntaxException e) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e);
                throw new HttpRequestException(iOException);
            }
        } catch (IOException e2) {
            throw new HttpRequestException(e2);
        }
    }

    /* renamed from: a */
    public static String m3289a(CharSequence charSequence, Map<?, ?> map) {
        String charSequence2 = charSequence.toString();
        String str = charSequence2;
        if (map != null) {
            if (map.isEmpty()) {
                str = charSequence2;
            } else {
                StringBuilder sb = new StringBuilder(charSequence2);
                m3278a(charSequence2, sb);
                m3269b(charSequence2, sb);
                Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
                Map.Entry<?, ?> next = it.next();
                sb.append(next.getKey().toString());
                sb.append('=');
                Object value = next.getValue();
                if (value != null) {
                    sb.append(value);
                }
                while (it.hasNext()) {
                    sb.append('&');
                    Map.Entry<?, ?> next2 = it.next();
                    sb.append(next2.getKey().toString());
                    sb.append('=');
                    Object value2 = next2.getValue();
                    if (value2 != null) {
                        sb.append(value2);
                    }
                }
                str = sb.toString();
            }
        }
        return str;
    }

    /* renamed from: a */
    private static StringBuilder m3278a(String str, StringBuilder sb) {
        if (str.indexOf(58) + 2 == str.lastIndexOf(47)) {
            sb.append('/');
        }
        return sb;
    }

    /* renamed from: b */
    public static HttpRequest m3274b(CharSequence charSequence) {
        return new HttpRequest(charSequence, FirebasePerformance.HttpMethod.GET);
    }

    /* renamed from: b */
    public static HttpRequest m3273b(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String m3289a = m3289a(charSequence, map);
        String str = m3289a;
        if (z) {
            str = m3290a((CharSequence) m3289a);
        }
        return m3267c((CharSequence) str);
    }

    /* renamed from: b */
    private static StringBuilder m3269b(String str, StringBuilder sb) {
        int indexOf = str.indexOf(63);
        int length = sb.length() - 1;
        if (indexOf == -1) {
            sb.append('?');
        } else if (indexOf < length && str.charAt(length) != '&') {
            sb.append('&');
        }
        return sb;
    }

    /* renamed from: c */
    public static HttpRequest m3267c(CharSequence charSequence) {
        return new HttpRequest(charSequence, FirebasePerformance.HttpMethod.POST);
    }

    /* renamed from: d */
    public static HttpRequest m3263d(CharSequence charSequence) {
        return new HttpRequest(charSequence, FirebasePerformance.HttpMethod.PUT);
    }

    /* renamed from: e */
    public static HttpRequest m3259e(CharSequence charSequence) {
        return new HttpRequest(charSequence, FirebasePerformance.HttpMethod.DELETE);
    }

    /* renamed from: f */
    public static String m3254f(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    /* renamed from: p */
    private Proxy m3243p() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f4310k, this.f4311l));
    }

    /* renamed from: q */
    private HttpURLConnection m3242q() {
        try {
            HttpURLConnection mo3238a = this.f4310k != null ? f4301c.mo3238a(this.f4302a, m3243p()) : f4301c.mo3239a(this.f4302a);
            mo3238a.setRequestMethod(this.f4304e);
            return mo3238a;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: a */
    public int m3286a(String str, int i) {
        m3248k();
        return m3294a().getHeaderFieldInt(str, i);
    }

    /* renamed from: a */
    public HttpRequest m3293a(int i) {
        m3294a().setConnectTimeout(i);
        return this;
    }

    /* renamed from: a */
    protected HttpRequest m3291a(final InputStream inputStream, final OutputStream outputStream) {
        return new AbstractC1579a<HttpRequest>(inputStream, this.f4307h) { // from class: io.fabric.sdk.android.services.network.HttpRequest.1
            /* renamed from: a */
            public HttpRequest mo3237b() {
                byte[] bArr = new byte[HttpRequest.this.f4309j];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        outputStream.write(bArr, 0, read);
                    } else {
                        return HttpRequest.this;
                    }
                }
            }
        }.call();
    }

    /* renamed from: a */
    public HttpRequest m3285a(String str, Number number) {
        return m3283a(str, (String) null, number);
    }

    /* renamed from: a */
    public HttpRequest m3284a(String str, String str2) {
        m3294a().setRequestProperty(str, str2);
        return this;
    }

    /* renamed from: a */
    public HttpRequest m3283a(String str, String str2, Number number) {
        return m3270b(str, str2, number != null ? number.toString() : null);
    }

    /* renamed from: a */
    protected HttpRequest m3282a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"");
        sb.append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"");
            sb.append(str2);
        }
        sb.append('\"');
        m3253f("Content-Disposition", sb.toString());
        if (str3 != null) {
            m3253f("Content-Type", str3);
        }
        return m3255f("\r\n");
    }

    /* renamed from: a */
    public HttpRequest m3281a(String str, String str2, String str3, File file) {
        Throwable th;
        IOException e;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        BufferedInputStream bufferedInputStream3 = null;
        try {
            try {
                bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException e2) {
                e = e2;
                bufferedInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            HttpRequest m3280a = m3280a(str, str2, str3, bufferedInputStream2);
            try {
                bufferedInputStream2.close();
            } catch (IOException e3) {
            }
            return m3280a;
        } catch (IOException e4) {
            e = e4;
            bufferedInputStream = bufferedInputStream2;
            BufferedInputStream bufferedInputStream4 = bufferedInputStream;
            bufferedInputStream3 = bufferedInputStream;
            throw new HttpRequestException(e);
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream3 = bufferedInputStream2;
            if (bufferedInputStream3 != null) {
                try {
                    bufferedInputStream3.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public HttpRequest m3280a(String str, String str2, String str3, InputStream inputStream) {
        try {
            m3246m();
            m3282a(str, str2, str3);
            m3291a(inputStream, this.f4305f);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: a */
    public HttpRequest m3279a(String str, String str2, String str3, String str4) {
        try {
            m3246m();
            m3282a(str, str2, str3);
            this.f4305f.m3235a(str4);
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: a */
    public HttpRequest m3277a(Map.Entry<String, String> entry) {
        return m3284a(entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public HttpRequest m3276a(boolean z) {
        m3294a().setUseCaches(z);
        return this;
    }

    /* renamed from: a */
    public String m3287a(String str) {
        ByteArrayOutputStream m3268c = m3268c();
        try {
            m3291a(m3260e(), m3268c);
            return m3268c.toString(m3254f(str));
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: a */
    public HttpURLConnection m3294a() {
        if (this.f4303d == null) {
            this.f4303d = m3242q();
        }
        return this.f4303d;
    }

    /* renamed from: b */
    public int m3275b() {
        try {
            m3249j();
            return m3294a().getResponseCode();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: b */
    public HttpRequest m3270b(String str, String str2, String str3) {
        return m3279a(str, str2, (String) null, str3);
    }

    /* renamed from: b */
    public String m3272b(String str) {
        m3248k();
        return m3294a().getHeaderField(str);
    }

    /* renamed from: b */
    public String m3271b(String str, String str2) {
        return m3265c(m3272b(str), str2);
    }

    /* renamed from: c */
    public int m3266c(String str) {
        return m3286a(str, -1);
    }

    /* renamed from: c */
    protected ByteArrayOutputStream m3268c() {
        int m3250i = m3250i();
        return m3250i > 0 ? new ByteArrayOutputStream(m3250i) : new ByteArrayOutputStream();
    }

    /* renamed from: c */
    protected String m3265c(String str, String str2) {
        String trim;
        int length;
        if (str == null || str.length() == 0) {
            return null;
        }
        int length2 = str.length();
        int indexOf = str.indexOf(59) + 1;
        if (indexOf == 0 || indexOf == length2) {
            return null;
        }
        int indexOf2 = str.indexOf(59, indexOf);
        int i = indexOf;
        int i2 = indexOf2;
        if (indexOf2 == -1) {
            i = indexOf;
            i2 = length2;
        }
        while (i < i2) {
            int indexOf3 = str.indexOf(61, i);
            if (indexOf3 != -1 && indexOf3 < i2 && str2.equals(str.substring(i, indexOf3).trim()) && (length = (trim = str.substring(indexOf3 + 1, i2).trim()).length()) != 0) {
                if (length > 2 && '\"' == trim.charAt(0)) {
                    int i3 = length - 1;
                    if ('\"' == trim.charAt(i3)) {
                        return trim.substring(1, i3);
                    }
                }
                return trim;
            }
            int i4 = i2 + 1;
            int indexOf4 = str.indexOf(59, i4);
            i = i4;
            i2 = indexOf4;
            if (indexOf4 == -1) {
                i = i4;
                i2 = length2;
            }
        }
        return null;
    }

    /* renamed from: d */
    public HttpRequest m3262d(String str) {
        return m3261d(str, null);
    }

    /* renamed from: d */
    public HttpRequest m3261d(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return m3284a("Content-Type", str);
        }
        return m3284a("Content-Type", str + "; charset=" + str2);
    }

    /* renamed from: d */
    public String m3264d() {
        return m3287a(m3252g());
    }

    /* renamed from: e */
    public HttpRequest m3257e(String str, String str2) {
        return m3270b(str, (String) null, str2);
    }

    /* renamed from: e */
    public BufferedInputStream m3260e() {
        return new BufferedInputStream(m3256f(), this.f4309j);
    }

    /* renamed from: f */
    public HttpRequest m3255f(CharSequence charSequence) {
        try {
            m3247l();
            this.f4305f.m3235a(charSequence.toString());
            return this;
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: f */
    public HttpRequest m3253f(String str, String str2) {
        return m3255f((CharSequence) str).m3255f(": ").m3255f((CharSequence) str2).m3255f("\r\n");
    }

    /* renamed from: f */
    public InputStream m3256f() {
        InputStream inputStream;
        if (m3275b() < 400) {
            try {
                inputStream = m3294a().getInputStream();
            } catch (IOException e) {
                throw new HttpRequestException(e);
            }
        } else {
            InputStream errorStream = m3294a().getErrorStream();
            inputStream = errorStream;
            if (errorStream == null) {
                try {
                    inputStream = m3294a().getInputStream();
                } catch (IOException e2) {
                    throw new HttpRequestException(e2);
                }
            }
        }
        if (!this.f4308i || !"gzip".equals(m3251h())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e3) {
            throw new HttpRequestException(e3);
        }
    }

    /* renamed from: g */
    public String m3252g() {
        return m3271b("Content-Type", "charset");
    }

    /* renamed from: h */
    public String m3251h() {
        return m3272b("Content-Encoding");
    }

    /* renamed from: i */
    public int m3250i() {
        return m3266c("Content-Length");
    }

    /* renamed from: j */
    protected HttpRequest m3249j() {
        C1583d c1583d = this.f4305f;
        if (c1583d == null) {
            return this;
        }
        if (this.f4306g) {
            c1583d.m3235a("\r\n--00content0boundary00--\r\n");
        }
        if (this.f4307h) {
            try {
                this.f4305f.close();
            } catch (IOException e) {
            }
        } else {
            this.f4305f.close();
        }
        this.f4305f = null;
        return this;
    }

    /* renamed from: k */
    protected HttpRequest m3248k() {
        try {
            return m3249j();
        } catch (IOException e) {
            throw new HttpRequestException(e);
        }
    }

    /* renamed from: l */
    protected HttpRequest m3247l() {
        if (this.f4305f != null) {
            return this;
        }
        m3294a().setDoOutput(true);
        this.f4305f = new C1583d(m3294a().getOutputStream(), m3265c(m3294a().getRequestProperty("Content-Type"), "charset"), this.f4309j);
        return this;
    }

    /* renamed from: m */
    protected HttpRequest m3246m() {
        if (!this.f4306g) {
            this.f4306g = true;
            m3262d("multipart/form-data; boundary=00content0boundary00").m3247l();
            this.f4305f.m3235a("--00content0boundary00\r\n");
        } else {
            this.f4305f.m3235a("\r\n--00content0boundary00\r\n");
        }
        return this;
    }

    /* renamed from: n */
    public URL m3245n() {
        return m3294a().getURL();
    }

    /* renamed from: o */
    public String m3244o() {
        return m3294a().getRequestMethod();
    }

    public String toString() {
        return m3244o() + ' ' + m3245n();
    }
}

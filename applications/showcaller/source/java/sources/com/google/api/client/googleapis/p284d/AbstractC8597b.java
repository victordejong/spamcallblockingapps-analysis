package com.google.api.client.googleapis.p284d;

import com.google.api.client.googleapis.C8589a;
import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.google.api.client.googleapis.p279b.AbstractC8590a;
import com.google.api.client.googleapis.p279b.C8591b;
import com.google.api.client.http.AbstractC8616b;
import com.google.api.client.http.AbstractC8646j;
import com.google.api.client.http.AbstractC8659u;
import com.google.api.client.http.C8626f;
import com.google.api.client.http.C8642h;
import com.google.api.client.http.C8645i;
import com.google.api.client.http.C8650n;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8656r;
import com.google.api.client.http.C8658t;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.UriTemplate;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.GenericData;
import com.google.common.base.StandardSystemProperty;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.googleapis.d.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/b.class */
public abstract class AbstractC8597b<T> extends GenericData {
    private static final String API_VERSION_HEADER = "X-Goog-Api-Client";
    public static final String USER_AGENT_SUFFIX = "Google-API-Java-Client";
    private final AbstractC8595a abstractGoogleClient;
    private boolean disableGZipContent;
    private MediaHttpDownloader downloader;
    private final AbstractC8646j httpContent;
    private C8650n lastResponseHeaders;
    private String lastStatusMessage;
    private final String requestMethod;
    private Class<T> responseClass;
    private boolean returnRawInputStream;
    private MediaHttpUploader uploader;
    private final String uriTemplate;
    private C8650n requestHeaders = new C8650n();
    private int lastStatusCode = -1;

    /* renamed from: com.google.api.client.googleapis.d.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/b$a.class */
    public class C8598a implements AbstractC8659u {

        /* renamed from: a */
        final /* synthetic */ AbstractC8659u f38215a;

        /* renamed from: b */
        final /* synthetic */ C8655q f38216b;

        C8598a(AbstractC8659u abstractC8659u, C8655q c8655q) {
            AbstractC8597b.this = r4;
            this.f38215a = abstractC8659u;
            this.f38216b = c8655q;
        }

        @Override // com.google.api.client.http.AbstractC8659u
        /* renamed from: a */
        public void mo3057a(C8658t c8658t) {
            AbstractC8659u abstractC8659u = this.f38215a;
            if (abstractC8659u != null) {
                abstractC8659u.mo3057a(c8658t);
            }
            if (c8658t.m3061l() || !this.f38216b.m3092n()) {
                return;
            }
            throw AbstractC8597b.this.newExceptionOnError(c8658t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.googleapis.d.b$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/b$b.class */
    public static class C8599b {

        /* renamed from: a */
        static final String f38218a = new C8599b().toString();

        /* renamed from: b */
        private final String f38219b;

        C8599b() {
            this(m3283d(), StandardSystemProperty.OS_NAME.value(), StandardSystemProperty.OS_VERSION.value(), GoogleUtils.f38199a);
        }

        C8599b(String str, String str2, String str3, String str4) {
            StringBuilder sb = new StringBuilder("gl-java/");
            sb.append(m3285b(str));
            sb.append(" gdcl/");
            sb.append(m3285b(str4));
            if (str2 != null && str3 != null) {
                sb.append(" ");
                sb.append(m3286a(str2));
                sb.append("/");
                sb.append(m3285b(str3));
            }
            this.f38219b = sb.toString();
        }

        /* renamed from: a */
        private static String m3286a(String str) {
            return str.toLowerCase().replaceAll("[^\\w\\d\\-]", "-");
        }

        /* renamed from: b */
        private static String m3285b(String str) {
            return m3284c(str, str);
        }

        /* renamed from: c */
        private static String m3284c(String str, String str2) {
            if (str == null) {
                return null;
            }
            Matcher matcher = Pattern.compile("(\\d+\\.\\d+\\.\\d+).*").matcher(str);
            return matcher.find() ? matcher.group(1) : str2;
        }

        /* renamed from: d */
        private static String m3283d() {
            String property = System.getProperty("java.version");
            if (property == null) {
                return null;
            }
            String m3284c = m3284c(property, null);
            if (m3284c != null) {
                return m3284c;
            }
            Matcher matcher = Pattern.compile("^(\\d+)[^\\d]?").matcher(property);
            if (!matcher.find()) {
                return null;
            }
            return matcher.group(1) + ".0.0";
        }

        public String toString() {
            return this.f38219b;
        }
    }

    public AbstractC8597b(AbstractC8595a abstractC8595a, String str, String str2, AbstractC8646j abstractC8646j, Class<T> cls) {
        this.responseClass = (Class) C8731w.m2836d(cls);
        this.abstractGoogleClient = (AbstractC8595a) C8731w.m2836d(abstractC8595a);
        this.requestMethod = (String) C8731w.m2836d(str);
        this.uriTemplate = (String) C8731w.m2836d(str2);
        this.httpContent = abstractC8646j;
        String applicationName = abstractC8595a.getApplicationName();
        if (applicationName != null) {
            C8650n c8650n = this.requestHeaders;
            c8650n.m3150I(applicationName + " " + USER_AGENT_SUFFIX + "/" + GoogleUtils.f38199a);
        } else {
            C8650n c8650n2 = this.requestHeaders;
            c8650n2.m3150I("Google-API-Java-Client/" + GoogleUtils.f38199a);
        }
        this.requestHeaders.set(API_VERSION_HEADER, C8599b.f38218a);
    }

    private C8655q buildHttpRequest(boolean z) {
        C8731w.m2839a(this.uploader == null);
        boolean z2 = true;
        if (z) {
            z2 = this.requestMethod.equals("GET");
        }
        C8731w.m2839a(z2);
        C8655q m3076d = getAbstractGoogleClient().getRequestFactory().m3076d(z ? OkHttpUtils.METHOD.HEAD : this.requestMethod, buildHttpRequestUrl(), this.httpContent);
        new C8589a().mo3159a(m3076d);
        m3076d.m3081y(getAbstractGoogleClient().getObjectParser());
        if (this.httpContent == null && (this.requestMethod.equals("POST") || this.requestMethod.equals(OkHttpUtils.METHOD.PUT) || this.requestMethod.equals(OkHttpUtils.METHOD.PATCH))) {
            m3076d.m3085u(new C8626f());
        }
        m3076d.m3100f().putAll(this.requestHeaders);
        if (!this.disableGZipContent) {
            m3076d.m3084v(new C8642h());
        }
        m3076d.m3109B(this.returnRawInputStream);
        m3076d.m3110A(new C8598a(m3076d.m3094l(), m3076d));
        return m3076d;
    }

    private C8658t executeUnparsed(boolean z) {
        C8658t c8658t;
        if (this.uploader == null) {
            c8658t = buildHttpRequest(z).m3104b();
        } else {
            C8645i buildHttpRequestUrl = buildHttpRequestUrl();
            boolean m3092n = getAbstractGoogleClient().getRequestFactory().m3076d(this.requestMethod, buildHttpRequestUrl, this.httpContent).m3092n();
            C8658t m3251p = this.uploader.m3255l(this.requestHeaders).m3256k(this.disableGZipContent).m3251p(buildHttpRequestUrl);
            m3251p.m3066g().m3081y(getAbstractGoogleClient().getObjectParser());
            c8658t = m3251p;
            if (m3092n) {
                if (!m3251p.m3061l()) {
                    throw newExceptionOnError(m3251p);
                }
                c8658t = m3251p;
            }
        }
        this.lastResponseHeaders = c8658t.m3067f();
        this.lastStatusCode = c8658t.m3065h();
        this.lastStatusMessage = c8658t.m3064i();
        return c8658t;
    }

    public C8655q buildHttpRequest() {
        return buildHttpRequest(false);
    }

    public C8645i buildHttpRequestUrl() {
        return new C8645i(UriTemplate.m3239c(this.abstractGoogleClient.getBaseUrl(), this.uriTemplate, this, true));
    }

    public C8655q buildHttpRequestUsingHead() {
        return buildHttpRequest(true);
    }

    public final void checkRequiredParameter(Object obj, String str) {
        C8731w.m2837c(this.abstractGoogleClient.getSuppressRequiredParameterChecks() || obj != null, "Required parameter %s must be specified", str);
    }

    public T execute() {
        return (T) executeUnparsed().m3060m(this.responseClass);
    }

    public void executeAndDownloadTo(OutputStream outputStream) {
        executeUnparsed().m3071b(outputStream);
    }

    public InputStream executeAsInputStream() {
        return executeUnparsed().m3070c();
    }

    public C8658t executeMedia() {
        set("alt", (Object) "media");
        return executeUnparsed();
    }

    public void executeMediaAndDownloadTo(OutputStream outputStream) {
        MediaHttpDownloader mediaHttpDownloader = this.downloader;
        if (mediaHttpDownloader == null) {
            executeMedia().m3071b(outputStream);
        } else {
            mediaHttpDownloader.m3271a(buildHttpRequestUrl(), this.requestHeaders, outputStream);
        }
    }

    public InputStream executeMediaAsInputStream() {
        return executeMedia().m3070c();
    }

    public C8658t executeUnparsed() {
        return executeUnparsed(false);
    }

    public C8658t executeUsingHead() {
        C8731w.m2839a(this.uploader == null);
        C8658t executeUnparsed = executeUnparsed(true);
        executeUnparsed.m3062k();
        return executeUnparsed;
    }

    public AbstractC8595a getAbstractGoogleClient() {
        return this.abstractGoogleClient;
    }

    public final boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public final AbstractC8646j getHttpContent() {
        return this.httpContent;
    }

    public final C8650n getLastResponseHeaders() {
        return this.lastResponseHeaders;
    }

    public final int getLastStatusCode() {
        return this.lastStatusCode;
    }

    public final String getLastStatusMessage() {
        return this.lastStatusMessage;
    }

    public final MediaHttpDownloader getMediaHttpDownloader() {
        return this.downloader;
    }

    public final MediaHttpUploader getMediaHttpUploader() {
        return this.uploader;
    }

    public final C8650n getRequestHeaders() {
        return this.requestHeaders;
    }

    public final String getRequestMethod() {
        return this.requestMethod;
    }

    public final Class<T> getResponseClass() {
        return this.responseClass;
    }

    public final boolean getReturnRawInputSteam() {
        return this.returnRawInputStream;
    }

    public final String getUriTemplate() {
        return this.uriTemplate;
    }

    public final void initializeMediaDownload() {
        C8656r requestFactory = this.abstractGoogleClient.getRequestFactory();
        this.downloader = new MediaHttpDownloader(requestFactory.m3074f(), requestFactory.m3075e());
    }

    public final void initializeMediaUpload(AbstractC8616b abstractC8616b) {
        C8656r requestFactory = this.abstractGoogleClient.getRequestFactory();
        MediaHttpUploader mediaHttpUploader = new MediaHttpUploader(abstractC8616b, requestFactory.m3074f(), requestFactory.m3075e());
        this.uploader = mediaHttpUploader;
        mediaHttpUploader.m3254m(this.requestMethod);
        AbstractC8646j abstractC8646j = this.httpContent;
        if (abstractC8646j != null) {
            this.uploader.m3253n(abstractC8646j);
        }
    }

    protected IOException newExceptionOnError(C8658t c8658t) {
        return new HttpResponseException(c8658t);
    }

    public final <E> void queue(C8591b c8591b, Class<E> cls, AbstractC8590a<T, E> abstractC8590a) {
        C8731w.m2838b(this.uploader == null, "Batching media requests is not supported");
        c8591b.m3288a(buildHttpRequest(), getResponseClass(), cls, abstractC8590a);
    }

    @Override // com.google.api.client.util.GenericData
    public AbstractC8597b<T> set(String str, Object obj) {
        return (AbstractC8597b) super.set(str, obj);
    }

    public AbstractC8597b<T> setDisableGZipContent(boolean z) {
        this.disableGZipContent = z;
        return this;
    }

    public AbstractC8597b<T> setRequestHeaders(C8650n c8650n) {
        this.requestHeaders = c8650n;
        return this;
    }

    public AbstractC8597b<T> setReturnRawInputStream(boolean z) {
        this.returnRawInputStream = z;
        return this;
    }
}

package com.google.api.client.googleapis.services;

import com.google.api.client.googleapis.C15285b;
import com.google.api.client.googleapis.batch.BatchCallback;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.googleapis.p381a.C15274a;
import com.google.api.client.googleapis.p381a.C15276b;
import com.google.api.client.http.AbstractC15322b;
import com.google.api.client.http.AbstractC15331j;
import com.google.api.client.http.AbstractC15344u;
import com.google.api.client.http.C15318ad;
import com.google.api.client.http.C15326f;
import com.google.api.client.http.C15328h;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15341r;
import com.google.api.client.http.C15343t;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15241n;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.api.client.googleapis.services.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/b.class */
public abstract class AbstractC15298b<T> extends C15241n {
    public static final String USER_AGENT_SUFFIX = "Google-API-Java-Client";
    private final AbstractC15296a abstractGoogleClient;
    private boolean disableGZipContent;
    private C15274a downloader;
    private final AbstractC15331j httpContent;
    private C15335n lastResponseHeaders;
    private String lastStatusMessage;
    private final String requestMethod;
    private Class<T> responseClass;
    private C15276b uploader;
    private final String uriTemplate;
    private C15335n requestHeaders = new C15335n();
    private int lastStatusCode = -1;

    public AbstractC15298b(AbstractC15296a abstractC15296a, String str, String str2, AbstractC15331j abstractC15331j, Class<T> cls) {
        this.responseClass = (Class) C15207aa.m9283a(cls);
        this.abstractGoogleClient = (AbstractC15296a) C15207aa.m9283a(abstractC15296a);
        this.requestMethod = (String) C15207aa.m9283a(str);
        this.uriTemplate = (String) C15207aa.m9283a(str2);
        this.httpContent = abstractC15331j;
        String applicationName = abstractC15296a.getApplicationName();
        if (applicationName == null) {
            this.requestHeaders.m9077f(USER_AGENT_SUFFIX);
            return;
        }
        C15335n c15335n = this.requestHeaders;
        c15335n.m9077f(applicationName + " Google-API-Java-Client");
    }

    private C15340q buildHttpRequest(boolean z) throws IOException {
        C15207aa.m9281a(this.uploader == null);
        boolean z2 = true;
        if (z) {
            z2 = this.requestMethod.equals("GET");
        }
        C15207aa.m9281a(z2);
        final C15340q m9026a = getAbstractGoogleClient().getRequestFactory().m9026a(z ? "HEAD" : this.requestMethod, buildHttpRequestUrl(), this.httpContent);
        new C15285b().intercept(m9026a);
        m9026a.m9055a(getAbstractGoogleClient().getObjectParser());
        if (this.httpContent == null && (this.requestMethod.equals("POST") || this.requestMethod.equals("PUT") || this.requestMethod.equals("PATCH"))) {
            m9026a.m9053a(new C15326f());
        }
        m9026a.m9039g().putAll(this.requestHeaders);
        if (!this.disableGZipContent) {
            m9026a.m9052a(new C15328h());
        }
        final AbstractC15344u m9035k = m9026a.m9035k();
        m9026a.m9049a(new AbstractC15344u() { // from class: com.google.api.client.googleapis.services.b.1
            @Override // com.google.api.client.http.AbstractC15344u
            /* renamed from: a */
            public final void mo9006a(C15343t c15343t) throws IOException {
                AbstractC15344u abstractC15344u = m9035k;
                if (abstractC15344u != null) {
                    abstractC15344u.mo9006a(c15343t);
                }
                if (c15343t.m9016d() || !m9026a.m9032n()) {
                    return;
                }
                throw AbstractC15298b.this.newExceptionOnError(c15343t);
            }
        });
        return m9026a;
    }

    private C15343t executeUnparsed(boolean z) throws IOException {
        C15343t c15343t;
        if (this.uploader == null) {
            c15343t = buildHttpRequest(z).m9031o();
        } else {
            C15330i buildHttpRequestUrl = buildHttpRequestUrl();
            boolean m9032n = getAbstractGoogleClient().getRequestFactory().m9026a(this.requestMethod, buildHttpRequestUrl, this.httpContent).m9032n();
            C15276b c15276b = this.uploader;
            c15276b.f55207d = this.requestHeaders;
            c15276b.f55210g = this.disableGZipContent;
            C15207aa.m9281a(c15276b.f55204a == C15276b.EnumC15277a.f55225a);
            C15343t m9178a = c15276b.f55208e ? c15276b.m9178a(buildHttpRequestUrl) : c15276b.m9175b(buildHttpRequestUrl);
            m9178a.m9013g().m9055a(getAbstractGoogleClient().getObjectParser());
            c15343t = m9178a;
            if (m9032n) {
                if (!m9178a.m9016d()) {
                    throw newExceptionOnError(m9178a);
                }
                c15343t = m9178a;
            }
        }
        this.lastResponseHeaders = c15343t.m9017c();
        this.lastStatusCode = c15343t.m9015e();
        this.lastStatusMessage = c15343t.m9014f();
        return c15343t;
    }

    public C15340q buildHttpRequest() throws IOException {
        return buildHttpRequest(false);
    }

    public C15330i buildHttpRequestUrl() {
        return new C15330i(C15318ad.m9125a(this.abstractGoogleClient.getBaseUrl(), this.uriTemplate, this));
    }

    public C15340q buildHttpRequestUsingHead() throws IOException {
        return buildHttpRequest(true);
    }

    public final void checkRequiredParameter(Object obj, String str) {
        C15207aa.m9279a(this.abstractGoogleClient.getSuppressRequiredParameterChecks() || obj != null, "Required parameter %s must be specified", str);
    }

    public T execute() throws IOException {
        return (T) executeUnparsed().m9020a(this.responseClass);
    }

    public void executeAndDownloadTo(OutputStream outputStream) throws IOException {
        executeUnparsed().m9021a(outputStream);
    }

    public InputStream executeAsInputStream() throws IOException {
        return executeUnparsed().m9012h();
    }

    public C15343t executeMedia() throws IOException {
        set("alt", (Object) "media");
        return executeUnparsed();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    public void executeMediaAndDownloadTo(OutputStream outputStream) throws IOException {
        C15274a c15274a = this.downloader;
        if (c15274a == null) {
            executeMedia().m9021a(outputStream);
            return;
        }
        C15330i buildHttpRequestUrl = buildHttpRequestUrl();
        C15335n c15335n = this.requestHeaders;
        C15207aa.m9281a(c15274a.f55195d == C15274a.EnumC15275a.f55200a);
        buildHttpRequestUrl.put("alt", "media");
        if (c15274a.f55192a) {
            c15274a.f55195d = C15274a.EnumC15275a.f55201b;
            c15274a.f55194c = c15274a.m9180a(c15274a.f55197f, buildHttpRequestUrl, c15335n, outputStream).m9017c().m9084c().longValue();
            c15274a.f55196e = c15274a.f55194c;
            c15274a.f55195d = C15274a.EnumC15275a.f55202c;
            return;
        }
        while (true) {
            ?? r0 = (c15274a.f55196e + c15274a.f55193b) - 1;
            char c = r0;
            if (c15274a.f55197f != -1) {
                c = Math.min(c15274a.f55197f, (long) r0);
            }
            String m9082d = c15274a.m9180a(c, buildHttpRequestUrl, c15335n, outputStream).m9017c().m9082d();
            char parseLong = m9082d == null ? (char) 0 : Long.parseLong(m9082d.substring(m9082d.indexOf(45) + 1, m9082d.indexOf(47))) + 1;
            if (m9082d != null && c15274a.f55194c == 0) {
                c15274a.f55194c = Long.parseLong(m9082d.substring(m9082d.indexOf(47) + 1));
            }
            if (c15274a.f55194c <= parseLong) {
                c15274a.f55196e = c15274a.f55194c;
                c15274a.f55195d = C15274a.EnumC15275a.f55202c;
                return;
            }
            c15274a.f55196e = parseLong;
            c15274a.f55195d = C15274a.EnumC15275a.f55201b;
        }
    }

    public InputStream executeMediaAsInputStream() throws IOException {
        return executeMedia().m9012h();
    }

    public C15343t executeUnparsed() throws IOException {
        return executeUnparsed(false);
    }

    public C15343t executeUsingHead() throws IOException {
        C15207aa.m9281a(this.uploader == null);
        C15343t executeUnparsed = executeUnparsed(true);
        executeUnparsed.m9011i();
        return executeUnparsed;
    }

    public AbstractC15296a getAbstractGoogleClient() {
        return this.abstractGoogleClient;
    }

    public final boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public final AbstractC15331j getHttpContent() {
        return this.httpContent;
    }

    public final C15335n getLastResponseHeaders() {
        return this.lastResponseHeaders;
    }

    public final int getLastStatusCode() {
        return this.lastStatusCode;
    }

    public final String getLastStatusMessage() {
        return this.lastStatusMessage;
    }

    public final C15274a getMediaHttpDownloader() {
        return this.downloader;
    }

    public final C15276b getMediaHttpUploader() {
        return this.uploader;
    }

    public final C15335n getRequestHeaders() {
        return this.requestHeaders;
    }

    public final String getRequestMethod() {
        return this.requestMethod;
    }

    public final Class<T> getResponseClass() {
        return this.responseClass;
    }

    public final String getUriTemplate() {
        return this.uriTemplate;
    }

    public final void initializeMediaDownload() {
        C15341r requestFactory = this.abstractGoogleClient.getRequestFactory();
        this.downloader = new C15274a(requestFactory.m9029a(), requestFactory.m9025b());
    }

    public final void initializeMediaUpload(AbstractC15322b abstractC15322b) {
        C15341r requestFactory = this.abstractGoogleClient.getRequestFactory();
        C15276b c15276b = new C15276b(abstractC15322b, requestFactory.m9029a(), requestFactory.m9025b());
        this.uploader = c15276b;
        String str = this.requestMethod;
        C15207aa.m9281a(str.equals("POST") || str.equals("PUT") || str.equals("PATCH"));
        c15276b.f55206c = str;
        AbstractC15331j abstractC15331j = this.httpContent;
        if (abstractC15331j != null) {
            this.uploader.f55205b = abstractC15331j;
        }
    }

    protected IOException newExceptionOnError(C15343t c15343t) {
        return new HttpResponseException(c15343t);
    }

    public final <E> void queue(BatchRequest batchRequest, Class<E> cls, BatchCallback<T, E> batchCallback) throws IOException {
        C15207aa.m9280a(this.uploader == null, "Batching media requests is not supported");
        batchRequest.queue(buildHttpRequest(), getResponseClass(), cls, batchCallback);
    }

    @Override // com.google.api.client.p379a.C15241n
    public AbstractC15298b<T> set(String str, Object obj) {
        return (AbstractC15298b) super.set(str, obj);
    }

    public AbstractC15298b<T> setDisableGZipContent(boolean z) {
        this.disableGZipContent = z;
        return this;
    }

    public AbstractC15298b<T> setRequestHeaders(C15335n c15335n) {
        this.requestHeaders = c15335n;
        return this;
    }
}

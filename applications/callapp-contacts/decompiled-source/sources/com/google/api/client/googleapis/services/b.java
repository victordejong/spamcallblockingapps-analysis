package com.google.api.client.googleapis.services;

import com.google.api.client.a.aa;
import com.google.api.client.a.n;
import com.google.api.client.googleapis.a.a;
import com.google.api.client.googleapis.a.b;
import com.google.api.client.googleapis.batch.BatchCallback;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.ad;
import com.google.api.client.http.f;
import com.google.api.client.http.h;
import com.google.api.client.http.i;
import com.google.api.client.http.j;
import com.google.api.client.http.q;
import com.google.api.client.http.r;
import com.google.api.client.http.t;
import com.google.api.client.http.u;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/b.class */
public abstract class b<T> extends n {
    public static final String USER_AGENT_SUFFIX = "Google-API-Java-Client";
    private final a abstractGoogleClient;
    private boolean disableGZipContent;
    private a downloader;
    private final j httpContent;
    private com.google.api.client.http.n lastResponseHeaders;
    private String lastStatusMessage;
    private final String requestMethod;
    private Class<T> responseClass;
    private com.google.api.client.googleapis.a.b uploader;
    private final String uriTemplate;
    private com.google.api.client.http.n requestHeaders = new com.google.api.client.http.n();
    private int lastStatusCode = -1;

    public b(a aVar, String str, String str2, j jVar, Class<T> cls) {
        this.responseClass = (Class) aa.a(cls);
        this.abstractGoogleClient = (a) aa.a(aVar);
        this.requestMethod = (String) aa.a(str);
        this.uriTemplate = (String) aa.a(str2);
        this.httpContent = jVar;
        String applicationName = aVar.getApplicationName();
        if (applicationName != null) {
            com.google.api.client.http.n nVar = this.requestHeaders;
            nVar.f(applicationName + " Google-API-Java-Client");
            return;
        }
        this.requestHeaders.f(USER_AGENT_SUFFIX);
    }

    private q buildHttpRequest(boolean z) throws IOException {
        aa.a(this.uploader == null);
        boolean z2 = true;
        if (z) {
            z2 = this.requestMethod.equals("GET");
        }
        aa.a(z2);
        final q a2 = getAbstractGoogleClient().getRequestFactory().a(z ? "HEAD" : this.requestMethod, buildHttpRequestUrl(), this.httpContent);
        new com.google.api.client.googleapis.b().intercept(a2);
        a2.a(getAbstractGoogleClient().getObjectParser());
        if (this.httpContent == null && (this.requestMethod.equals("POST") || this.requestMethod.equals("PUT") || this.requestMethod.equals("PATCH"))) {
            a2.a(new f());
        }
        a2.g().putAll(this.requestHeaders);
        if (!this.disableGZipContent) {
            a2.a(new h());
        }
        final u k = a2.k();
        a2.a(new u() { // from class: com.google.api.client.googleapis.services.b.1
            @Override // com.google.api.client.http.u
            public final void a(t tVar) throws IOException {
                u uVar = k;
                if (uVar != null) {
                    uVar.a(tVar);
                }
                if (!tVar.d() && a2.n()) {
                    throw b.this.newExceptionOnError(tVar);
                }
            }
        });
        return a2;
    }

    private t executeUnparsed(boolean z) throws IOException {
        t tVar;
        if (this.uploader == null) {
            tVar = buildHttpRequest(z).o();
        } else {
            i buildHttpRequestUrl = buildHttpRequestUrl();
            boolean n = getAbstractGoogleClient().getRequestFactory().a(this.requestMethod, buildHttpRequestUrl, this.httpContent).n();
            com.google.api.client.googleapis.a.b bVar = this.uploader;
            bVar.f31721d = this.requestHeaders;
            bVar.g = this.disableGZipContent;
            aa.a(bVar.f31718a == b.a.f31722a);
            t a2 = bVar.e ? bVar.a(buildHttpRequestUrl) : bVar.b(buildHttpRequestUrl);
            a2.g().a(getAbstractGoogleClient().getObjectParser());
            tVar = a2;
            if (n) {
                if (a2.d()) {
                    tVar = a2;
                } else {
                    throw newExceptionOnError(a2);
                }
            }
        }
        this.lastResponseHeaders = tVar.c();
        this.lastStatusCode = tVar.e();
        this.lastStatusMessage = tVar.f();
        return tVar;
    }

    public q buildHttpRequest() throws IOException {
        return buildHttpRequest(false);
    }

    public i buildHttpRequestUrl() {
        return new i(ad.a(this.abstractGoogleClient.getBaseUrl(), this.uriTemplate, this));
    }

    public q buildHttpRequestUsingHead() throws IOException {
        return buildHttpRequest(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkRequiredParameter(Object obj, String str) {
        aa.a(this.abstractGoogleClient.getSuppressRequiredParameterChecks() || obj != null, "Required parameter %s must be specified", str);
    }

    public T execute() throws IOException {
        return (T) executeUnparsed().a(this.responseClass);
    }

    public void executeAndDownloadTo(OutputStream outputStream) throws IOException {
        executeUnparsed().a(outputStream);
    }

    public InputStream executeAsInputStream() throws IOException {
        return executeUnparsed().h();
    }

    public t executeMedia() throws IOException {
        set("alt", (Object) "media");
        return executeUnparsed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.api.client.googleapis.a.a] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeMediaAndDownloadTo(java.io.OutputStream r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.services.b.executeMediaAndDownloadTo(java.io.OutputStream):void");
    }

    public InputStream executeMediaAsInputStream() throws IOException {
        return executeMedia().h();
    }

    public t executeUnparsed() throws IOException {
        return executeUnparsed(false);
    }

    public t executeUsingHead() throws IOException {
        aa.a(this.uploader == null);
        t executeUnparsed = executeUnparsed(true);
        executeUnparsed.i();
        return executeUnparsed;
    }

    public a getAbstractGoogleClient() {
        return this.abstractGoogleClient;
    }

    public final boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public final j getHttpContent() {
        return this.httpContent;
    }

    public final com.google.api.client.http.n getLastResponseHeaders() {
        return this.lastResponseHeaders;
    }

    public final int getLastStatusCode() {
        return this.lastStatusCode;
    }

    public final String getLastStatusMessage() {
        return this.lastStatusMessage;
    }

    public final a getMediaHttpDownloader() {
        return this.downloader;
    }

    public final com.google.api.client.googleapis.a.b getMediaHttpUploader() {
        return this.uploader;
    }

    public final com.google.api.client.http.n getRequestHeaders() {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public final void initializeMediaDownload() {
        r requestFactory = this.abstractGoogleClient.getRequestFactory();
        this.downloader = new a(requestFactory.a(), requestFactory.b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void initializeMediaUpload(com.google.api.client.http.b bVar) {
        r requestFactory = this.abstractGoogleClient.getRequestFactory();
        com.google.api.client.googleapis.a.b bVar2 = new com.google.api.client.googleapis.a.b(bVar, requestFactory.a(), requestFactory.b());
        this.uploader = bVar2;
        String str = this.requestMethod;
        aa.a(str.equals("POST") || str.equals("PUT") || str.equals("PATCH"));
        bVar2.f31720c = str;
        j jVar = this.httpContent;
        if (jVar != null) {
            this.uploader.f31719b = jVar;
        }
    }

    protected IOException newExceptionOnError(t tVar) {
        return new HttpResponseException(tVar);
    }

    public final <E> void queue(BatchRequest batchRequest, Class<E> cls, BatchCallback<T, E> batchCallback) throws IOException {
        aa.a(this.uploader == null, "Batching media requests is not supported");
        batchRequest.queue(buildHttpRequest(), getResponseClass(), cls, batchCallback);
    }

    @Override // com.google.api.client.a.n
    public b<T> set(String str, Object obj) {
        return (b) super.set(str, obj);
    }

    public b<T> setDisableGZipContent(boolean z) {
        this.disableGZipContent = z;
        return this;
    }

    public b<T> setRequestHeaders(com.google.api.client.http.n nVar) {
        this.requestHeaders = nVar;
        return this;
    }
}

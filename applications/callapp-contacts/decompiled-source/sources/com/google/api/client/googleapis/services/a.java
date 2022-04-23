package com.google.api.client.googleapis.services;

import com.google.api.client.a.aa;
import com.google.api.client.a.af;
import com.google.api.client.a.x;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.i;
import com.google.api.client.http.r;
import com.google.api.client.http.s;
import com.google.api.client.http.w;
import java.io.IOException;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/a.class */
public abstract class a {
    static final Logger logger = Logger.getLogger(a.class.getName());
    private final String applicationName;
    private final String batchPath;
    private final d googleClientRequestInitializer;
    private final x objectParser;
    private final r requestFactory;
    private final String rootUrl;
    private final String servicePath;
    private final boolean suppressPatternChecks;
    private final boolean suppressRequiredParameterChecks;

    /* renamed from: com.google.api.client.googleapis.services.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/a$a.class */
    public static abstract class AbstractC0505a {
        String applicationName;
        String batchPath;
        d googleClientRequestInitializer;
        s httpRequestInitializer;
        final x objectParser;
        String rootUrl;
        String servicePath;
        boolean suppressPatternChecks;
        boolean suppressRequiredParameterChecks;
        final w transport;

        public AbstractC0505a(w wVar, String str, String str2, x xVar, s sVar) {
            this.transport = (w) aa.a(wVar);
            this.objectParser = xVar;
            setRootUrl(str);
            setServicePath(str2);
            this.httpRequestInitializer = sVar;
        }

        public abstract a build();

        public final String getApplicationName() {
            return this.applicationName;
        }

        public final d getGoogleClientRequestInitializer() {
            return this.googleClientRequestInitializer;
        }

        public final s getHttpRequestInitializer() {
            return this.httpRequestInitializer;
        }

        public x getObjectParser() {
            return this.objectParser;
        }

        public final String getRootUrl() {
            return this.rootUrl;
        }

        public final String getServicePath() {
            return this.servicePath;
        }

        public final boolean getSuppressPatternChecks() {
            return this.suppressPatternChecks;
        }

        public final boolean getSuppressRequiredParameterChecks() {
            return this.suppressRequiredParameterChecks;
        }

        public final w getTransport() {
            return this.transport;
        }

        public AbstractC0505a setApplicationName(String str) {
            this.applicationName = str;
            return this;
        }

        public AbstractC0505a setBatchPath(String str) {
            this.batchPath = str;
            return this;
        }

        public AbstractC0505a setGoogleClientRequestInitializer(d dVar) {
            this.googleClientRequestInitializer = dVar;
            return this;
        }

        public AbstractC0505a setHttpRequestInitializer(s sVar) {
            this.httpRequestInitializer = sVar;
            return this;
        }

        public AbstractC0505a setRootUrl(String str) {
            this.rootUrl = a.normalizeRootUrl(str);
            return this;
        }

        public AbstractC0505a setServicePath(String str) {
            this.servicePath = a.normalizeServicePath(str);
            return this;
        }

        public AbstractC0505a setSuppressAllChecks(boolean z) {
            return setSuppressPatternChecks(true).setSuppressRequiredParameterChecks(true);
        }

        public AbstractC0505a setSuppressPatternChecks(boolean z) {
            this.suppressPatternChecks = z;
            return this;
        }

        public AbstractC0505a setSuppressRequiredParameterChecks(boolean z) {
            this.suppressRequiredParameterChecks = z;
            return this;
        }
    }

    public a(AbstractC0505a aVar) {
        this.googleClientRequestInitializer = aVar.googleClientRequestInitializer;
        this.rootUrl = normalizeRootUrl(aVar.rootUrl);
        this.servicePath = normalizeServicePath(aVar.servicePath);
        this.batchPath = aVar.batchPath;
        if (af.a(aVar.applicationName)) {
            logger.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        this.applicationName = aVar.applicationName;
        this.requestFactory = aVar.httpRequestInitializer == null ? aVar.transport.createRequestFactory() : aVar.transport.createRequestFactory(aVar.httpRequestInitializer);
        this.objectParser = aVar.objectParser;
        this.suppressPatternChecks = aVar.suppressPatternChecks;
        this.suppressRequiredParameterChecks = aVar.suppressRequiredParameterChecks;
    }

    static String normalizeRootUrl(String str) {
        aa.a(str, "root URL cannot be null.");
        String str2 = str;
        if (!str.endsWith("/")) {
            str2 = str + "/";
        }
        return str2;
    }

    static String normalizeServicePath(String str) {
        String str2;
        aa.a(str, "service path cannot be null");
        if (str.length() == 1) {
            aa.a("/".equals(str), "service path must equal \"/\" if it is of length 1.");
            str2 = "";
        } else {
            str2 = str;
            if (str.length() > 0) {
                String str3 = str;
                if (!str.endsWith("/")) {
                    str3 = str + "/";
                }
                str2 = str3;
                if (str3.startsWith("/")) {
                    str2 = str3.substring(1);
                }
            }
        }
        return str2;
    }

    public final BatchRequest batch() {
        return batch(null);
    }

    public final BatchRequest batch(s sVar) {
        BatchRequest batchRequest = new BatchRequest(getRequestFactory().a(), sVar);
        if (af.a(this.batchPath)) {
            batchRequest.setBatchUrl(new i(getRootUrl() + "batch"));
        } else {
            batchRequest.setBatchUrl(new i(getRootUrl() + this.batchPath));
        }
        return batchRequest;
    }

    public final String getApplicationName() {
        return this.applicationName;
    }

    public final String getBaseUrl() {
        return this.rootUrl + this.servicePath;
    }

    public final d getGoogleClientRequestInitializer() {
        return this.googleClientRequestInitializer;
    }

    public x getObjectParser() {
        return this.objectParser;
    }

    public final r getRequestFactory() {
        return this.requestFactory;
    }

    public final String getRootUrl() {
        return this.rootUrl;
    }

    public final String getServicePath() {
        return this.servicePath;
    }

    public final boolean getSuppressPatternChecks() {
        return this.suppressPatternChecks;
    }

    public final boolean getSuppressRequiredParameterChecks() {
        return this.suppressRequiredParameterChecks;
    }

    public void initialize(b<?> bVar) throws IOException {
        if (getGoogleClientRequestInitializer() != null) {
            getGoogleClientRequestInitializer().initialize(bVar);
        }
    }
}

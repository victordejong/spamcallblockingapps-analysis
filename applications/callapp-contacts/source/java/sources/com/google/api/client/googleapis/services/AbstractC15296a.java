package com.google.api.client.googleapis.services;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15341r;
import com.google.api.client.p379a.AbstractC15254x;
import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15213af;
import java.io.IOException;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.googleapis.services.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/a.class */
public abstract class AbstractC15296a {
    static final Logger logger = Logger.getLogger(AbstractC15296a.class.getName());
    private final String applicationName;
    private final String batchPath;
    private final AbstractC15301d googleClientRequestInitializer;
    private final AbstractC15254x objectParser;
    private final C15341r requestFactory;
    private final String rootUrl;
    private final String servicePath;
    private final boolean suppressPatternChecks;
    private final boolean suppressRequiredParameterChecks;

    /* renamed from: com.google.api.client.googleapis.services.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/a$a.class */
    public static abstract class AbstractC15297a {
        String applicationName;
        String batchPath;
        AbstractC15301d googleClientRequestInitializer;
        AbstractC15342s httpRequestInitializer;
        final AbstractC15254x objectParser;
        String rootUrl;
        String servicePath;
        boolean suppressPatternChecks;
        boolean suppressRequiredParameterChecks;
        final AbstractC15346w transport;

        public AbstractC15297a(AbstractC15346w abstractC15346w, String str, String str2, AbstractC15254x abstractC15254x, AbstractC15342s abstractC15342s) {
            this.transport = (AbstractC15346w) C15207aa.m9283a(abstractC15346w);
            this.objectParser = abstractC15254x;
            setRootUrl(str);
            setServicePath(str2);
            this.httpRequestInitializer = abstractC15342s;
        }

        public abstract AbstractC15296a build();

        public final String getApplicationName() {
            return this.applicationName;
        }

        public final AbstractC15301d getGoogleClientRequestInitializer() {
            return this.googleClientRequestInitializer;
        }

        public final AbstractC15342s getHttpRequestInitializer() {
            return this.httpRequestInitializer;
        }

        public AbstractC15254x getObjectParser() {
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

        public final AbstractC15346w getTransport() {
            return this.transport;
        }

        public AbstractC15297a setApplicationName(String str) {
            this.applicationName = str;
            return this;
        }

        public AbstractC15297a setBatchPath(String str) {
            this.batchPath = str;
            return this;
        }

        public AbstractC15297a setGoogleClientRequestInitializer(AbstractC15301d abstractC15301d) {
            this.googleClientRequestInitializer = abstractC15301d;
            return this;
        }

        public AbstractC15297a setHttpRequestInitializer(AbstractC15342s abstractC15342s) {
            this.httpRequestInitializer = abstractC15342s;
            return this;
        }

        public AbstractC15297a setRootUrl(String str) {
            this.rootUrl = AbstractC15296a.normalizeRootUrl(str);
            return this;
        }

        public AbstractC15297a setServicePath(String str) {
            this.servicePath = AbstractC15296a.normalizeServicePath(str);
            return this;
        }

        public AbstractC15297a setSuppressAllChecks(boolean z) {
            return setSuppressPatternChecks(true).setSuppressRequiredParameterChecks(true);
        }

        public AbstractC15297a setSuppressPatternChecks(boolean z) {
            this.suppressPatternChecks = z;
            return this;
        }

        public AbstractC15297a setSuppressRequiredParameterChecks(boolean z) {
            this.suppressRequiredParameterChecks = z;
            return this;
        }
    }

    public AbstractC15296a(AbstractC15297a abstractC15297a) {
        this.googleClientRequestInitializer = abstractC15297a.googleClientRequestInitializer;
        this.rootUrl = normalizeRootUrl(abstractC15297a.rootUrl);
        this.servicePath = normalizeServicePath(abstractC15297a.servicePath);
        this.batchPath = abstractC15297a.batchPath;
        if (C15213af.m9271a(abstractC15297a.applicationName)) {
            logger.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        this.applicationName = abstractC15297a.applicationName;
        this.requestFactory = abstractC15297a.httpRequestInitializer == null ? abstractC15297a.transport.createRequestFactory() : abstractC15297a.transport.createRequestFactory(abstractC15297a.httpRequestInitializer);
        this.objectParser = abstractC15297a.objectParser;
        this.suppressPatternChecks = abstractC15297a.suppressPatternChecks;
        this.suppressRequiredParameterChecks = abstractC15297a.suppressRequiredParameterChecks;
    }

    static String normalizeRootUrl(String str) {
        C15207aa.m9282a(str, "root URL cannot be null.");
        String str2 = str;
        if (!str.endsWith("/")) {
            str2 = str + "/";
        }
        return str2;
    }

    static String normalizeServicePath(String str) {
        String str2;
        C15207aa.m9282a(str, "service path cannot be null");
        if (str.length() == 1) {
            C15207aa.m9280a("/".equals(str), "service path must equal \"/\" if it is of length 1.");
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

    public final BatchRequest batch(AbstractC15342s abstractC15342s) {
        BatchRequest batchRequest = new BatchRequest(getRequestFactory().m9029a(), abstractC15342s);
        if (C15213af.m9271a(this.batchPath)) {
            batchRequest.setBatchUrl(new C15330i(getRootUrl() + "batch"));
        } else {
            batchRequest.setBatchUrl(new C15330i(getRootUrl() + this.batchPath));
        }
        return batchRequest;
    }

    public final String getApplicationName() {
        return this.applicationName;
    }

    public final String getBaseUrl() {
        return this.rootUrl + this.servicePath;
    }

    public final AbstractC15301d getGoogleClientRequestInitializer() {
        return this.googleClientRequestInitializer;
    }

    public AbstractC15254x getObjectParser() {
        return this.objectParser;
    }

    public final C15341r getRequestFactory() {
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

    public void initialize(AbstractC15298b<?> abstractC15298b) throws IOException {
        if (getGoogleClientRequestInitializer() != null) {
            getGoogleClientRequestInitializer().initialize(abstractC15298b);
        }
    }
}

package com.google.api.client.googleapis.p284d;

import com.google.api.client.googleapis.p279b.C8591b;
import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.http.C8645i;
import com.google.api.client.http.C8656r;
import com.google.api.client.util.AbstractC8726u;
import com.google.api.client.util.C8691b0;
import com.google.api.client.util.C8731w;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.googleapis.d.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/a.class */
public abstract class AbstractC8595a {
    private static final Logger logger = Logger.getLogger(AbstractC8595a.class.getName());
    private final String applicationName;
    private final String batchPath;
    private final AbstractC8602d googleClientRequestInitializer;
    private final AbstractC8726u objectParser;
    private final C8656r requestFactory;
    private final String rootUrl;
    private final String servicePath;
    private final boolean suppressPatternChecks;
    private final boolean suppressRequiredParameterChecks;

    /* renamed from: com.google.api.client.googleapis.d.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/a$a.class */
    public static abstract class AbstractC8596a {
        String applicationName;
        String batchPath;
        AbstractC8602d googleClientRequestInitializer;
        AbstractC8657s httpRequestInitializer;
        final AbstractC8726u objectParser;
        String rootUrl;
        String servicePath;
        boolean suppressPatternChecks;
        boolean suppressRequiredParameterChecks;
        final AbstractC8661w transport;

        public AbstractC8596a(AbstractC8661w abstractC8661w, String str, String str2, AbstractC8726u abstractC8726u, AbstractC8657s abstractC8657s) {
            this.transport = (AbstractC8661w) C8731w.m2836d(abstractC8661w);
            this.objectParser = abstractC8726u;
            setRootUrl(str);
            setServicePath(str2);
            this.httpRequestInitializer = abstractC8657s;
        }

        public abstract AbstractC8595a build();

        public final String getApplicationName() {
            return this.applicationName;
        }

        public final AbstractC8602d getGoogleClientRequestInitializer() {
            return this.googleClientRequestInitializer;
        }

        public final AbstractC8657s getHttpRequestInitializer() {
            return this.httpRequestInitializer;
        }

        public AbstractC8726u getObjectParser() {
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

        public final AbstractC8661w getTransport() {
            return this.transport;
        }

        public AbstractC8596a setApplicationName(String str) {
            this.applicationName = str;
            return this;
        }

        public AbstractC8596a setBatchPath(String str) {
            this.batchPath = str;
            return this;
        }

        public AbstractC8596a setGoogleClientRequestInitializer(AbstractC8602d abstractC8602d) {
            this.googleClientRequestInitializer = abstractC8602d;
            return this;
        }

        public AbstractC8596a setHttpRequestInitializer(AbstractC8657s abstractC8657s) {
            this.httpRequestInitializer = abstractC8657s;
            return this;
        }

        public AbstractC8596a setRootUrl(String str) {
            this.rootUrl = AbstractC8595a.normalizeRootUrl(str);
            return this;
        }

        public AbstractC8596a setServicePath(String str) {
            this.servicePath = AbstractC8595a.normalizeServicePath(str);
            return this;
        }

        public AbstractC8596a setSuppressAllChecks(boolean z) {
            return setSuppressPatternChecks(true).setSuppressRequiredParameterChecks(true);
        }

        public AbstractC8596a setSuppressPatternChecks(boolean z) {
            this.suppressPatternChecks = z;
            return this;
        }

        public AbstractC8596a setSuppressRequiredParameterChecks(boolean z) {
            this.suppressRequiredParameterChecks = z;
            return this;
        }
    }

    public AbstractC8595a(AbstractC8596a abstractC8596a) {
        this.googleClientRequestInitializer = abstractC8596a.googleClientRequestInitializer;
        this.rootUrl = normalizeRootUrl(abstractC8596a.rootUrl);
        this.servicePath = normalizeServicePath(abstractC8596a.servicePath);
        this.batchPath = abstractC8596a.batchPath;
        if (C8691b0.m2932a(abstractC8596a.applicationName)) {
            logger.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        this.applicationName = abstractC8596a.applicationName;
        AbstractC8657s abstractC8657s = abstractC8596a.httpRequestInitializer;
        this.requestFactory = abstractC8657s == null ? abstractC8596a.transport.m3052c() : abstractC8596a.transport.m3051d(abstractC8657s);
        this.objectParser = abstractC8596a.objectParser;
        this.suppressPatternChecks = abstractC8596a.suppressPatternChecks;
        this.suppressRequiredParameterChecks = abstractC8596a.suppressRequiredParameterChecks;
    }

    static String normalizeRootUrl(String str) {
        C8731w.m2835e(str, "root URL cannot be null.");
        String str2 = str;
        if (!str.endsWith("/")) {
            str2 = str + "/";
        }
        return str2;
    }

    static String normalizeServicePath(String str) {
        String str2;
        C8731w.m2835e(str, "service path cannot be null");
        if (str.length() == 1) {
            C8731w.m2838b("/".equals(str), "service path must equal \"/\" if it is of length 1.");
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

    public final C8591b batch() {
        return batch(null);
    }

    public final C8591b batch(AbstractC8657s abstractC8657s) {
        C8591b c8591b = new C8591b(getRequestFactory().m3074f(), abstractC8657s);
        if (C8691b0.m2932a(this.batchPath)) {
            c8591b.m3287b(new C8645i(getRootUrl() + "batch"));
        } else {
            c8591b.m3287b(new C8645i(getRootUrl() + this.batchPath));
        }
        return c8591b;
    }

    public final String getApplicationName() {
        return this.applicationName;
    }

    public final String getBaseUrl() {
        return this.rootUrl + this.servicePath;
    }

    public final AbstractC8602d getGoogleClientRequestInitializer() {
        return this.googleClientRequestInitializer;
    }

    public AbstractC8726u getObjectParser() {
        return this.objectParser;
    }

    public final C8656r getRequestFactory() {
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

    public void initialize(AbstractC8597b<?> abstractC8597b) {
        if (getGoogleClientRequestInitializer() != null) {
            getGoogleClientRequestInitializer().initialize(abstractC8597b);
        }
    }
}

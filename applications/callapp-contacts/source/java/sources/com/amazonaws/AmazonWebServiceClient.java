package com.amazonaws;

import com.amazonaws.auth.RegionAwareSigner;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Classes;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonWebServiceClient.class */
public abstract class AmazonWebServiceClient {

    /* renamed from: g */
    private static final Log f11940g = LogFactory.m38584a(AmazonWebServiceClient.class);

    /* renamed from: a */
    protected volatile URI f11941a;

    /* renamed from: b */
    protected ClientConfiguration f11942b;

    /* renamed from: c */
    protected AmazonHttpClient f11943c;

    /* renamed from: d */
    protected final List<RequestHandler2> f11944d;

    /* renamed from: e */
    protected int f11945e;

    /* renamed from: f */
    protected volatile String f11946f;

    /* renamed from: h */
    private volatile String f11947h;

    /* renamed from: i */
    private volatile Signer f11948i;

    /* renamed from: j */
    private volatile String f11949j;

    /* renamed from: k */
    private volatile Region f11950k;

    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f11942b = clientConfiguration;
        this.f11943c = new AmazonHttpClient(clientConfiguration, httpClient);
        this.f11944d = new CopyOnWriteArrayList();
    }

    @Deprecated
    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient, RequestMetricCollector requestMetricCollector) {
        this.f11942b = clientConfiguration;
        this.f11943c = new AmazonHttpClient(clientConfiguration, httpClient, requestMetricCollector);
        this.f11944d = new CopyOnWriteArrayList();
    }

    @Deprecated
    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration), null);
    }

    /* renamed from: a */
    private Signer m38730a(String str, String str2, String str3, boolean z) {
        String signerOverride = this.f11942b.getSignerOverride();
        Signer m38653a = signerOverride == null ? SignerFactory.m38653a(str, str2) : SignerFactory.m38652b(signerOverride, str);
        if (m38653a instanceof RegionAwareSigner) {
            RegionAwareSigner regionAwareSigner = (RegionAwareSigner) m38653a;
            if (str3 != null) {
                regionAwareSigner.mo38656b(str3);
            } else if (str2 != null && z) {
                regionAwareSigner.mo38656b(str2);
            }
        }
        synchronized (this) {
            this.f11950k = Region.m38507a(str2);
        }
        return m38653a;
    }

    /* renamed from: a */
    private Signer m38728a(URI uri, String str, boolean z) {
        if (uri != null) {
            String m38727b = m38727b();
            return m38730a(m38727b, AwsHostNameUtils.m38273a(uri.getHost(), m38727b), str, z);
        }
        throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
    }

    @Deprecated
    /* renamed from: a */
    private RequestMetricCollector m38733a(Request<?> request) {
        RequestMetricCollector requestMetricCollector = request.mo38720a().getRequestMetricCollector();
        if (requestMetricCollector != null) {
            return requestMetricCollector;
        }
        RequestMetricCollector requestMetricCollector2 = this.f11943c.f12054d;
        RequestMetricCollector requestMetricCollector3 = requestMetricCollector2;
        if (requestMetricCollector2 == null) {
            requestMetricCollector3 = AwsSdkMetrics.getRequestMetricCollector();
        }
        return requestMetricCollector3;
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m38734a() {
        return System.getProperty(SDKGlobalConfiguration.PROFILING_SYSTEM_PROPERTY) != null;
    }

    /* renamed from: b */
    private URI m38725b(String str) {
        String str2 = str;
        if (!str.contains("://")) {
            str2 = this.f11942b.getProtocol().toString() + "://" + str;
        }
        try {
            return new URI(str2);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Deprecated
    /* renamed from: d */
    private boolean m38723d() {
        RequestMetricCollector m38722e = m38722e();
        return m38722e != null && m38722e.mo38567a();
    }

    @Deprecated
    /* renamed from: e */
    private RequestMetricCollector m38722e() {
        RequestMetricCollector requestMetricCollector = this.f11943c.f12054d;
        RequestMetricCollector requestMetricCollector2 = requestMetricCollector;
        if (requestMetricCollector == null) {
            requestMetricCollector2 = AwsSdkMetrics.getRequestMetricCollector();
        }
        return requestMetricCollector2;
    }

    /* renamed from: a */
    public final Signer m38729a(URI uri) {
        return m38728a(uri, this.f11947h, true);
    }

    /* renamed from: a */
    public ExecutionContext mo38485a(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new ExecutionContext(this.f11944d, m38726b(amazonWebServiceRequest) || m38734a(), this);
    }

    /* renamed from: a */
    public void mo38472a(Region region) {
        String str;
        if (region != null) {
            String m38727b = m38727b();
            if (region.f12270c.containsKey(m38727b)) {
                String m38506b = region.m38506b(m38727b);
                int indexOf = m38506b.indexOf("://");
                str = m38506b;
                if (indexOf >= 0) {
                    str = m38506b.substring(indexOf + 3);
                }
            } else {
                str = String.format("%s.%s.%s", this.f11946f, region.f12268a, region.f12269b);
            }
            URI m38725b = m38725b(str);
            Signer m38730a = m38730a(m38727b, region.f12268a, this.f11947h, false);
            synchronized (this) {
                this.f11941a = m38725b;
                this.f11948i = m38730a;
            }
            return;
        }
        throw new IllegalArgumentException("No region provided");
    }

    @Deprecated
    /* renamed from: a */
    public final void m38732a(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response) {
        m38731a(aWSRequestMetrics, request, false);
    }

    @Deprecated
    /* renamed from: a */
    public final void m38731a(AWSRequestMetrics aWSRequestMetrics, Request<?> request, boolean z) {
        if (request != null) {
            aWSRequestMetrics.mo38276b(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.m38282a().mo38215d();
            m38733a(request);
        }
        if (z) {
            aWSRequestMetrics.mo38277b();
        }
    }

    /* renamed from: a */
    public void mo38468a(String str) {
        URI m38725b = m38725b(str);
        Signer m38728a = m38728a(m38725b, this.f11947h, false);
        synchronized (this) {
            this.f11941a = m38725b;
            this.f11948i = m38728a;
        }
    }

    /* renamed from: b */
    public final String m38727b() {
        int i;
        if (this.f11949j == null) {
            synchronized (this) {
                if (this.f11949j == null) {
                    String simpleName = Classes.childClassOf(AmazonWebServiceClient.class, this).getSimpleName();
                    String serviceName = ServiceNameFactory.getServiceName(simpleName);
                    if (serviceName == null) {
                        int indexOf = simpleName.indexOf("JavaClient");
                        int i2 = indexOf;
                        if (indexOf == -1) {
                            i2 = simpleName.indexOf("Client");
                            if (i2 == -1) {
                                throw new IllegalStateException("Unrecognized suffix for the AWS http client class name ".concat(String.valueOf(simpleName)));
                            }
                        }
                        int indexOf2 = simpleName.indexOf("Amazon");
                        if (indexOf2 == -1) {
                            indexOf2 = simpleName.indexOf("AWS");
                            if (indexOf2 == -1) {
                                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name ".concat(String.valueOf(simpleName)));
                            }
                            i = 3;
                        } else {
                            i = 6;
                        }
                        if (indexOf2 >= i2) {
                            throw new IllegalStateException("Unrecognized AWS http client class name ".concat(String.valueOf(simpleName)));
                        }
                        serviceName = StringUtils.m38227b(simpleName.substring(indexOf2 + i, i2));
                    }
                    this.f11949j = serviceName;
                    return this.f11949j;
                }
            }
        }
        return this.f11949j;
    }

    @Deprecated
    /* renamed from: b */
    public final boolean m38726b(AmazonWebServiceRequest amazonWebServiceRequest) {
        RequestMetricCollector requestMetricCollector = amazonWebServiceRequest.getRequestMetricCollector();
        if (requestMetricCollector == null || !requestMetricCollector.mo38567a()) {
            return m38723d();
        }
        return true;
    }

    /* renamed from: c */
    public final String m38724c() {
        return this.f11947h;
    }
}

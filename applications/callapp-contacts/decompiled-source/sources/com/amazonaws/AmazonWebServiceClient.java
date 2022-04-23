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
    private static final Log g = LogFactory.a(AmazonWebServiceClient.class);

    /* renamed from: a  reason: collision with root package name */
    protected volatile URI f6532a;

    /* renamed from: b  reason: collision with root package name */
    protected ClientConfiguration f6533b;

    /* renamed from: c  reason: collision with root package name */
    protected AmazonHttpClient f6534c;

    /* renamed from: d  reason: collision with root package name */
    protected final List<RequestHandler2> f6535d;
    protected int e;
    protected volatile String f;
    private volatile String h;
    private volatile Signer i;
    private volatile String j;
    private volatile Region k;

    protected AmazonWebServiceClient(ClientConfiguration clientConfiguration) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f6533b = clientConfiguration;
        this.f6534c = new AmazonHttpClient(clientConfiguration, httpClient);
        this.f6535d = new CopyOnWriteArrayList();
    }

    @Deprecated
    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient, RequestMetricCollector requestMetricCollector) {
        this.f6533b = clientConfiguration;
        this.f6534c = new AmazonHttpClient(clientConfiguration, httpClient, requestMetricCollector);
        this.f6535d = new CopyOnWriteArrayList();
    }

    @Deprecated
    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, RequestMetricCollector requestMetricCollector) {
        this(clientConfiguration, new UrlHttpClient(clientConfiguration), null);
    }

    private Signer a(String str, String str2, String str3, boolean z) {
        String signerOverride = this.f6533b.getSignerOverride();
        Signer a2 = signerOverride == null ? SignerFactory.a(str, str2) : SignerFactory.b(signerOverride, str);
        if (a2 instanceof RegionAwareSigner) {
            RegionAwareSigner regionAwareSigner = (RegionAwareSigner) a2;
            if (str3 != null) {
                regionAwareSigner.b(str3);
            } else if (str2 != null && z) {
                regionAwareSigner.b(str2);
            }
        }
        synchronized (this) {
            this.k = Region.a(str2);
        }
        return a2;
    }

    private Signer a(URI uri, String str, boolean z) {
        if (uri != null) {
            String b2 = b();
            return a(b2, AwsHostNameUtils.a(uri.getHost(), b2), str, z);
        }
        throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
    }

    @Deprecated
    private RequestMetricCollector a(Request<?> request) {
        RequestMetricCollector requestMetricCollector = request.a().getRequestMetricCollector();
        if (requestMetricCollector != null) {
            return requestMetricCollector;
        }
        RequestMetricCollector requestMetricCollector2 = this.f6534c.f6610d;
        RequestMetricCollector requestMetricCollector3 = requestMetricCollector2;
        if (requestMetricCollector2 == null) {
            requestMetricCollector3 = AwsSdkMetrics.getRequestMetricCollector();
        }
        return requestMetricCollector3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public static boolean a() {
        return System.getProperty(SDKGlobalConfiguration.PROFILING_SYSTEM_PROPERTY) != null;
    }

    private URI b(String str) {
        String str2 = str;
        if (!str.contains("://")) {
            str2 = this.f6533b.getProtocol().toString() + "://" + str;
        }
        try {
            return new URI(str2);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Deprecated
    private boolean d() {
        RequestMetricCollector e = e();
        return e != null && e.a();
    }

    @Deprecated
    private RequestMetricCollector e() {
        RequestMetricCollector requestMetricCollector = this.f6534c.f6610d;
        RequestMetricCollector requestMetricCollector2 = requestMetricCollector;
        if (requestMetricCollector == null) {
            requestMetricCollector2 = AwsSdkMetrics.getRequestMetricCollector();
        }
        return requestMetricCollector2;
    }

    public final Signer a(URI uri) {
        return a(uri, this.h, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExecutionContext a(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new ExecutionContext(this.f6535d, b(amazonWebServiceRequest) || a(), this);
    }

    public void a(Region region) {
        String str;
        if (region != null) {
            String b2 = b();
            if (region.f6759c.containsKey(b2)) {
                String b3 = region.b(b2);
                int indexOf = b3.indexOf("://");
                str = b3;
                if (indexOf >= 0) {
                    str = b3.substring(indexOf + 3);
                }
            } else {
                str = String.format("%s.%s.%s", this.f, region.f6757a, region.f6758b);
            }
            URI b4 = b(str);
            Signer a2 = a(b2, region.f6757a, this.h, false);
            synchronized (this) {
                this.f6532a = b4;
                this.i = a2;
            }
            return;
        }
        throw new IllegalArgumentException("No region provided");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public final void a(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response) {
        a(aWSRequestMetrics, request, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public final void a(AWSRequestMetrics aWSRequestMetrics, Request<?> request, boolean z) {
        if (request != null) {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.a().d();
            a(request);
        }
        if (z) {
            aWSRequestMetrics.b();
        }
    }

    public void a(String str) {
        URI b2 = b(str);
        Signer a2 = a(b2, this.h, false);
        synchronized (this) {
            this.f6532a = b2;
            this.i = a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b() {
        int i;
        if (this.j == null) {
            synchronized (this) {
                if (this.j == null) {
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
                            if (indexOf2 != -1) {
                                i = 3;
                            } else {
                                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name ".concat(String.valueOf(simpleName)));
                            }
                        } else {
                            i = 6;
                        }
                        if (indexOf2 < i2) {
                            serviceName = StringUtils.b(simpleName.substring(indexOf2 + i, i2));
                        } else {
                            throw new IllegalStateException("Unrecognized AWS http client class name ".concat(String.valueOf(simpleName)));
                        }
                    }
                    this.j = serviceName;
                    return this.j;
                }
            }
        }
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public final boolean b(AmazonWebServiceRequest amazonWebServiceRequest) {
        RequestMetricCollector requestMetricCollector = amazonWebServiceRequest.getRequestMetricCollector();
        if (requestMetricCollector == null || !requestMetricCollector.a()) {
            return d();
        }
        return true;
    }

    public final String c() {
        return this.h;
    }
}

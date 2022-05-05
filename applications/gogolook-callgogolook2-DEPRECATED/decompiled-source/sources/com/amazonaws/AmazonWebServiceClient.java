package com.amazonaws;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.amazonaws.auth.RegionAwareSigner;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.HttpClient;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Classes;
import com.amazonaws.util.StringUtils;
import gogolook.callgogolook2.gson.UserProfile;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonWebServiceClient.class */
public abstract class AmazonWebServiceClient {
    public static final Log log = LogFactory.getLog(AmazonWebServiceClient.class);
    public AmazonHttpClient client;
    public ClientConfiguration clientConfiguration;
    public volatile URI endpoint;
    public final List<RequestHandler2> requestHandler2s = new CopyOnWriteArrayList();
    public volatile String serviceName;
    public volatile Signer signer;
    public volatile String signerRegionOverride;
    public int timeOffset;

    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.clientConfiguration = clientConfiguration;
        this.client = new AmazonHttpClient(clientConfiguration, httpClient);
    }

    @Deprecated
    public static boolean isProfilingEnabled() {
        return System.getProperty("com.amazonaws.sdk.enableRuntimeProfiling") != null;
    }

    public final String computeServiceName() {
        int i;
        String simpleName = Classes.childClassOf(AmazonWebServiceClient.class, this).getSimpleName();
        String serviceName = ServiceNameFactory.getServiceName(simpleName);
        if (serviceName != null) {
            return serviceName;
        }
        int indexOf = simpleName.indexOf("JavaClient");
        int i2 = indexOf;
        if (indexOf == -1) {
            i2 = simpleName.indexOf("Client");
            if (i2 == -1) {
                throw new IllegalStateException("Unrecognized suffix for the AWS http client class name " + simpleName);
            }
        }
        int indexOf2 = simpleName.indexOf("Amazon");
        if (indexOf2 == -1) {
            indexOf2 = simpleName.indexOf("AWS");
            if (indexOf2 != -1) {
                i = 3;
            } else {
                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name " + simpleName);
            }
        } else {
            i = 6;
        }
        if (indexOf2 < i2) {
            return StringUtils.lowerCase(simpleName.substring(indexOf2 + i, i2));
        }
        throw new IllegalStateException("Unrecognized AWS http client class name " + simpleName);
    }

    public final Signer computeSignerByServiceRegion(String str, String str2, String str3, boolean z) {
        String signerOverride = this.clientConfiguration.getSignerOverride();
        Signer signer = signerOverride == null ? SignerFactory.getSigner(str, str2) : SignerFactory.getSignerByTypeAndService(signerOverride, str);
        if (signer instanceof RegionAwareSigner) {
            RegionAwareSigner regionAwareSigner = (RegionAwareSigner) signer;
            if (str3 != null) {
                regionAwareSigner.setRegionName(str3);
            } else if (str2 != null && z) {
                regionAwareSigner.setRegionName(str2);
            }
        }
        return signer;
    }

    public final Signer computeSignerByURI(URI uri, String str, boolean z) {
        if (uri != null) {
            String serviceNameIntern = getServiceNameIntern();
            return computeSignerByServiceRegion(serviceNameIntern, AwsHostNameUtils.parseRegionName(uri.getHost(), serviceNameIntern), str, z);
        }
        throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
    }

    @Deprecated
    public final void endClientExecution(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response) {
        endClientExecution(aWSRequestMetrics, request, response, false);
    }

    @Deprecated
    public final void endClientExecution(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response, boolean z) {
        if (request != null) {
            aWSRequestMetrics.endEvent(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.getTimingInfo().endTiming();
            findRequestMetricCollector(request).collectMetrics(request, response);
        }
        if (z) {
            aWSRequestMetrics.log();
        }
    }

    @Deprecated
    public final RequestMetricCollector findRequestMetricCollector(Request<?> request) {
        RequestMetricCollector requestMetricCollector = request.getOriginalRequest().getRequestMetricCollector();
        if (requestMetricCollector != null) {
            return requestMetricCollector;
        }
        RequestMetricCollector requestMetricsCollector = getRequestMetricsCollector();
        RequestMetricCollector requestMetricCollector2 = requestMetricsCollector;
        if (requestMetricsCollector == null) {
            requestMetricCollector2 = AwsSdkMetrics.getRequestMetricCollector();
        }
        return requestMetricCollector2;
    }

    @Deprecated
    public RequestMetricCollector getRequestMetricsCollector() {
        return this.client.getRequestMetricCollector();
    }

    public String getServiceNameIntern() {
        if (this.serviceName == null) {
            synchronized (this) {
                if (this.serviceName == null) {
                    String computeServiceName = computeServiceName();
                    this.serviceName = computeServiceName;
                    return computeServiceName;
                }
            }
        }
        return this.serviceName;
    }

    public Signer getSigner() {
        return this.signer;
    }

    public final String getSignerRegionOverride() {
        return this.signerRegionOverride;
    }

    @Deprecated
    public final boolean isRMCEnabledAtClientOrSdkLevel() {
        RequestMetricCollector requestMetricCollector = requestMetricCollector();
        return requestMetricCollector != null && requestMetricCollector.isEnabled();
    }

    @Deprecated
    public final boolean isRequestMetricsEnabled(AmazonWebServiceRequest amazonWebServiceRequest) {
        RequestMetricCollector requestMetricCollector = amazonWebServiceRequest.getRequestMetricCollector();
        if (requestMetricCollector == null || !requestMetricCollector.isEnabled()) {
            return isRMCEnabledAtClientOrSdkLevel();
        }
        return true;
    }

    @Deprecated
    public RequestMetricCollector requestMetricCollector() {
        RequestMetricCollector requestMetricCollector = this.client.getRequestMetricCollector();
        RequestMetricCollector requestMetricCollector2 = requestMetricCollector;
        if (requestMetricCollector == null) {
            requestMetricCollector2 = AwsSdkMetrics.getRequestMetricCollector();
        }
        return requestMetricCollector2;
    }

    public void setEndpoint(String str) throws IllegalArgumentException {
        URI uri = toURI(str);
        Signer computeSignerByURI = computeSignerByURI(uri, this.signerRegionOverride, false);
        synchronized (this) {
            this.endpoint = uri;
            this.signer = computeSignerByURI;
        }
    }

    public void setRegion(Region region) throws IllegalArgumentException {
        String str;
        if (region != null) {
            String serviceNameIntern = getServiceNameIntern();
            if (region.isServiceSupported(serviceNameIntern)) {
                String serviceEndpoint = region.getServiceEndpoint(serviceNameIntern);
                int indexOf = serviceEndpoint.indexOf("://");
                str = serviceEndpoint;
                if (indexOf >= 0) {
                    str = serviceEndpoint.substring(indexOf + 3);
                }
            } else {
                str = String.format("%s.%s.%s", serviceNameIntern, region.getName(), region.getDomain());
                Log log2 = log;
                log2.info(CssParser.BLOCK_START + serviceNameIntern + UserProfile.CARD_CATE_SEPARATOR + region.getName() + "} was not found in region metadata, trying to construct an endpoint using the standard pattern for this region: '" + str + "'.");
            }
            URI uri = toURI(str);
            Signer computeSignerByServiceRegion = computeSignerByServiceRegion(serviceNameIntern, region.getName(), this.signerRegionOverride, false);
            synchronized (this) {
                this.endpoint = uri;
                this.signer = computeSignerByServiceRegion;
            }
            return;
        }
        throw new IllegalArgumentException("No region provided");
    }

    public final URI toURI(String str) throws IllegalArgumentException {
        String str2 = str;
        if (!str.contains("://")) {
            str2 = this.clientConfiguration.getProtocol().toString() + "://" + str;
        }
        try {
            return new URI(str2);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }
}

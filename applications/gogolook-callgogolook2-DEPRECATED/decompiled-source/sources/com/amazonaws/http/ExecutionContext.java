package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import java.net.URI;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/ExecutionContext.class */
public class ExecutionContext {
    public final AWSRequestMetrics awsRequestMetrics;
    public String contextUserAgent;
    public AWSCredentials credentials;
    public final List<RequestHandler2> requestHandler2s;

    public ExecutionContext(List<RequestHandler2> list, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        this.requestHandler2s = list;
        this.awsRequestMetrics = z ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
    }

    @Deprecated
    public AWSRequestMetrics getAwsRequestMetrics() {
        return this.awsRequestMetrics;
    }

    public String getContextUserAgent() {
        return this.contextUserAgent;
    }

    public AWSCredentials getCredentials() {
        return this.credentials;
    }

    public List<RequestHandler2> getRequestHandler2s() {
        return this.requestHandler2s;
    }

    public Signer getSignerByURI(URI uri) {
        throw null;
    }

    public void setCredentials(AWSCredentials aWSCredentials) {
        this.credentials = aWSCredentials;
    }

    public void setSigner(Signer signer) {
        throw null;
    }
}

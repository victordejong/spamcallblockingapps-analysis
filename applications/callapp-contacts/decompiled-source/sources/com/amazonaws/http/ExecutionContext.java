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

    /* renamed from: a  reason: collision with root package name */
    public final AWSRequestMetrics f6611a;

    /* renamed from: b  reason: collision with root package name */
    final List<RequestHandler2> f6612b;

    /* renamed from: c  reason: collision with root package name */
    String f6613c;

    /* renamed from: d  reason: collision with root package name */
    public AWSCredentials f6614d;
    private final AmazonWebServiceClient e;

    public ExecutionContext() {
        this(null, false, null);
    }

    public ExecutionContext(List<RequestHandler2> list, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        this.f6612b = list;
        this.f6611a = z ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
        this.e = amazonWebServiceClient;
    }

    @Deprecated
    public ExecutionContext(boolean z) {
        this(null, z, null);
    }

    public Signer a(URI uri) {
        AmazonWebServiceClient amazonWebServiceClient = this.e;
        if (amazonWebServiceClient == null) {
            return null;
        }
        return amazonWebServiceClient.a(uri);
    }

    public void a(Signer signer) {
    }
}

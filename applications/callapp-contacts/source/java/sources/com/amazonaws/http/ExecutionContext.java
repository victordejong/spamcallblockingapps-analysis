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

    /* renamed from: a */
    public final AWSRequestMetrics f12056a;

    /* renamed from: b */
    final List<RequestHandler2> f12057b;

    /* renamed from: c */
    String f12058c;

    /* renamed from: d */
    public AWSCredentials f12059d;

    /* renamed from: e */
    private final AmazonWebServiceClient f12060e;

    public ExecutionContext() {
        this(null, false, null);
    }

    public ExecutionContext(List<RequestHandler2> list, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        this.f12057b = list;
        this.f12056a = z ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
        this.f12060e = amazonWebServiceClient;
    }

    @Deprecated
    public ExecutionContext(boolean z) {
        this(null, z, null);
    }

    /* renamed from: a */
    public Signer mo38414a(URI uri) {
        AmazonWebServiceClient amazonWebServiceClient = this.f12060e;
        if (amazonWebServiceClient == null) {
            return null;
        }
        return amazonWebServiceClient.m38729a(uri);
    }

    /* renamed from: a */
    public void mo38415a(Signer signer) {
    }
}

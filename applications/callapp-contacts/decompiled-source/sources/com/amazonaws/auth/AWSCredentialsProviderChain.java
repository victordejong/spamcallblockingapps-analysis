package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWSCredentialsProviderChain.class */
public class AWSCredentialsProviderChain implements AWSCredentialsProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6556a = LogFactory.a(AWSCredentialsProviderChain.class);

    /* renamed from: b  reason: collision with root package name */
    private List<AWSCredentialsProvider> f6557b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f6558c = true;

    /* renamed from: d  reason: collision with root package name */
    private AWSCredentialsProvider f6559d;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr == null || aWSCredentialsProviderArr.length == 0) {
            throw new IllegalArgumentException("No credential providers specified");
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
            this.f6557b.add(aWSCredentialsProvider);
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public final AWSCredentials a() {
        AWSCredentialsProvider aWSCredentialsProvider;
        if (this.f6558c && (aWSCredentialsProvider = this.f6559d) != null) {
            return aWSCredentialsProvider.a();
        }
        for (AWSCredentialsProvider aWSCredentialsProvider2 : this.f6557b) {
            try {
                AWSCredentials a2 = aWSCredentialsProvider2.a();
                if (!(a2.a() == null || a2.b() == null)) {
                    Log log = f6556a;
                    log.b("Loading credentials from " + aWSCredentialsProvider2.toString());
                    this.f6559d = aWSCredentialsProvider2;
                    return a2;
                }
            } catch (Exception e) {
                Log log2 = f6556a;
                log2.b("Unable to load credentials from " + aWSCredentialsProvider2.toString() + ": " + e.getMessage());
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
    }
}

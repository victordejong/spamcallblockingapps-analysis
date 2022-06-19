package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWSCredentialsProviderChain.class */
public class AWSCredentialsProviderChain implements AWSCredentialsProvider {

    /* renamed from: a */
    private static final Log f11980a = LogFactory.m38584a(AWSCredentialsProviderChain.class);

    /* renamed from: b */
    private List<AWSCredentialsProvider> f11981b = new LinkedList();

    /* renamed from: c */
    private boolean f11982c = true;

    /* renamed from: d */
    private AWSCredentialsProvider f11983d;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr == null || aWSCredentialsProviderArr.length == 0) {
            throw new IllegalArgumentException("No credential providers specified");
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
            this.f11981b.add(aWSCredentialsProvider);
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* renamed from: a */
    public final AWSCredentials mo38581a() {
        AWSCredentialsProvider aWSCredentialsProvider;
        if (!this.f11982c || (aWSCredentialsProvider = this.f11983d) == null) {
            for (AWSCredentialsProvider aWSCredentialsProvider2 : this.f11981b) {
                try {
                    AWSCredentials mo38581a = aWSCredentialsProvider2.mo38581a();
                    if (mo38581a.mo38659a() != null && mo38581a.mo38658b() != null) {
                        Log log = f11980a;
                        log.mo38593b("Loading credentials from " + aWSCredentialsProvider2.toString());
                        this.f11983d = aWSCredentialsProvider2;
                        return mo38581a;
                    }
                } catch (Exception e) {
                    Log log2 = f11980a;
                    log2.mo38593b("Unable to load credentials from " + aWSCredentialsProvider2.toString() + ": " + e.getMessage());
                }
            }
            throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
        }
        return aWSCredentialsProvider.mo38581a();
    }
}

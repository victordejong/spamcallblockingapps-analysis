package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import java.net.URI;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ExecutionContext.class */
public class S3ExecutionContext extends ExecutionContext {
    private Signer e;

    public S3ExecutionContext(List<RequestHandler2> list, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        super(list, z, amazonWebServiceClient);
    }

    @Override // com.amazonaws.http.ExecutionContext
    public final Signer a(URI uri) {
        return this.e;
    }

    @Override // com.amazonaws.http.ExecutionContext
    public final void a(Signer signer) {
        this.e = signer;
    }
}

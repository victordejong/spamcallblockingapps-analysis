package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import java.net.URI;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.S3ExecutionContext */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ExecutionContext.class */
public class S3ExecutionContext extends ExecutionContext {

    /* renamed from: e */
    private Signer f12364e;

    public S3ExecutionContext(List<RequestHandler2> list, boolean z, AmazonWebServiceClient amazonWebServiceClient) {
        super(list, z, amazonWebServiceClient);
    }

    @Override // com.amazonaws.http.ExecutionContext
    /* renamed from: a */
    public final Signer mo38414a(URI uri) {
        return this.f12364e;
    }

    @Override // com.amazonaws.http.ExecutionContext
    /* renamed from: a */
    public final void mo38415a(Signer signer) {
        this.f12364e = signer;
    }
}

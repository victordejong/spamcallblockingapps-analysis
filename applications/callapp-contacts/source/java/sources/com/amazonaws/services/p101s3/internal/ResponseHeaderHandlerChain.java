package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain.class */
public class ResponseHeaderHandlerChain<T> extends S3XmlResponseHandler<T> {

    /* renamed from: a */
    private final List<HeaderHandler<T>> f12361a;

    public ResponseHeaderHandlerChain(Unmarshaller<T, InputStream> unmarshaller, HeaderHandler<T>... headerHandlerArr) {
        super(unmarshaller);
        this.f12361a = Arrays.asList(headerHandlerArr);
    }

    @Override // com.amazonaws.services.p101s3.internal.S3XmlResponseHandler
    /* renamed from: a */
    public final AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> handle = super.handle(httpResponse);
        T t = handle.f11951a;
        if (t != null) {
            for (HeaderHandler<T> headerHandler : this.f12361a) {
                headerHandler.mo38398a(t, httpResponse);
            }
        }
        return handle;
    }
}

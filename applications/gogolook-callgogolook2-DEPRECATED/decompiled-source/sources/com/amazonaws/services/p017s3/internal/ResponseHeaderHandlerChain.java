package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain.class */
public class ResponseHeaderHandlerChain<T> extends S3XmlResponseHandler<T> {
    public final List<HeaderHandler<T>> headerHandlers;

    public ResponseHeaderHandlerChain(Unmarshaller<T, InputStream> unmarshaller, HeaderHandler<T>... headerHandlerArr) {
        super(unmarshaller);
        this.headerHandlers = Arrays.asList(headerHandlerArr);
    }

    @Override // com.amazonaws.services.p017s3.internal.S3XmlResponseHandler, com.amazonaws.http.HttpResponseHandler
    public AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> handle = super.handle(httpResponse);
        T result = handle.getResult();
        if (result != null) {
            for (HeaderHandler<T> headerHandler : this.headerHandlers) {
                headerHandler.handle(result, httpResponse);
            }
        }
        return handle;
    }
}

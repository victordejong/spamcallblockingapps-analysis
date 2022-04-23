package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ResponseHeaderHandlerChain.class */
public class ResponseHeaderHandlerChain<T> extends S3XmlResponseHandler<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<HeaderHandler<T>> f6819a;

    public ResponseHeaderHandlerChain(Unmarshaller<T, InputStream> unmarshaller, HeaderHandler<T>... headerHandlerArr) {
        super(unmarshaller);
        this.f6819a = Arrays.asList(headerHandlerArr);
    }

    @Override // com.amazonaws.services.s3.internal.S3XmlResponseHandler
    /* renamed from: a */
    public final AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> a2 = super.handle(httpResponse);
        T t = a2.f6536a;
        if (t != null) {
            for (HeaderHandler<T> headerHandler : this.f6819a) {
                headerHandler.a(t, httpResponse);
            }
        }
        return a2;
    }
}

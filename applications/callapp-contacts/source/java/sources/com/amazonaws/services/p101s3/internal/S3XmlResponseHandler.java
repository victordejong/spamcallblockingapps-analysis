package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.internal.S3XmlResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3XmlResponseHandler.class */
public class S3XmlResponseHandler<T> extends AbstractS3ResponseHandler<T> {

    /* renamed from: b */
    private static final Log f12370b = LogFactory.m38583a("com.amazonaws.request");

    /* renamed from: a */
    private Unmarshaller<T, InputStream> f12371a;

    /* renamed from: c */
    private Map<String, String> f12372c;

    public S3XmlResponseHandler(Unmarshaller<T, InputStream> unmarshaller) {
        this.f12371a = unmarshaller;
    }

    /* renamed from: a */
    public AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> parseResponseMetadata = parseResponseMetadata(httpResponse);
        this.f12372c = httpResponse.f12069d;
        if (this.f12371a != null) {
            Log log = f12370b;
            log.mo38596a("Beginning to parse service response XML");
            T unmarshall = this.f12371a.unmarshall(httpResponse.m38617a());
            log.mo38596a("Done parsing service response XML");
            parseResponseMetadata.f11951a = unmarshall;
        }
        return parseResponseMetadata;
    }
}

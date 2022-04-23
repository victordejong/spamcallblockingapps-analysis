package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3XmlResponseHandler.class */
public class S3XmlResponseHandler<T> extends AbstractS3ResponseHandler<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6827b = LogFactory.a("com.amazonaws.request");

    /* renamed from: a  reason: collision with root package name */
    private Unmarshaller<T, InputStream> f6828a;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f6829c;

    public S3XmlResponseHandler(Unmarshaller<T, InputStream> unmarshaller) {
        this.f6828a = unmarshaller;
    }

    /* renamed from: a */
    public AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> parseResponseMetadata = parseResponseMetadata(httpResponse);
        this.f6829c = httpResponse.f6622d;
        if (this.f6828a != null) {
            Log log = f6827b;
            log.a("Beginning to parse service response XML");
            T unmarshall = this.f6828a.unmarshall(httpResponse.a());
            log.a("Done parsing service response XML");
            parseResponseMetadata.f6536a = unmarshall;
        }
        return parseResponseMetadata;
    }
}

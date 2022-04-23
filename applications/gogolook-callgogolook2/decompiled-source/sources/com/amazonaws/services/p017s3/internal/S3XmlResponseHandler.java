package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.S3XmlResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3XmlResponseHandler.class */
public class S3XmlResponseHandler<T> extends AbstractS3ResponseHandler<T> {
    public static final Log log = LogFactory.getLog("com.amazonaws.request");
    public Map<String, String> responseHeaders;
    public Unmarshaller<T, InputStream> responseUnmarshaller;

    public S3XmlResponseHandler(Unmarshaller<T, InputStream> unmarshaller) {
        this.responseUnmarshaller = unmarshaller;
    }

    public Map<String, String> getResponseHeaders() {
        return this.responseHeaders;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public AmazonWebServiceResponse<T> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> parseResponseMetadata = parseResponseMetadata(httpResponse);
        this.responseHeaders = httpResponse.getHeaders();
        if (this.responseUnmarshaller != null) {
            log.trace("Beginning to parse service response XML");
            T unmarshall = this.responseUnmarshaller.unmarshall(httpResponse.getContent());
            log.trace("Done parsing service response XML");
            parseResponseMetadata.setResult(unmarshall);
        }
        return parseResponseMetadata;
    }
}

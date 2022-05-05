package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.services.p017s3.model.AmazonS3Exception;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.XpathUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.w3c.dom.Document;
/* renamed from: com.amazonaws.services.s3.internal.S3ErrorResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ErrorResponseHandler.class */
public class S3ErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {
    public static final Log log = LogFactory.getLog(S3ErrorResponseHandler.class);

    public final AmazonServiceException.ErrorType errorTypeOf(int i) {
        return i >= 500 ? AmazonServiceException.ErrorType.Service : AmazonServiceException.ErrorType.Client;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.amazonaws.http.HttpResponseHandler
    public AmazonServiceException handle(HttpResponse httpResponse) throws IOException {
        InputStream content = httpResponse.getContent();
        if (content == null) {
            return newAmazonS3Exception(httpResponse.getStatusText(), httpResponse);
        }
        try {
            String iOUtils = IOUtils.toString(content);
            try {
                Document documentFrom = XpathUtils.documentFrom(iOUtils);
                String asString = XpathUtils.asString("Error/Message", documentFrom);
                String asString2 = XpathUtils.asString("Error/Code", documentFrom);
                String asString3 = XpathUtils.asString("Error/RequestId", documentFrom);
                String asString4 = XpathUtils.asString("Error/HostId", documentFrom);
                AmazonS3Exception amazonS3Exception = new AmazonS3Exception(asString);
                int statusCode = httpResponse.getStatusCode();
                amazonS3Exception.setStatusCode(statusCode);
                amazonS3Exception.setErrorType(errorTypeOf(statusCode));
                amazonS3Exception.setErrorCode(asString2);
                amazonS3Exception.setRequestId(asString3);
                amazonS3Exception.setExtendedRequestId(asString4);
                amazonS3Exception.setCloudFrontId(httpResponse.getHeaders().get("X-Amz-Cf-Id"));
                return amazonS3Exception;
            } catch (Exception e) {
                if (log.isDebugEnabled()) {
                    Log log2 = log;
                    log2.debug("Failed in parsing the response as XML: " + iOUtils, e);
                }
                return newAmazonS3Exception(iOUtils, httpResponse);
            }
        } catch (IOException e2) {
            if (log.isDebugEnabled()) {
                log.debug("Failed in reading the error response", e2);
            }
            return newAmazonS3Exception(httpResponse.getStatusText(), httpResponse);
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return false;
    }

    public final AmazonS3Exception newAmazonS3Exception(String str, HttpResponse httpResponse) {
        AmazonS3Exception amazonS3Exception = new AmazonS3Exception(str);
        int statusCode = httpResponse.getStatusCode();
        amazonS3Exception.setErrorCode(statusCode + " " + httpResponse.getStatusText());
        amazonS3Exception.setStatusCode(statusCode);
        amazonS3Exception.setErrorType(errorTypeOf(statusCode));
        Map<String, String> headers = httpResponse.getHeaders();
        amazonS3Exception.setRequestId(headers.get("x-amz-request-id"));
        amazonS3Exception.setExtendedRequestId(headers.get("x-amz-id-2"));
        amazonS3Exception.setCloudFrontId(headers.get("X-Amz-Cf-Id"));
        return amazonS3Exception;
    }
}

package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.XpathUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.w3c.dom.Document;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ErrorResponseHandler.class */
public class S3ErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6821a = LogFactory.a(S3ErrorResponseHandler.class);

    private static AmazonServiceException.ErrorType a(int i) {
        return i >= 500 ? AmazonServiceException.ErrorType.Service : AmazonServiceException.ErrorType.Client;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public AmazonServiceException handle(HttpResponse httpResponse) throws IOException {
        InputStream a2 = httpResponse.a();
        if (a2 == null) {
            return a(httpResponse.f6619a, httpResponse);
        }
        try {
            String iOUtils = IOUtils.toString(a2);
            try {
                Document a3 = XpathUtils.a(iOUtils);
                String a4 = XpathUtils.a("Error/Message", a3);
                String a5 = XpathUtils.a("Error/Code", a3);
                String a6 = XpathUtils.a("Error/RequestId", a3);
                String a7 = XpathUtils.a("Error/HostId", a3);
                AmazonS3Exception amazonS3Exception = new AmazonS3Exception(a4);
                int i = httpResponse.f6620b;
                amazonS3Exception.setStatusCode(i);
                amazonS3Exception.setErrorType(a(i));
                amazonS3Exception.setErrorCode(a5);
                amazonS3Exception.setRequestId(a6);
                amazonS3Exception.setExtendedRequestId(a7);
                amazonS3Exception.setCloudFrontId(httpResponse.f6622d.get("X-Amz-Cf-Id"));
                return amazonS3Exception;
            } catch (Exception e) {
                Log log = f6821a;
                if (log.a()) {
                    log.a("Failed in parsing the response as XML: ".concat(String.valueOf(iOUtils)), e);
                }
                return a(iOUtils, httpResponse);
            }
        } catch (IOException e2) {
            if (f6821a.a()) {
                f6821a.a("Failed in reading the error response", e2);
            }
            return a(httpResponse.f6619a, httpResponse);
        }
    }

    private static AmazonS3Exception a(String str, HttpResponse httpResponse) {
        AmazonS3Exception amazonS3Exception = new AmazonS3Exception(str);
        int i = httpResponse.f6620b;
        amazonS3Exception.setErrorCode(i + StringUtils.SPACE + httpResponse.f6619a);
        amazonS3Exception.setStatusCode(i);
        amazonS3Exception.setErrorType(a(i));
        Map<String, String> map = httpResponse.f6622d;
        amazonS3Exception.setRequestId(map.get("x-amz-request-id"));
        amazonS3Exception.setExtendedRequestId(map.get("x-amz-id-2"));
        amazonS3Exception.setCloudFrontId(map.get("X-Amz-Cf-Id"));
        HashMap hashMap = new HashMap();
        hashMap.put("x-amz-bucket-region", map.get("x-amz-bucket-region"));
        amazonS3Exception.setAdditionalDetails(hashMap);
        return amazonS3Exception;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return false;
    }
}

package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.model.AmazonS3Exception;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.XpathUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.w3c.dom.Document;
/* renamed from: com.amazonaws.services.s3.internal.S3ErrorResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ErrorResponseHandler.class */
public class S3ErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {

    /* renamed from: a */
    private static final Log f12363a = LogFactory.m38584a(S3ErrorResponseHandler.class);

    /* renamed from: a */
    private static AmazonServiceException.ErrorType m38418a(int i) {
        return i >= 500 ? AmazonServiceException.ErrorType.Service : AmazonServiceException.ErrorType.Client;
    }

    /* renamed from: a */
    public AmazonServiceException handle(HttpResponse httpResponse) throws IOException {
        InputStream m38617a = httpResponse.m38617a();
        if (m38617a == null) {
            return m38416a(httpResponse.f12066a, httpResponse);
        }
        try {
            String iOUtils = IOUtils.toString(m38617a);
            try {
                Document m38209a = XpathUtils.m38209a(iOUtils);
                String m38208a = XpathUtils.m38208a("Error/Message", m38209a);
                String m38208a2 = XpathUtils.m38208a("Error/Code", m38209a);
                String m38208a3 = XpathUtils.m38208a("Error/RequestId", m38209a);
                String m38208a4 = XpathUtils.m38208a("Error/HostId", m38209a);
                AmazonS3Exception amazonS3Exception = new AmazonS3Exception(m38208a);
                int i = httpResponse.f12067b;
                amazonS3Exception.setStatusCode(i);
                amazonS3Exception.setErrorType(m38418a(i));
                amazonS3Exception.setErrorCode(m38208a2);
                amazonS3Exception.setRequestId(m38208a3);
                amazonS3Exception.setExtendedRequestId(m38208a4);
                amazonS3Exception.setCloudFrontId(httpResponse.f12069d.get("X-Amz-Cf-Id"));
                return amazonS3Exception;
            } catch (Exception e) {
                Log log = f12363a;
                if (log.mo38597a()) {
                    log.mo38595a("Failed in parsing the response as XML: ".concat(String.valueOf(iOUtils)), e);
                }
                return m38416a(iOUtils, httpResponse);
            }
        } catch (IOException e2) {
            if (f12363a.mo38597a()) {
                f12363a.mo38595a("Failed in reading the error response", e2);
            }
            return m38416a(httpResponse.f12066a, httpResponse);
        }
    }

    /* renamed from: a */
    private static AmazonS3Exception m38416a(String str, HttpResponse httpResponse) {
        AmazonS3Exception amazonS3Exception = new AmazonS3Exception(str);
        int i = httpResponse.f12067b;
        amazonS3Exception.setErrorCode(i + StringUtils.SPACE + httpResponse.f12066a);
        amazonS3Exception.setStatusCode(i);
        amazonS3Exception.setErrorType(m38418a(i));
        Map<String, String> map = httpResponse.f12069d;
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

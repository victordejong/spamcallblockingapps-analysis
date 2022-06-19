package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.S3ResponseMetadata;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
import com.amazonaws.util.DateUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.amazonaws.services.s3.internal.AbstractS3ResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/AbstractS3ResponseHandler.class */
public abstract class AbstractS3ResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {
    private static final Set<String> IGNORED_HEADERS;
    private static final Log log = LogFactory.m38584a(S3MetadataResponseHandler.class);

    static {
        HashSet hashSet = new HashSet();
        IGNORED_HEADERS = hashSet;
        hashSet.add("Date");
        hashSet.add("Server");
        hashSet.add("x-amz-request-id");
        hashSet.add("x-amz-id-2");
        hashSet.add("X-Amz-Cf-Id");
        hashSet.add("Connection");
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return false;
    }

    public AmazonWebServiceResponse<T> parseResponseMetadata(HttpResponse httpResponse) {
        AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
        String str = httpResponse.f12069d.get("x-amz-request-id");
        String str2 = httpResponse.f12069d.get("x-amz-id-2");
        String str3 = httpResponse.f12069d.get("X-Amz-Cf-Id");
        HashMap hashMap = new HashMap();
        hashMap.put("AWS_REQUEST_ID", str);
        hashMap.put("HOST_ID", str2);
        hashMap.put("CLOUD_FRONT_ID", str3);
        amazonWebServiceResponse.f11952b = new S3ResponseMetadata(hashMap);
        return amazonWebServiceResponse;
    }

    public void populateObjectMetadata(HttpResponse httpResponse, ObjectMetadata objectMetadata) {
        for (Map.Entry<String, String> entry : httpResponse.f12069d.entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("x-amz-meta-")) {
                objectMetadata.addUserMetadata(key.substring(11), entry.getValue());
            } else if (IGNORED_HEADERS.contains(key)) {
                log.mo38593b(String.format("%s is ignored.", key));
            } else if (key.equalsIgnoreCase("Last-Modified")) {
                try {
                    objectMetadata.setHeader(key, ServiceUtils.m38402b(entry.getValue()));
                } catch (Exception e) {
                    Log log2 = log;
                    log2.mo38592b("Unable to parse last modified date: " + entry.getValue(), e);
                }
            } else if (key.equalsIgnoreCase("Content-Length")) {
                try {
                    objectMetadata.setHeader(key, Long.valueOf(Long.parseLong(entry.getValue())));
                } catch (NumberFormatException e2) {
                    Log log3 = log;
                    log3.mo38592b("Unable to parse content length: " + entry.getValue(), e2);
                }
            } else if (key.equalsIgnoreCase("ETag")) {
                objectMetadata.setHeader(key, ServiceUtils.m38399d(entry.getValue()));
            } else if (key.equalsIgnoreCase("Expires")) {
                try {
                    objectMetadata.setHttpExpiresDate(DateUtils.m38251b(entry.getValue()));
                } catch (Exception e3) {
                    Log log4 = log;
                    log4.mo38592b("Unable to parse http expiration date: " + entry.getValue(), e3);
                }
            } else if (key.equalsIgnoreCase("x-amz-expiration")) {
                new ObjectExpirationHeaderHandler();
                ObjectExpirationHeaderHandler.m38429a(objectMetadata, httpResponse);
            } else if (key.equalsIgnoreCase("x-amz-restore")) {
                new ObjectRestoreHeaderHandler();
                ObjectRestoreHeaderHandler.m38427a(objectMetadata, httpResponse);
            } else if (key.equalsIgnoreCase("x-amz-request-charged")) {
                new S3RequesterChargedHeaderHandler();
                S3RequesterChargedHeaderHandler.m38411a(objectMetadata, httpResponse);
            } else if (key.equalsIgnoreCase("x-amz-mp-parts-count")) {
                try {
                    objectMetadata.setHeader(key, Integer.valueOf(Integer.parseInt(entry.getValue())));
                } catch (NumberFormatException e4) {
                    throw new AmazonClientException("Unable to parse part count. Header x-amz-mp-parts-count has corrupted data" + e4.getMessage(), e4);
                }
            } else {
                objectMetadata.setHeader(key, entry.getValue());
            }
        }
    }
}

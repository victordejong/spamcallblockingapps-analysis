package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.S3ClientOptions;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.SSEAlgorithm;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.util.DateUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.internal.ServiceUtils */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServiceUtils.class */
public class ServiceUtils {

    /* renamed from: b */
    private static final Log f12374b = LogFactory.m38584a(ServiceUtils.class);
    @Deprecated

    /* renamed from: a */
    protected static final DateUtils f12373a = new DateUtils();

    /* renamed from: a */
    public static String m38404a(Date date) {
        return DateUtils.m38252a(date);
    }

    /* renamed from: a */
    public static String m38403a(List<String> list) {
        Iterator<String> it2 = list.iterator();
        String str = "";
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                String next = it2.next();
                String str2 = str;
                if (!z2) {
                    str2 = str + ", ";
                }
                str = str2 + next;
                z = false;
            } else {
                return str;
            }
        }
    }

    /* renamed from: a */
    public static Date m38405a(String str) {
        return DateUtils.m38255a(str);
    }

    /* renamed from: a */
    public static boolean m38407a(AmazonWebServiceRequest amazonWebServiceRequest, S3ClientOptions s3ClientOptions) {
        if ((s3ClientOptions == null || !s3ClientOptions.f12307a) && System.getProperty("com.amazonaws.services.s3.disableGetObjectMD5Validation") == null) {
            if (amazonWebServiceRequest instanceof GetObjectRequest) {
                GetObjectRequest getObjectRequest = (GetObjectRequest) amazonWebServiceRequest;
                return (getObjectRequest.getRange() == null && getObjectRequest.getSSECustomerKey() == null) ? false : true;
            } else if (!(amazonWebServiceRequest instanceof PutObjectRequest)) {
                return (amazonWebServiceRequest instanceof UploadPartRequest) && ((UploadPartRequest) amazonWebServiceRequest).getSSECustomerKey() != null;
            } else {
                PutObjectRequest putObjectRequest = (PutObjectRequest) amazonWebServiceRequest;
                ObjectMetadata metadata = putObjectRequest.getMetadata();
                if ((metadata != null && metadata.getSSEAlgorithm() != null) || putObjectRequest.getSSECustomerKey() != null) {
                    return true;
                }
                if (putObjectRequest.getSSEAwsKeyManagementParams() == null) {
                    return false;
                }
                return (putObjectRequest.getSSEAwsKeyManagementParams().getEncryption() == null && putObjectRequest.getSSEAwsKeyManagementParams().getAwsKmsKeyId() == null) ? false : true;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m38406a(ObjectMetadata objectMetadata, S3ClientOptions s3ClientOptions) {
        if (s3ClientOptions == null || !s3ClientOptions.f12307a) {
            if (objectMetadata == null) {
                return false;
            }
            return objectMetadata.getSSECustomerAlgorithm() != null || SSEAlgorithm.KMS.toString().equals(objectMetadata.getSSEAlgorithm());
        }
        return true;
    }

    /* renamed from: b */
    public static String m38401b(Date date) {
        return DateUtils.m38250b(date);
    }

    /* renamed from: b */
    public static Date m38402b(String str) {
        return DateUtils.m38251b(str);
    }

    /* renamed from: c */
    public static boolean m38400c(String str) {
        return str.contains(VerificationLanguage.REGION_PREFIX);
    }

    /* renamed from: d */
    public static String m38399d(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        String str2 = trim;
        if (trim.startsWith("\"")) {
            str2 = trim.substring(1);
        }
        String str3 = str2;
        if (str2.endsWith("\"")) {
            str3 = str2.substring(0, str2.length() - 1);
        }
        return str3;
    }
}

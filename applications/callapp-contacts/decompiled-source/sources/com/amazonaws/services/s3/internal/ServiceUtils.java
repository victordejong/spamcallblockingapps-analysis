package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.S3ClientOptions;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAlgorithm;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.DateUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServiceUtils.class */
public class ServiceUtils {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6831b = LogFactory.a(ServiceUtils.class);
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    protected static final DateUtils f6830a = new DateUtils();

    public static String a(Date date) {
        return DateUtils.a(date);
    }

    public static String a(List<String> list) {
        String str = "";
        boolean z = true;
        for (String str2 : list) {
            String str3 = str;
            if (!z) {
                str3 = str + ", ";
            }
            str = str3 + str2;
            z = false;
        }
        return str;
    }

    public static Date a(String str) {
        return DateUtils.a(str);
    }

    public static boolean a(AmazonWebServiceRequest amazonWebServiceRequest, S3ClientOptions s3ClientOptions) {
        if ((s3ClientOptions != null && s3ClientOptions.f6777a) || System.getProperty("com.amazonaws.services.s3.disableGetObjectMD5Validation") != null) {
            return true;
        }
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
            if (putObjectRequest.getSSEAwsKeyManagementParams() != null) {
                return (putObjectRequest.getSSEAwsKeyManagementParams().getEncryption() == null && putObjectRequest.getSSEAwsKeyManagementParams().getAwsKmsKeyId() == null) ? false : true;
            }
            return false;
        }
    }

    public static boolean a(ObjectMetadata objectMetadata, S3ClientOptions s3ClientOptions) {
        if (s3ClientOptions != null && s3ClientOptions.f6777a) {
            return true;
        }
        if (objectMetadata == null) {
            return false;
        }
        return objectMetadata.getSSECustomerAlgorithm() != null || SSEAlgorithm.KMS.toString().equals(objectMetadata.getSSEAlgorithm());
    }

    public static String b(Date date) {
        return DateUtils.b(date);
    }

    public static Date b(String str) {
        return DateUtils.b(str);
    }

    public static boolean c(String str) {
        return str.contains(VerificationLanguage.REGION_PREFIX);
    }

    public static String d(String str) {
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

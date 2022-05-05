package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.services.p017s3.model.GetObjectRequest;
import com.amazonaws.services.p017s3.model.ObjectMetadata;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.util.DateUtils;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Date;
import java.util.List;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.ServiceUtils */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServiceUtils.class */
public class ServiceUtils {
    static {
        LogFactory.getLog(ServiceUtils.class);
        new DateUtils();
    }

    public static String formatRfc822Date(Date date) {
        return DateUtils.formatRFC822Date(date);
    }

    public static boolean isMultipartUploadETag(String str) {
        return str.contains("-");
    }

    public static String join(List<String> list) {
        String str = "";
        boolean z = true;
        for (String str2 : list) {
            String str3 = str;
            if (!z) {
                str3 = str + UserProfile.CARD_CATE_SEPARATOR;
            }
            str = str3 + str2;
            z = false;
        }
        return str;
    }

    public static Date parseIso8601Date(String str) {
        return DateUtils.parseISO8601Date(str);
    }

    public static Date parseRfc822Date(String str) {
        return DateUtils.parseRFC822Date(str);
    }

    public static String removeQuotes(String str) {
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

    public static boolean skipMd5CheckPerRequest(AmazonWebServiceRequest amazonWebServiceRequest) {
        boolean z = true;
        boolean z2 = true;
        if (System.getProperty("com.amazonaws.services.s3.disableGetObjectMD5Validation") != null) {
            return true;
        }
        if (amazonWebServiceRequest instanceof GetObjectRequest) {
            GetObjectRequest getObjectRequest = (GetObjectRequest) amazonWebServiceRequest;
            return (getObjectRequest.getRange() == null && getObjectRequest.getSSECustomerKey() == null) ? false : true;
        } else if (amazonWebServiceRequest instanceof PutObjectRequest) {
            PutObjectRequest putObjectRequest = (PutObjectRequest) amazonWebServiceRequest;
            ObjectMetadata metadata = putObjectRequest.getMetadata();
            if (metadata != null && metadata.getSSEAlgorithm() != null) {
                return true;
            }
            if (putObjectRequest.getSSECustomerKey() == null) {
                z2 = false;
            }
            return z2;
        } else if (!(amazonWebServiceRequest instanceof UploadPartRequest)) {
            return false;
        } else {
            if (((UploadPartRequest) amazonWebServiceRequest).getSSECustomerKey() == null) {
                z = false;
            }
            return z;
        }
    }

    public static boolean skipMd5CheckPerResponse(ObjectMetadata objectMetadata) {
        boolean z = false;
        if (objectMetadata == null) {
            return false;
        }
        boolean equals = "aws:kms".equals(objectMetadata.getSSEAlgorithm());
        if (objectMetadata.getSSECustomerAlgorithm() != null || equals) {
            z = true;
        }
        return z;
    }
}

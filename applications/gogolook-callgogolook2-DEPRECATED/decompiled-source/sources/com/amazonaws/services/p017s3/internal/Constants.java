package com.amazonaws.services.p017s3.internal;

import com.amazonaws.services.p017s3.AmazonS3Client;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.Constants */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/Constants.class */
public class Constants {
    public static String DEFAULT_ENCODING = "UTF-8";
    public static String S3_HOSTNAME = "s3.amazonaws.com";
    public static String S3_SERVICE_NAME = "Amazon S3";

    static {
        LogFactory.getLog(AmazonS3Client.class);
    }
}

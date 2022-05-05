package com.amazonaws.mobileconnectors.p016s3.transferutility;

import com.amazonaws.services.p017s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.S3ClientReference */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference.class */
public class S3ClientReference {
    public static Map<String, AmazonS3> map = new ConcurrentHashMap();

    public static void clear() {
        map.clear();
    }

    public static AmazonS3 get(String str) {
        return map.remove(str);
    }
}

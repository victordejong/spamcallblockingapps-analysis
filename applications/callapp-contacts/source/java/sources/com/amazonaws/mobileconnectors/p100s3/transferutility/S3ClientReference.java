package com.amazonaws.mobileconnectors.p100s3.transferutility;

import com.amazonaws.services.p101s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.S3ClientReference */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference.class */
class S3ClientReference {

    /* renamed from: a */
    private static Map<Integer, AmazonS3> f12142a = new ConcurrentHashMap();

    S3ClientReference() {
    }

    /* renamed from: a */
    public static AmazonS3 m38564a(Integer num) {
        return f12142a.get(num);
    }

    /* renamed from: b */
    public static void m38563b(Integer num) {
        f12142a.remove(num);
    }
}

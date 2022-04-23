package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.services.s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference.class */
class S3ClientReference {

    /* renamed from: a  reason: collision with root package name */
    private static Map<Integer, AmazonS3> f6687a = new ConcurrentHashMap();

    S3ClientReference() {
    }

    public static AmazonS3 a(Integer num) {
        return f6687a.get(num);
    }

    public static void b(Integer num) {
        f6687a.remove(num);
    }
}

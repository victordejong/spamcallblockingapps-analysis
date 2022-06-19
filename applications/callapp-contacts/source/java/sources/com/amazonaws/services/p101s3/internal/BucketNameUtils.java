package com.amazonaws.services.p101s3.internal;

import java.util.regex.Pattern;
/* renamed from: com.amazonaws.services.s3.internal.BucketNameUtils */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/BucketNameUtils.class */
public enum BucketNameUtils {
    ;
    
    private static final Pattern IP_ADDRESS_PATTERN = Pattern.compile("(\\d+\\.){3}\\d+");
    private static final int MAX_BUCKET_NAME_LENGTH = 63;
    private static final int MIN_BUCKET_NAME_LENGTH = 3;

    private static boolean exception(boolean z, String str) {
        if (!z) {
            return false;
        }
        throw new IllegalArgumentException(str);
    }

    public static boolean isDNSBucketName(String str) {
        return isValidV2BucketName(str);
    }

    public static boolean isValidV2BucketName(String str) {
        return isValidV2BucketName(str, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x010d, code lost:
        return exception(r5, "Bucket name should not contain '" + r0 + "'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0114, code lost:
        return exception(r5, "Bucket name should not contain white space");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isValidV2BucketName(java.lang.String r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.p101s3.internal.BucketNameUtils.isValidV2BucketName(java.lang.String, boolean):boolean");
    }

    public static void validateBucketName(String str) {
        isValidV2BucketName(str, true);
    }
}

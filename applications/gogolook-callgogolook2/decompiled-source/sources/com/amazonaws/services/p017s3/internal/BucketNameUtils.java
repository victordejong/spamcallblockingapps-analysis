package com.amazonaws.services.p017s3.internal;
/* renamed from: com.amazonaws.services.s3.internal.BucketNameUtils */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/BucketNameUtils.class */
public enum BucketNameUtils {
    ;

    public static boolean exception(boolean z, String str) {
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

    public static boolean isValidV2BucketName(String str, boolean z) {
        if (str == null) {
            return exception(z, "Bucket name cannot be null");
        }
        if (str.length() < 3 || str.length() > 63) {
            return exception(z, "Bucket name should be between 3 and 63 characters long");
        }
        int i = 0;
        char c = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt >= 'A' && charAt <= 'Z') {
                return exception(z, "Bucket name should not contain uppercase characters");
            }
            if (charAt == ' ' || charAt == '\t' || charAt == '\r' || charAt == '\n') {
                return exception(z, "Bucket name should not contain white space");
            }
            if (charAt != '.') {
                if (charAt == '-') {
                    if (c == '.') {
                        return exception(z, "Bucket name should not contain dashes next to periods");
                    }
                } else if (charAt < '0' || ((charAt > '9' && charAt < 'a') || charAt > 'z')) {
                    return exception(z, "Bucket name should not contain '" + charAt + "'");
                }
                i++;
                c = charAt;
            } else if (c == '.') {
                return exception(z, "Bucket name should not contain two adjacent periods");
            } else {
                if (c == '-') {
                    return exception(z, "Bucket name should not contain dashes next to periods");
                }
                return false;
            }
        }
        if (c == '.' || c == '-') {
            return exception(z, "Bucket name should not end with '-' or '.'");
        }
        return true;
    }
}

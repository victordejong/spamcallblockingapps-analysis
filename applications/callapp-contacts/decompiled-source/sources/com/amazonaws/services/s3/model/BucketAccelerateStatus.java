package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/BucketAccelerateStatus.class */
public enum BucketAccelerateStatus {
    Enabled("Enabled"),
    Suspended(BucketVersioningConfiguration.SUSPENDED);
    
    private final String accelerateStatus;

    BucketAccelerateStatus(String str) {
        this.accelerateStatus = str;
    }

    public static BucketAccelerateStatus fromValue(String str) throws IllegalArgumentException {
        BucketAccelerateStatus[] values;
        for (BucketAccelerateStatus bucketAccelerateStatus : values()) {
            if (bucketAccelerateStatus.toString().equals(str)) {
                return bucketAccelerateStatus;
            }
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.accelerateStatus;
    }
}

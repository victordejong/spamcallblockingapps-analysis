package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.StorageClass */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/StorageClass.class */
public enum StorageClass {
    Standard("STANDARD"),
    ReducedRedundancy("REDUCED_REDUNDANCY"),
    Glacier("GLACIER"),
    StandardInfrequentAccess("STANDARD_IA"),
    OneZoneInfrequentAccess("ONEZONE_IA"),
    IntelligentTiering("INTELLIGENT_TIERING");
    
    private final String storageClassId;

    StorageClass(String str) {
        this.storageClassId = str;
    }

    public static StorageClass fromValue(String str) throws IllegalArgumentException {
        StorageClass[] values;
        for (StorageClass storageClass : values()) {
            if (storageClass.toString().equals(str)) {
                return storageClass;
            }
        }
        throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.storageClassId;
    }
}

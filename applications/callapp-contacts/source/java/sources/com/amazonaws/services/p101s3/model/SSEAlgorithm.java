package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.SSEAlgorithm */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SSEAlgorithm.class */
public enum SSEAlgorithm {
    AES256("AES256"),
    KMS("aws:kms");
    
    private final String algorithm;

    SSEAlgorithm(String str) {
        this.algorithm = str;
    }

    public static SSEAlgorithm fromString(String str) {
        SSEAlgorithm[] values;
        if (str == null) {
            return null;
        }
        for (SSEAlgorithm sSEAlgorithm : values()) {
            if (sSEAlgorithm.getAlgorithm().equals(str)) {
                return sSEAlgorithm;
            }
        }
        throw new IllegalArgumentException("Unsupported algorithm ".concat(String.valueOf(str)));
    }

    public static SSEAlgorithm getDefault() {
        return AES256;
    }

    public final String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.algorithm;
    }
}

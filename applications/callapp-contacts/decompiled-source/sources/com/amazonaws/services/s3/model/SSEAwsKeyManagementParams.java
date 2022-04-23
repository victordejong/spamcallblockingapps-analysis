package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SSEAwsKeyManagementParams.class */
public class SSEAwsKeyManagementParams implements Serializable {
    private final String awsKmsKeyId;

    public SSEAwsKeyManagementParams() {
        this.awsKmsKeyId = null;
    }

    public SSEAwsKeyManagementParams(String str) {
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("AWS Key Management System Key id cannot be null");
        }
        this.awsKmsKeyId = str;
    }

    public String getAwsKmsKeyId() {
        return this.awsKmsKeyId;
    }

    public String getEncryption() {
        return SSEAlgorithm.KMS.getAlgorithm();
    }
}

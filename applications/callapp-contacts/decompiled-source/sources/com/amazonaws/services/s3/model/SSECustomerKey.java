package com.amazonaws.services.s3.model;

import com.amazonaws.util.Base64;
import javax.crypto.SecretKey;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/SSECustomerKey.class */
public class SSECustomerKey {
    private String algorithm;
    private final String base64EncodedKey;
    private String base64EncodedMd5;

    private SSECustomerKey() {
        this.base64EncodedKey = null;
    }

    public SSECustomerKey(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Encryption key must be specified");
        }
        this.algorithm = SSEAlgorithm.AES256.getAlgorithm();
        this.base64EncodedKey = str;
    }

    public SSECustomerKey(SecretKey secretKey) {
        if (secretKey != null) {
            this.algorithm = SSEAlgorithm.AES256.getAlgorithm();
            this.base64EncodedKey = Base64.encodeAsString(secretKey.getEncoded());
            return;
        }
        throw new IllegalArgumentException("Encryption key must be specified");
    }

    public SSECustomerKey(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Encryption key must be specified");
        }
        this.algorithm = SSEAlgorithm.AES256.getAlgorithm();
        this.base64EncodedKey = Base64.encodeAsString(bArr);
    }

    public static SSECustomerKey generateSSECustomerKeyForPresignUrl(String str) {
        if (str != null) {
            return new SSECustomerKey().withAlgorithm(str);
        }
        throw new IllegalArgumentException();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getKey() {
        return this.base64EncodedKey;
    }

    public String getMd5() {
        return this.base64EncodedMd5;
    }

    public void setAlgorithm(String str) {
        this.algorithm = str;
    }

    public void setMd5(String str) {
        this.base64EncodedMd5 = str;
    }

    public SSECustomerKey withAlgorithm(String str) {
        setAlgorithm(str);
        return this;
    }

    public SSECustomerKey withMd5(String str) {
        setMd5(str);
        return this;
    }
}

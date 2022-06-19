package com.amazonaws.services.p101s3.internal.crypto;

import java.security.Key;
import java.security.Provider;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme.class */
public class S3KeyWrapScheme {

    /* renamed from: a */
    static final S3KeyWrapScheme f12444a = new S3KeyWrapScheme() { // from class: com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.amazonaws.services.p101s3.internal.crypto.S3KeyWrapScheme
        /* renamed from: a */
        public final String mo38305a(Key key, Provider provider) {
            return null;
        }

        @Override // com.amazonaws.services.p101s3.internal.crypto.S3KeyWrapScheme
        public final String toString() {
            return "NONE";
        }
    };

    /* renamed from: a */
    public String mo38305a(Key key, Provider provider) {
        String algorithm = key.getAlgorithm();
        if ("AES".equals(algorithm)) {
            return "AESWrap";
        }
        if ("RSA".equals(algorithm) && CryptoRuntime.m38353b(provider)) {
            return "RSA/ECB/OAEPWithSHA-256AndMGF1Padding";
        }
        return null;
    }

    public String toString() {
        return "S3KeyWrapScheme";
    }
}

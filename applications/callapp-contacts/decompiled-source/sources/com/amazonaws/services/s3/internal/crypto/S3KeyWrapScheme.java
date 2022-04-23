package com.amazonaws.services.s3.internal.crypto;

import java.security.Key;
import java.security.Provider;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme.class */
class S3KeyWrapScheme {

    /* renamed from: a  reason: collision with root package name */
    static final S3KeyWrapScheme f6875a = new S3KeyWrapScheme() { // from class: com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme.1
        @Override // com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme
        final String a(Key key, Provider provider) {
            return null;
        }

        @Override // com.amazonaws.services.s3.internal.crypto.S3KeyWrapScheme
        public final String toString() {
            return "NONE";
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(Key key, Provider provider) {
        String algorithm = key.getAlgorithm();
        if ("AES".equals(algorithm)) {
            return "AESWrap";
        }
        if (!"RSA".equals(algorithm) || !CryptoRuntime.b(provider)) {
            return null;
        }
        return "RSA/ECB/OAEPWithSHA-256AndMGF1Padding";
    }

    public String toString() {
        return "S3KeyWrapScheme";
    }
}

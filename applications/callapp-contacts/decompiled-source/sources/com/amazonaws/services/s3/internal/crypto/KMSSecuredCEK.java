package com.amazonaws.services.s3.internal.crypto;

import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/KMSSecuredCEK.class */
final class KMSSecuredCEK extends SecuredCEK {
    /* JADX INFO: Access modifiers changed from: package-private */
    public KMSSecuredCEK(byte[] bArr, Map<String, String> map) {
        super(bArr, "kms", map);
    }

    public static boolean a(String str) {
        return "kms".equals(str);
    }
}

package com.amazonaws.services.p101s3.internal.crypto;

import java.util.Map;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.KMSSecuredCEK */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/KMSSecuredCEK.class */
final class KMSSecuredCEK extends SecuredCEK {
    public KMSSecuredCEK(byte[] bArr, Map<String, String> map) {
        super(bArr, "kms", map);
    }

    /* renamed from: a */
    public static boolean m38342a(String str) {
        return "kms".equals(str);
    }
}

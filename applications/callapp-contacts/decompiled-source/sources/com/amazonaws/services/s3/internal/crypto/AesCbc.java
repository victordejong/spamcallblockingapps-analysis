package com.amazonaws.services.s3.internal.crypto;

import io.objectbox.model.PropertyFlags;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/AesCbc.class */
class AesCbc extends ContentCryptoScheme {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final String a() {
        return "AES";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final String b() {
        return "AES/CBC/PKCS5Padding";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int c() {
        return PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int d() {
        return 16;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazonaws.services.s3.internal.crypto.ContentCryptoScheme
    public final int e() {
        return 16;
    }
}

package com.amazonaws.services.s3.internal.crypto;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext.class */
class MultipartUploadCryptoContext extends MultipartUploadContext {
    final ContentCryptoMaterial f;
    int g;
    volatile boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultipartUploadCryptoContext(String str, String str2, ContentCryptoMaterial contentCryptoMaterial) {
        super(str, str2);
        this.f = contentCryptoMaterial;
    }
}

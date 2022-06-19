package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.services.p101s3.model.CryptoMode;
import java.security.SecureRandom;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoScheme */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoScheme.class */
final class S3CryptoScheme {

    /* renamed from: c */
    private static final SecureRandom f12440c = new SecureRandom();

    /* renamed from: a */
    final S3KeyWrapScheme f12441a;

    /* renamed from: b */
    final ContentCryptoScheme f12442b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoScheme$1 */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1.class */
    public static /* synthetic */ class C33031 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12443a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CryptoMode.values().length];
            f12443a = iArr;
            try {
                iArr[CryptoMode.EncryptionOnly.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12443a[CryptoMode.AuthenticatedEncryption.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12443a[CryptoMode.StrictAuthenticatedEncryption.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    S3CryptoScheme(ContentCryptoScheme contentCryptoScheme) {
        this.f12442b = contentCryptoScheme;
        this.f12441a = new S3KeyWrapScheme();
    }

    private S3CryptoScheme(ContentCryptoScheme contentCryptoScheme, S3KeyWrapScheme s3KeyWrapScheme) {
        this.f12442b = contentCryptoScheme;
        this.f12441a = s3KeyWrapScheme;
    }

    /* renamed from: a */
    public static S3CryptoScheme m38307a(CryptoMode cryptoMode) {
        int i = C33031.f12443a[cryptoMode.ordinal()];
        if (i != 1) {
            if (i != 2 && i != 3) {
                throw new IllegalStateException();
            }
            return new S3CryptoScheme(ContentCryptoScheme.f12406b, new S3KeyWrapScheme());
        }
        return new S3CryptoScheme(ContentCryptoScheme.f12405a, S3KeyWrapScheme.f12444a);
    }

    /* renamed from: a */
    public static SecureRandom m38308a() {
        return f12440c;
    }

    /* renamed from: a */
    public static boolean m38306a(String str) {
        return ContentCryptoScheme.f12406b.mo38364b().equals(str);
    }
}

package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.services.s3.model.CryptoMode;
import java.security.SecureRandom;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoScheme.class */
final class S3CryptoScheme {

    /* renamed from: c  reason: collision with root package name */
    private static final SecureRandom f6871c = new SecureRandom();

    /* renamed from: a  reason: collision with root package name */
    final S3KeyWrapScheme f6872a;

    /* renamed from: b  reason: collision with root package name */
    final ContentCryptoScheme f6873b;

    /* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoScheme$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6874a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CryptoMode.values().length];
            f6874a = iArr;
            try {
                iArr[CryptoMode.EncryptionOnly.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6874a[CryptoMode.AuthenticatedEncryption.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6874a[CryptoMode.StrictAuthenticatedEncryption.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    S3CryptoScheme(ContentCryptoScheme contentCryptoScheme) {
        this.f6873b = contentCryptoScheme;
        this.f6872a = new S3KeyWrapScheme();
    }

    private S3CryptoScheme(ContentCryptoScheme contentCryptoScheme, S3KeyWrapScheme s3KeyWrapScheme) {
        this.f6873b = contentCryptoScheme;
        this.f6872a = s3KeyWrapScheme;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static S3CryptoScheme a(CryptoMode cryptoMode) {
        int i = AnonymousClass1.f6874a[cryptoMode.ordinal()];
        if (i == 1) {
            return new S3CryptoScheme(ContentCryptoScheme.f6854a, S3KeyWrapScheme.f6875a);
        }
        if (i == 2 || i == 3) {
            return new S3CryptoScheme(ContentCryptoScheme.f6855b, new S3KeyWrapScheme());
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SecureRandom a() {
        return f6871c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return ContentCryptoScheme.f6855b.b().equals(str);
    }
}

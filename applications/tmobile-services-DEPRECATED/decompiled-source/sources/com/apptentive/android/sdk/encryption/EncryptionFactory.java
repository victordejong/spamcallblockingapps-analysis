package com.apptentive.android.sdk.encryption;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.util.ObjectUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionFactory.class */
public class EncryptionFactory {
    @NonNull
    public static final Encryption NULL = new NullEncryption();

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionFactory$NullEncryption.class */
    private static class NullEncryption implements Encryption {
        private NullEncryption() {
        }

        @Override // com.apptentive.android.sdk.Encryption
        @NonNull
        public byte[] decrypt(@NonNull byte[] bArr) {
            return bArr;
        }

        @Override // com.apptentive.android.sdk.Encryption
        @NonNull
        public byte[] encrypt(@NonNull byte[] bArr) {
            return bArr;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionFactory$NullSafeEncryption.class */
    private static class NullSafeEncryption implements Encryption {
        private final Encryption target;

        private NullSafeEncryption(Encryption encryption) {
            if (encryption != null) {
                this.target = encryption;
                return;
            }
            throw new IllegalArgumentException("Target is null");
        }

        @Override // com.apptentive.android.sdk.Encryption
        @NonNull
        public byte[] decrypt(@NonNull byte[] bArr) throws EncryptionException {
            if (!ObjectUtils.isNullOrEmpty(bArr)) {
                bArr = this.target.decrypt(bArr);
            }
            return bArr;
        }

        @Override // com.apptentive.android.sdk.Encryption
        @NonNull
        public byte[] encrypt(@NonNull byte[] bArr) throws EncryptionException {
            if (!ObjectUtils.isNullOrEmpty(bArr)) {
                bArr = this.target.encrypt(bArr);
            }
            return bArr;
        }
    }

    @NonNull
    public static Encryption createEncryption(EncryptionKey encryptionKey) {
        if (encryptionKey.isNull()) {
            return NULL;
        }
        EncryptionKey.Transformation parse = EncryptionKey.Transformation.parse(encryptionKey.getTransformation());
        String str = parse.algorithm;
        String str2 = parse.mode;
        if (str.equals("AES") && str2.equals("CBC")) {
            return new AesCBCEncryption(encryptionKey.getSecretKey(), encryptionKey.getTransformation());
        }
        throw new IllegalArgumentException("Unsupported transformation: '" + parse + "'");
    }

    @NonNull
    public static Encryption createEncryption(String str, String str2) {
        return createEncryption(new EncryptionKey(str, str2));
    }

    @NonNull
    public static Encryption wrapNullSafe(@NonNull Encryption encryption) {
        if (encryption != null) {
            return new NullSafeEncryption(encryption);
        }
        throw new IllegalArgumentException("Encryption is null");
    }
}

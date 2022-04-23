package com.apptentive.android.sdk.encryption;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.util.StringUtils;
import java.security.Key;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionKey.class */
public class EncryptionKey {
    public static final EncryptionKey NULL = new EncryptionKey();
    private final Key key;
    private final String transformation;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionKey$Transformation.class */
    public static final class Transformation {
        public final String algorithm;
        public final String mode;

        public Transformation(String str, String str2, String str3) {
            this.algorithm = str;
            this.mode = str2;
        }

        @NonNull
        public static Transformation parse(@NonNull String str) {
            if (!StringUtils.isNullOrEmpty(str)) {
                String[] split = str.split("/");
                if (split.length == 3) {
                    return new Transformation(split[0].toUpperCase(), split[1].toUpperCase(), split[2].toUpperCase());
                }
                throw new IllegalStateException("Invalid transformation: '" + str + "'");
            }
            throw new IllegalArgumentException("Transformation is null or empty");
        }
    }

    private EncryptionKey() {
        this.key = null;
        this.transformation = null;
    }

    public EncryptionKey(@NonNull String str, @NonNull String str2) {
        if (!StringUtils.isNullOrEmpty(str)) {
            this.key = new SecretKeySpec(StringUtils.hexToBytes(str), Transformation.parse(str2).algorithm);
            this.transformation = str2;
            return;
        }
        throw new IllegalArgumentException("Hex key is null or empty");
    }

    public EncryptionKey(@NonNull Key key, @NonNull String str) {
        if (key == null) {
            throw new IllegalArgumentException("Key is null");
        } else if (!StringUtils.isNullOrEmpty(str)) {
            this.key = key;
            this.transformation = str;
        } else {
            throw new IllegalArgumentException("Cipher transformation is null or empty");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Key getSecretKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String getTransformation() {
        return this.transformation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNull() {
        return this.key == null;
    }
}

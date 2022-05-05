package com.apptentive.android.sdk.encryption;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.util.StringUtils;
import java.security.Key;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionKey.class */
public class EncryptionKey {
    private static final String ALGORITHM = "AES";
    static final String DEFAULT_TRANSFORMATION = "AES/CBC/PKCS5Padding";
    public static final EncryptionKey NULL = new EncryptionKey();
    private final String hexKey;
    private final Key key;
    private final String transformation;

    private EncryptionKey() {
        this.key = null;
        this.hexKey = null;
        this.transformation = "";
    }

    public EncryptionKey(@NonNull String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Hex key is null or empty");
        }
        this.key = new SecretKeySpec(StringUtils.hexToBytes(str), ALGORITHM);
        this.transformation = DEFAULT_TRANSFORMATION;
        this.hexKey = str;
    }

    public EncryptionKey(@NonNull Key key, @NonNull String str) {
        if (key == null) {
            throw new IllegalArgumentException("Key is null");
        } else if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Cipher transformation is null or empty");
        } else {
            this.key = key;
            this.transformation = str;
            this.hexKey = null;
        }
    }

    @Nullable
    public String getHexKey() {
        return this.hexKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Key getSecretKey() {
        return this.key;
    }

    @NonNull
    public String getTransformation() {
        return this.transformation;
    }

    public boolean isNull() {
        return this.key == null;
    }
}

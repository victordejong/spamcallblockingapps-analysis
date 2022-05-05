package com.apptentive.android.sdk.encryption;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.AtomicFile;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.util.Util;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/EncryptionHelper.class */
public final class EncryptionHelper {
    @Nullable
    public static String decryptString(@NonNull Encryption encryption, @Nullable byte[] bArr) throws EncryptionException {
        if (encryption != null) {
            byte[] decrypt = encryption.decrypt(bArr);
            return decrypt != null ? new String(decrypt) : null;
        }
        throw new IllegalArgumentException("Encryption is null");
    }

    @Nullable
    public static byte[] encrypt(@NonNull Encryption encryption, @Nullable String str) throws EncryptionException {
        if (encryption != null) {
            return str != null ? encryption.encrypt(str.getBytes()) : null;
        }
        throw new IllegalArgumentException("Encryption is null");
    }

    public static byte[] readFromEncryptedFile(@NonNull Encryption encryption, @NonNull File file) throws IOException, EncryptionException {
        return encryption.decrypt(Util.readBytes(file));
    }

    public static void writeToEncryptedFile(@NonNull Encryption encryption, @NonNull File file, @NonNull byte[] bArr) throws IOException, EncryptionException {
        if (encryption != null) {
            AtomicFile atomicFile = new AtomicFile(file);
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream c = atomicFile.m19350c();
                c.write(encryption.encrypt(bArr));
                fileOutputStream = c;
                atomicFile.m19351b(c);
            } catch (Throwable th) {
                atomicFile.m19352a(fileOutputStream);
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Encryption is null");
        }
    }
}

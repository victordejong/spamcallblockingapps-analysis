package com.apptentive.android.sdk.storage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.encryption.Encryptor;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigrator.class */
abstract class DatabaseMigrator {
    static final int FALSE = 0;
    static final int TRUE = 1;
    private final EncryptionKey encryptionKey;
    private final File payloadDataDir;

    public DatabaseMigrator(EncryptionKey encryptionKey, File file) {
        this.encryptionKey = encryptionKey;
        this.payloadDataDir = file;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] encrypt(@Nullable String str) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        return Encryptor.encrypt(this.encryptionKey, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureClosed(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                ApptentiveLog.m399w(ApptentiveLogTag.DATABASE, "Error closing SQLite cursor.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getPayloadBodyFile(String str) {
        File file = this.payloadDataDir;
        return new File(file, str + Constants.PAYLOAD_DATA_FILE_SUFFIX);
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeToFile(File file, byte[] bArr, boolean z) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, InvalidAlgorithmParameterException {
        if (z) {
            Encryptor.writeToEncryptedFile(this.encryptionKey, file, bArr);
        } else {
            Util.writeAtomically(file, bArr);
        }
    }
}

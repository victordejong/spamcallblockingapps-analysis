package com.apptentive.android.sdk.storage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.encryption.EncryptionException;
import com.apptentive.android.sdk.encryption.EncryptionHelper;
import com.apptentive.android.sdk.util.Util;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigrator.class */
abstract class DatabaseMigrator {
    private final Encryption encryption;
    private final File payloadDataDir;

    public DatabaseMigrator(Encryption encryption, File file) {
        this.encryption = encryption;
        this.payloadDataDir = file;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] encrypt(@Nullable String str) throws EncryptionException {
        return EncryptionHelper.encrypt(this.encryption, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureClosed(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                ApptentiveLog.m15635w(ApptentiveLogTag.DATABASE, "Error closing SQLite cursor.", e);
                ErrorMetrics.logException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getPayloadBodyFile(String str) {
        File file = this.payloadDataDir;
        return new File(file, str + ".data");
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeToFile(File file, byte[] bArr, boolean z) throws IOException, EncryptionException {
        if (z) {
            EncryptionHelper.writeToEncryptedFile(this.encryption, file, bArr);
        } else {
            Util.writeAtomically(file, bArr);
        }
    }
}

package androidx.room;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.room.util.CopyLock;
import androidx.room.util.DBUtil;
import androidx.room.util.FileUtil;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
import androidx.sqlite.p008db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
/* loaded from: classes-dex2jar.jar:androidx/room/SQLiteCopyOpenHelper.class */
public class SQLiteCopyOpenHelper implements SupportSQLiteOpenHelper {
    @NonNull
    public final Context mContext;
    @Nullable
    public final String mCopyFromAssetPath;
    @Nullable
    public final File mCopyFromFile;
    @Nullable
    public DatabaseConfiguration mDatabaseConfiguration;
    public final int mDatabaseVersion;
    @NonNull
    public final SupportSQLiteOpenHelper mDelegate;
    public boolean mVerified;

    public SQLiteCopyOpenHelper(@NonNull Context context, @Nullable String str, @Nullable File file, int i, @NonNull SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        this.mContext = context;
        this.mCopyFromAssetPath = str;
        this.mCopyFromFile = file;
        this.mDatabaseVersion = i;
        this.mDelegate = supportSQLiteOpenHelper;
    }

    private void copyDatabaseFile(File file) throws IOException {
        ReadableByteChannel readableByteChannel;
        if (this.mCopyFromAssetPath != null) {
            readableByteChannel = Channels.newChannel(this.mContext.getAssets().open(this.mCopyFromAssetPath));
        } else {
            File file2 = this.mCopyFromFile;
            if (file2 != null) {
                readableByteChannel = new FileInputStream(file2).getChannel();
            } else {
                throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
            }
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.mContext.getCacheDir());
        createTempFile.deleteOnExit();
        FileUtil.copy(readableByteChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        } else if (!createTempFile.renameTo(file)) {
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
    }

    private void verifyDatabaseFile() {
        String databaseName = getDatabaseName();
        File databasePath = this.mContext.getDatabasePath(databaseName);
        DatabaseConfiguration databaseConfiguration = this.mDatabaseConfiguration;
        CopyLock copyLock = new CopyLock(databaseName, this.mContext.getFilesDir(), databaseConfiguration == null || databaseConfiguration.multiInstanceInvalidation);
        try {
            copyLock.lock();
            if (!databasePath.exists()) {
                try {
                    copyDatabaseFile(databasePath);
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            } else if (this.mDatabaseConfiguration != null) {
                try {
                    int readVersion = DBUtil.readVersion(databasePath);
                    if (readVersion != this.mDatabaseVersion) {
                        if (!this.mDatabaseConfiguration.isMigrationRequired(readVersion, this.mDatabaseVersion)) {
                            if (this.mContext.deleteDatabase(databaseName)) {
                                try {
                                    copyDatabaseFile(databasePath);
                                } catch (IOException e2) {
                                }
                            } else {
                                String str = "Failed to delete database file (" + databaseName + ") for a copy destructive migration.";
                            }
                        }
                    }
                } catch (IOException e3) {
                }
            }
        } finally {
            copyLock.unlock();
        }
    }

    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.mDelegate.close();
            this.mVerified = false;
        }
    }

    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper
    public String getDatabaseName() {
        return this.mDelegate.getDatabaseName();
    }

    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getReadableDatabase() {
        SupportSQLiteDatabase readableDatabase;
        synchronized (this) {
            if (!this.mVerified) {
                verifyDatabaseFile();
                this.mVerified = true;
            }
            readableDatabase = this.mDelegate.getReadableDatabase();
        }
        return readableDatabase;
    }

    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getWritableDatabase() {
        SupportSQLiteDatabase writableDatabase;
        synchronized (this) {
            if (!this.mVerified) {
                verifyDatabaseFile();
                this.mVerified = true;
            }
            writableDatabase = this.mDelegate.getWritableDatabase();
        }
        return writableDatabase;
    }

    public void setDatabaseConfiguration(@Nullable DatabaseConfiguration databaseConfiguration) {
        this.mDatabaseConfiguration = databaseConfiguration;
    }

    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper
    @RequiresApi(api = 16)
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.mDelegate.setWriteAheadLoggingEnabled(z);
    }
}

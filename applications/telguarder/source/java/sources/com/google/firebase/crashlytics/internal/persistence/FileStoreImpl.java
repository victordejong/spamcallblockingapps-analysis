package com.google.firebase.crashlytics.internal.persistence;

import android.content.Context;
import android.os.Environment;
import com.google.firebase.crashlytics.internal.Logger;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/persistence/FileStoreImpl.class */
public class FileStoreImpl implements FileStore {
    public static final String FILES_PATH = ".com.google.firebase.crashlytics";
    private final Context context;

    public FileStoreImpl(Context context) {
        this.context = context;
    }

    @Override // com.google.firebase.crashlytics.internal.persistence.FileStore
    public File getFilesDir() {
        return prepare(new File(this.context.getFilesDir(), FILES_PATH));
    }

    @Override // com.google.firebase.crashlytics.internal.persistence.FileStore
    public String getFilesDirPath() {
        return new File(this.context.getFilesDir(), FILES_PATH).getPath();
    }

    boolean isExternalStorageAvailable() {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            Logger.getLogger().m1340w("External Storage is not mounted and/or writable\nHave you declared android.permission.WRITE_EXTERNAL_STORAGE in the manifest?");
            return false;
        }
        return true;
    }

    File prepare(File file) {
        if (file == null) {
            Logger.getLogger().m1340w("Null File");
            return null;
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            Logger.getLogger().m1340w("Couldn't create file");
            return null;
        }
    }
}

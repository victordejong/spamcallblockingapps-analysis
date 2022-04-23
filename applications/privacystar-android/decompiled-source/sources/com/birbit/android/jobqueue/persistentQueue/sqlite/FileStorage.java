package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.log.JqLog;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Set;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/FileStorage.class */
public class FileStorage {
    private static final String EXT = ".jobs";
    private final File folder;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileStorage(Context context, String str) {
        File dir = context.getDir("com_birbit_jobqueue_jobs", 0);
        this.folder = new File(dir, "files_" + str);
        this.folder.mkdirs();
    }

    private static void closeQuitely(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    private static String filename(String str) {
        return str + EXT;
    }

    @Nullable
    private static String filenameToId(String str) {
        if (str.length() < EXT.length() + 1) {
            return null;
        }
        return str.substring(0, str.length() - EXT.length());
    }

    private File toFile(String str) {
        return new File(this.folder, filename(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void delete(String str) {
        File file = toFile(str);
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public byte[] load(String str) throws IOException {
        File file = toFile(str);
        if (!file.exists() || !file.canRead()) {
            return null;
        }
        BufferedSource buffer = Okio.buffer(Okio.source(file));
        try {
            return buffer.readByteArray();
        } finally {
            closeQuitely(buffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void save(String str, byte[] bArr) throws IOException {
        BufferedSink buffer = Okio.buffer(Okio.sink(toFile(str)));
        try {
            buffer.write(bArr).flush();
        } finally {
            closeQuitely(buffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void truncateExcept(Set<String> set) {
        String[] list;
        File file;
        for (String str : this.folder.list()) {
            if (str.endsWith(EXT) && !set.contains(filenameToId(str))) {
                if (!new File(this.folder, str).delete()) {
                    JqLog.m392d("cannot delete unused job toFile " + file.getAbsolutePath(), new Object[0]);
                }
            }
        }
    }
}

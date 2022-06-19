package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.offline.DownloadAction;
import com.google.android.exoplayer2.util.AtomicFile;
import com.google.android.exoplayer2.util.Util;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/ActionFile.class */
public final class ActionFile {
    public static final int VERSION = 0;
    private final File actionFile;
    private final AtomicFile atomicFile;

    public ActionFile(File file) {
        this.actionFile = file;
        this.atomicFile = new AtomicFile(file);
    }

    public DownloadAction[] load(DownloadAction.Deserializer... deserializerArr) {
        if (!this.actionFile.exists()) {
            return new DownloadAction[0];
        }
        InputStream inputStream = null;
        try {
            DataInputStream dataInputStream = new DataInputStream(this.atomicFile.openRead());
            int readInt = dataInputStream.readInt();
            if (readInt > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unsupported action file version: ");
                sb.append(readInt);
                throw new IOException(sb.toString());
            }
            int readInt2 = dataInputStream.readInt();
            DownloadAction[] downloadActionArr = new DownloadAction[readInt2];
            for (int i = 0; i < readInt2; i++) {
                downloadActionArr[i] = DownloadAction.deserializeFromStream(deserializerArr, dataInputStream);
            }
            return downloadActionArr;
        } finally {
            Util.closeQuietly(inputStream);
        }
    }

    public void store(DownloadAction... downloadActionArr) {
        Throwable th;
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(this.atomicFile.startWrite());
            try {
                dataOutputStream2.writeInt(0);
                dataOutputStream2.writeInt(downloadActionArr.length);
                for (DownloadAction downloadAction : downloadActionArr) {
                    DownloadAction.serializeToStream(downloadAction, dataOutputStream2);
                }
                this.atomicFile.endWrite(dataOutputStream2);
                Util.closeQuietly((Closeable) null);
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = dataOutputStream2;
                Util.closeQuietly(dataOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

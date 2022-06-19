package com.google.android.exoplayer2.offline;

import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadAction.class */
public abstract class DownloadAction {
    public final byte[] data;
    public final boolean isRemoveAction;
    public final String type;
    public final Uri uri;
    public final int version;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadAction$Deserializer.class */
    public static abstract class Deserializer {
        public final String type;
        public final int version;

        public Deserializer(String str, int i) {
            this.type = str;
            this.version = i;
        }

        public abstract DownloadAction readFromStream(int i, DataInputStream dataInputStream);
    }

    public DownloadAction(String str, int i, Uri uri, boolean z, byte[] bArr) {
        this.type = str;
        this.version = i;
        this.uri = uri;
        this.isRemoveAction = z;
        this.data = bArr == null ? new byte[0] : bArr;
    }

    public static DownloadAction deserializeFromStream(Deserializer[] deserializerArr, InputStream inputStream) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        String readUTF = dataInputStream.readUTF();
        int readInt = dataInputStream.readInt();
        for (Deserializer deserializer : deserializerArr) {
            if (readUTF.equals(deserializer.type) && deserializer.version >= readInt) {
                return deserializer.readFromStream(readInt, dataInputStream);
            }
        }
        throw new DownloadException("No deserializer found for:" + readUTF + ", " + readInt);
    }

    public static void serializeToStream(DownloadAction downloadAction, OutputStream outputStream) {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeUTF(downloadAction.type);
        dataOutputStream.writeInt(downloadAction.version);
        downloadAction.writeToStream(dataOutputStream);
        dataOutputStream.flush();
    }

    public abstract Downloader createDownloader(DownloaderConstructorHelper downloaderConstructorHelper);

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            if (getClass() != obj.getClass()) {
                z = false;
            } else {
                DownloadAction downloadAction = (DownloadAction) obj;
                z = false;
                if (this.type.equals(downloadAction.type)) {
                    z = false;
                    if (this.version == downloadAction.version) {
                        z = false;
                        if (this.uri.equals(downloadAction.uri)) {
                            z = false;
                            if (this.isRemoveAction == downloadAction.isRemoveAction) {
                                z = false;
                                if (Arrays.equals(this.data, downloadAction.data)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (((this.uri.hashCode() * 31) + (this.isRemoveAction ? 1 : 0)) * 31) + Arrays.hashCode(this.data);
    }

    public boolean isSameMedia(DownloadAction downloadAction) {
        return this.uri.equals(downloadAction.uri);
    }

    public final byte[] toByteArray() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            serializeToStream(this, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new IllegalStateException();
        }
    }

    public abstract void writeToStream(DataOutputStream dataOutputStream);
}

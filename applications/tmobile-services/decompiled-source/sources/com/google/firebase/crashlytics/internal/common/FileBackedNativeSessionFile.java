package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile.class */
class FileBackedNativeSessionFile implements NativeSessionFile {
    @NonNull
    private final String dataTransportFilename;
    @NonNull
    private final File file;
    @NonNull
    private final String reportsEndpointFilename;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileBackedNativeSessionFile(@NonNull String str, @NonNull String str2, @NonNull File file) {
        this.dataTransportFilename = str;
        this.reportsEndpointFilename = str2;
        this.file = file;
    }

    @Nullable
    private byte[] asGzippedBytes() {
        byte[] bArr = new byte[8192];
        try {
            InputStream stream = getStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                if (stream == null) {
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    if (stream == null) {
                        return null;
                    }
                    stream.close();
                    return null;
                }
                while (true) {
                    int read = stream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    gZIPOutputStream.write(bArr, 0, read);
                }
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (stream != null) {
                    stream.close();
                }
                return byteArray;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.common.NativeSessionFile
    @Nullable
    public CrashlyticsReport.FilesPayload.File asFilePayload() {
        byte[] asGzippedBytes = asGzippedBytes();
        return asGzippedBytes != null ? CrashlyticsReport.FilesPayload.File.builder().setContents(asGzippedBytes).setFilename(this.dataTransportFilename).build() : null;
    }

    @Override // com.google.firebase.crashlytics.internal.common.NativeSessionFile
    @NonNull
    public String getReportsEndpointFilename() {
        return this.reportsEndpointFilename;
    }

    @Override // com.google.firebase.crashlytics.internal.common.NativeSessionFile
    @Nullable
    public InputStream getStream() {
        if (!this.file.exists() || !this.file.isFile()) {
            return null;
        }
        try {
            return new FileInputStream(this.file);
        } catch (FileNotFoundException e) {
            return null;
        }
    }
}

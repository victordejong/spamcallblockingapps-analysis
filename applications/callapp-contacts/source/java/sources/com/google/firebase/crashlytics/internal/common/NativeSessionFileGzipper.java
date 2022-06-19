package com.google.firebase.crashlytics.internal.common;

import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/NativeSessionFileGzipper.class */
public class NativeSessionFileGzipper {
    NativeSessionFileGzipper() {
    }

    private static void gzipInputStream(InputStream inputStream, File file) throws IOException {
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        gZIPOutputStream2.finish();
                        CommonUtils.closeQuietly(gZIPOutputStream2);
                        return;
                    }
                    gZIPOutputStream2.write(bArr, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = gZIPOutputStream2;
                    CommonUtils.closeQuietly(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = null;
        }
    }

    public static void processNativeSessions(File file, List<NativeSessionFile> list) {
        for (NativeSessionFile nativeSessionFile : list) {
            InputStream inputStream = null;
            try {
                InputStream stream = nativeSessionFile.getStream();
                if (stream == null) {
                    inputStream = stream;
                } else {
                    gzipInputStream(stream, new File(file, nativeSessionFile.getReportsEndpointFilename()));
                    inputStream = stream;
                }
            } catch (IOException e) {
            } catch (Throwable th) {
                CommonUtils.closeQuietly(null);
                throw th;
            }
            CommonUtils.closeQuietly(inputStream);
        }
    }
}

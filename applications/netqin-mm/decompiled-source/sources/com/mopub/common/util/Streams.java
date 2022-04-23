package com.mopub.common.util;

import com.mopub.common.logging.MoPubLog;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Streams.class */
public class Streams {
    public static void closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to close stream. Ignoring.");
            }
        }
    }

    public static void copyContent(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static void copyContent(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte[] bArr = new byte[16384];
        long j2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                j2 += read;
                if (j2 < j) {
                    outputStream.write(bArr, 0, read);
                } else {
                    throw new IOException("Error copying content: attempted to copy " + j2 + " bytes, with " + j + " maximum.");
                }
            } else {
                return;
            }
        }
    }

    public static void readStream(InputStream inputStream, byte[] bArr) throws IOException {
        int i;
        int length = bArr.length;
        int i2 = 0;
        do {
            int read = inputStream.read(bArr, i2, length);
            if (read != -1) {
                i2 += read;
                i = length - read;
                length = i;
            } else {
                return;
            }
        } while (i > 0);
    }
}

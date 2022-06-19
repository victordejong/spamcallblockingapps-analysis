package com.mopub.common.util;

import com.mopub.common.logging.MoPubLog;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Streams.class */
public class Streams {
    public static void closeStream(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to close stream. Ignoring.");
        }
    }

    public static void copyContent(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public static void copyContent(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        byte[] bArr = new byte[16384];
        char c = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            c += read;
            if (c >= j) {
                throw new IOException(C22128a.m8693K2(C22128a.m8712G("Error copying content: attempted to copy ", c, " bytes, with "), j, " maximum."));
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static void readStream(InputStream inputStream, byte[] bArr) throws IOException {
        int i;
        int length = bArr.length;
        int i2 = 0;
        do {
            int read = inputStream.read(bArr, i2, length);
            if (read == -1) {
                return;
            }
            i2 += read;
            i = length - read;
            length = i;
        } while (i > 0);
    }
}

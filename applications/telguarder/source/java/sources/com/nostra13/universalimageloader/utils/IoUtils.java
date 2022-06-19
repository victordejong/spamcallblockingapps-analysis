package com.nostra13.universalimageloader.utils;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/utils/IoUtils.class */
public final class IoUtils {
    public static final int CONTINUE_LOADING_PERCENTAGE = 75;
    public static final int DEFAULT_BUFFER_SIZE = 32768;
    public static final int DEFAULT_IMAGE_TOTAL_SIZE = 512000;

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/utils/IoUtils$CopyListener.class */
    public interface CopyListener {
        boolean onBytesCopied(int i, int i2);
    }

    private IoUtils() {
    }

    public static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
            }
        }
    }

    public static boolean copyStream(InputStream inputStream, OutputStream outputStream, CopyListener copyListener) throws IOException {
        return copyStream(inputStream, outputStream, copyListener, 32768);
    }

    public static boolean copyStream(InputStream inputStream, OutputStream outputStream, CopyListener copyListener, int i) throws IOException {
        int i2;
        int available = inputStream.available();
        int i3 = available;
        if (available <= 0) {
            i3 = 512000;
        }
        byte[] bArr = new byte[i];
        if (shouldStopLoading(copyListener, 0, i3)) {
            return false;
        }
        int i4 = 0;
        do {
            int read = inputStream.read(bArr, 0, i);
            if (read == -1) {
                outputStream.flush();
                return true;
            }
            outputStream.write(bArr, 0, read);
            i2 = i4 + read;
            i4 = i2;
        } while (!shouldStopLoading(copyListener, i2, i3));
        return false;
    }

    public static void readAndCloseStream(InputStream inputStream) {
        do {
            try {
            } catch (IOException e) {
            } catch (Throwable th) {
                closeSilently(inputStream);
                throw th;
            }
        } while (inputStream.read(new byte[32768], 0, 32768) != -1);
        closeSilently(inputStream);
    }

    private static boolean shouldStopLoading(CopyListener copyListener, int i, int i2) {
        return copyListener != null && !copyListener.onBytesCopied(i, i2) && (i * 100) / i2 < 75;
    }
}

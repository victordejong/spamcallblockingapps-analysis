package com.google.android.gms.common.util;

import android.os.ParcelFileDescriptor;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/IOUtils.class */
public final class IOUtils {
    private IOUtils() {
    }

    @KeepForSdk
    public static void closeQuietly(@Nullable ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
            }
        }
    }

    @KeepForSdk
    public static void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @KeepForSdk
    @Deprecated
    public static long copyStream(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream) {
        return copyStream(inputStream, outputStream, false, 1024);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @KeepForSdk
    @Deprecated
    public static long copyStream(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream, boolean z, int i) {
        byte[] bArr = new byte[i];
        char c = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i);
                if (read == -1) {
                    break;
                }
                c += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    closeQuietly(inputStream);
                    closeQuietly(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            closeQuietly(inputStream);
            closeQuietly(outputStream);
        }
        return c;
    }

    @KeepForSdk
    public static boolean isGzipByteBuffer(@RecentlyNonNull byte[] bArr) {
        if (bArr.length > 1) {
            return (((bArr[1] & 255) << 8) | (bArr[0] & 255)) == 35615;
        }
        return false;
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static byte[] readInputStreamFully(@RecentlyNonNull InputStream inputStream) {
        return readInputStreamFully(inputStream, true);
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static byte[] readInputStreamFully(@RecentlyNonNull InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copyStream(inputStream, byteArrayOutputStream, z, 1024);
        return byteArrayOutputStream.toByteArray();
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static byte[] toByteArray(@RecentlyNonNull InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(byteArrayOutputStream);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}

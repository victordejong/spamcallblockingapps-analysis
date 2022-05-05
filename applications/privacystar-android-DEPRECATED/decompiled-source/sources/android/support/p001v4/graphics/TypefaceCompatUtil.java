package android.support.p001v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.os.StrictMode;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import org.apache.commons.cli.HelpFormatter;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.graphics.TypefaceCompatUtil */
/* loaded from: classes-dex2jar.jar:android/support/v4/graphics/TypefaceCompatUtil.class */
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @RequiresApi(19)
    @Nullable
    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        File tempFile = getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (!copyToFile(tempFile, resources, i)) {
                tempFile.delete();
                return null;
            }
            ByteBuffer mmap = mmap(tempFile);
            tempFile.delete();
            return mmap;
        } catch (Throwable th) {
            tempFile.delete();
            throw th;
        }
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean copyToFile = copyToFile(file, inputStream);
                closeQuietly(inputStream);
                return copyToFile;
            } catch (Throwable th2) {
                th = th2;
                closeQuietly(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    closeQuietly(fileOutputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            StringBuilder sb = new StringBuilder();
            sb.append("Error copying resource contents to temp file: ");
            sb.append(e.getMessage());
            fileOutputStream3 = fileOutputStream2;
            Log.e(TAG, sb.toString());
            closeQuietly(fileOutputStream2);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream;
            closeQuietly(fileOutputStream3);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    @Nullable
    public static File getTempFile(Context context) {
        String str = CACHE_FILE_PREFIX + Process.myPid() + HelpFormatter.DEFAULT_OPT_PREFIX + Process.myTid() + HelpFormatter.DEFAULT_OPT_PREFIX;
        for (int i = 0; i < 100; i++) {
            File file = new File(context.getCacheDir(), str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:20:0x0050
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @android.support.annotation.RequiresApi(19)
    @android.support.annotation.Nullable
    public static java.nio.ByteBuffer mmap(android.content.Context r7, android.os.CancellationSignal r8, android.net.Uri r9) {
        /*
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()
            r7 = r0
            r0 = r7
            r1 = r9
            java.lang.String r2 = "r"
            r3 = r8
            android.os.ParcelFileDescriptor r0 = r0.openFileDescriptor(r1, r2, r3)     // Catch: IOException -> 0x00a0
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x001c
            r0 = r9
            if (r0 == 0) goto L_0x001a
            r0 = r9
            r0.close()     // Catch: IOException -> 0x00a0
        L_0x001a:
            r0 = 0
            return r0
        L_0x001c:
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: Throwable -> 0x007e
            r10 = r0
            r0 = r10
            r1 = r9
            java.io.FileDescriptor r1 = r1.getFileDescriptor()     // Catch: Throwable -> 0x007e
            r0.<init>(r1)     // Catch: Throwable -> 0x007e
            r0 = r10
            java.nio.channels.FileChannel r0 = r0.getChannel()     // Catch: Throwable -> 0x0056
            r7 = r0
            r0 = r7
            long r0 = r0.size()     // Catch: Throwable -> 0x0056
            r11 = r0
            r0 = r7
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: Throwable -> 0x0056
            r2 = 0
            r3 = r11
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r3)     // Catch: Throwable -> 0x0056
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0046
            r0 = r10
            r0.close()     // Catch: Throwable -> 0x007e
        L_0x0046:
            r0 = r9
            if (r0 == 0) goto L_0x004e
            r0 = r9
            r0.close()     // Catch: IOException -> 0x00a0
        L_0x004e:
            r0 = r7
            return r0
        L_0x0050:
            r8 = move-exception
            r0 = 0
            r7 = r0
            goto L_0x005a
        L_0x0056:
            r7 = move-exception
            r0 = r7
            throw r0     // Catch: all -> 0x0059
        L_0x0059:
            r8 = move-exception
        L_0x005a:
            r0 = r10
            if (r0 == 0) goto L_0x0076
            r0 = r7
            if (r0 == 0) goto L_0x0072
            r0 = r10
            r0.close()     // Catch: Throwable -> 0x0069
            goto L_0x0076
        L_0x0069:
            r10 = move-exception
            r0 = r7
            r1 = r10
            r0.addSuppressed(r1)     // Catch: Throwable -> 0x007e
            goto L_0x0076
        L_0x0072:
            r0 = r10
            r0.close()     // Catch: Throwable -> 0x007e
        L_0x0076:
            r0 = r8
            throw r0     // Catch: Throwable -> 0x007e
        L_0x0078:
            r7 = move-exception
            r0 = 0
            r8 = r0
            goto L_0x0082
        L_0x007e:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch: all -> 0x0081
        L_0x0081:
            r7 = move-exception
        L_0x0082:
            r0 = r9
            if (r0 == 0) goto L_0x009e
            r0 = r8
            if (r0 == 0) goto L_0x009a
            r0 = r9
            r0.close()     // Catch: Throwable -> 0x0091
            goto L_0x009e
        L_0x0091:
            r9 = move-exception
            r0 = r8
            r1 = r9
            r0.addSuppressed(r1)     // Catch: IOException -> 0x00a0
            goto L_0x009e
        L_0x009a:
            r0 = r9
            r0.close()     // Catch: IOException -> 0x00a0
        L_0x009e:
            r0 = r7
            throw r0     // Catch: IOException -> 0x00a0
        L_0x00a0:
            r7 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.graphics.TypefaceCompatUtil.mmap(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    @RequiresApi(19)
    @Nullable
    private static ByteBuffer mmap(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileChannel channel = fileInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return map;
        } catch (IOException e) {
            return null;
        }
    }
}

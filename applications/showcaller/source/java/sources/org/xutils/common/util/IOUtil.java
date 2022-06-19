package org.xutils.common.util;

import android.database.Cursor;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/IOUtil.class */
public class IOUtil {
    private IOUtil() {
    }

    public static void closeQuietly(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
                LogUtil.m260d(th.getMessage(), th);
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                LogUtil.m260d(th.getMessage(), th);
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) {
        BufferedInputStream bufferedInputStream = inputStream;
        if (!(inputStream instanceof BufferedInputStream)) {
            bufferedInputStream = new BufferedInputStream(inputStream);
        }
        BufferedOutputStream bufferedOutputStream = outputStream;
        if (!(outputStream instanceof BufferedOutputStream)) {
            bufferedOutputStream = new BufferedOutputStream(outputStream);
        }
        byte[] bArr = new byte[1024];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read == -1) {
                bufferedOutputStream.flush();
                return;
            }
            bufferedOutputStream.write(bArr, 0, read);
        }
    }

    public static boolean deleteFileOrDir(File file) {
        return FileUtil.deleteFileOrDir(file);
    }

    public static byte[] readBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream = inputStream;
        if (!(inputStream instanceof BufferedInputStream)) {
            bufferedInputStream = new BufferedInputStream(inputStream);
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        closeQuietly(byteArrayOutputStream2);
                        return byteArray;
                    }
                    byteArrayOutputStream2.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = byteArrayOutputStream2;
                closeQuietly(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static byte[] readBytes(InputStream inputStream, long j, int i) {
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        ?? r6 = j;
        if (i2 > 0) {
            while (r6 > 0) {
                long skip = inputStream.skip(r6);
                if (skip <= 0) {
                    break;
                }
                r6 -= skip;
            }
        }
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) inputStream.read();
        }
        return bArr;
    }

    public static String readStr(InputStream inputStream) {
        return readStr(inputStream, "UTF-8");
    }

    public static String readStr(InputStream inputStream, String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "UTF-8";
        }
        BufferedInputStream bufferedInputStream = inputStream;
        if (!(inputStream instanceof BufferedInputStream)) {
            bufferedInputStream = new BufferedInputStream(inputStream);
        }
        InputStreamReader inputStreamReader = new InputStreamReader(bufferedInputStream, str2);
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[1024];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read >= 0) {
                sb.append(cArr, 0, read);
            } else {
                return sb.toString();
            }
        }
    }

    public static void writeStr(OutputStream outputStream, String str) {
        writeStr(outputStream, str, "UTF-8");
    }

    public static void writeStr(OutputStream outputStream, String str, String str2) {
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = "UTF-8";
        }
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, str3);
        outputStreamWriter.write(str);
        outputStreamWriter.flush();
    }
}

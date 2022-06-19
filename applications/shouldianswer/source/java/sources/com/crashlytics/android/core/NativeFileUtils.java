package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.p068b.C1480i;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/NativeFileUtils.class */
final class NativeFileUtils {
    private NativeFileUtils() {
    }

    private static byte[] binaryImagesJsonFromBinaryLibsFile(File file, Context context) {
        byte[] readFile = readFile(file);
        if (readFile == null || readFile.length == 0) {
            return null;
        }
        return processBinaryImages(context, new String(readFile));
    }

    public static byte[] binaryImagesJsonFromDirectory(File file, Context context) {
        File filter = filter(file, ".maps");
        if (filter != null) {
            return binaryImagesJsonFromMapsFile(filter, context);
        }
        File filter2 = filter(file, ".binary_libs");
        if (filter2 == null) {
            return null;
        }
        return binaryImagesJsonFromBinaryLibsFile(filter2, context);
    }

    private static byte[] binaryImagesJsonFromMapsFile(File file, Context context) {
        BufferedReader bufferedReader;
        Throwable th;
        if (!file.exists()) {
            return null;
        }
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            try {
                byte[] convert = new BinaryImagesConverter(context, new Sha1FileIdStrategy()).convert(bufferedReader2);
                C1480i.m3498a(bufferedReader2);
                return convert;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
                C1480i.m3498a(bufferedReader);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    private static File filter(File file, String str) {
        File[] listFiles;
        for (File file2 : file.listFiles()) {
            if (file2.getName().endsWith(str)) {
                return file2;
            }
        }
        return null;
    }

    public static byte[] metadataJsonFromDirectory(File file) {
        File filter = filter(file, ".device_info");
        return filter == null ? null : readFile(filter);
    }

    public static byte[] minidumpFromDirectory(File file) {
        File filter = filter(file, ".dmp");
        return filter == null ? new byte[0] : minidumpFromFile(filter);
    }

    private static byte[] minidumpFromFile(File file) {
        return readFile(file);
    }

    private static byte[] processBinaryImages(Context context, String str) {
        return new BinaryImagesConverter(context, new Sha1FileIdStrategy()).convert(str);
    }

    private static byte[] readBytes(InputStream inputStream) {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static byte[] readFile(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] readBytes = readBytes(fileInputStream);
                C1480i.m3498a((Closeable) fileInputStream);
                return readBytes;
            } catch (FileNotFoundException e) {
                C1480i.m3498a((Closeable) fileInputStream);
                return null;
            } catch (IOException e2) {
                C1480i.m3498a((Closeable) fileInputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                C1480i.m3498a((Closeable) fileInputStream);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            fileInputStream = null;
        } catch (IOException e4) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }
}

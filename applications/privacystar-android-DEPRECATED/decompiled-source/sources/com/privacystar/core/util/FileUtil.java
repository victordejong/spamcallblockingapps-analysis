package com.privacystar.core.util;

import android.content.Context;
import com.privacystar.core.PSApplication;
import hugo.weaving.DebugLog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import org.apache.commons.p018io.IOUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/FileUtil.class */
public class FileUtil {
    private static final String BINARY_OFFENDER_FILE_NAME = "offenders.fops";
    private static final String FILE_SCHEME = "file://";
    private static final String OFFENDER_FILE_NAME = "raw_offenders.bin";
    private static final String UI_VERSION_FILE_NAME = "web/version.txt";
    private static String systemPath = "";

    public static boolean copyBundledAsset(String str) {
        return copyBundledAsset(str, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.res.AssetManager] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean copyBundledAsset(java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.FileUtil.copyBundledAsset(java.lang.String, java.lang.String):boolean");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:39:0x00f1
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public static void copyDirectory(java.io.File r7, java.io.File r8) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.FileUtil.copyDirectory(java.io.File, java.io.File):void");
    }

    private static void directoryCreation(String str) {
        File file = new File(str);
        if (!file.isDirectory()) {
            Timber.m37d("Directory [%s] was%s created.", str, file.mkdirs() ? "" : " not");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void directoryDeletion(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                directoryDeletion(file2);
            }
        }
        if (!file.delete()) {
            Timber.m34e("FileUtil Delete failed.", new Object[0]);
        }
    }

    private static void fileDeleteThreaded(final File file) {
        Thread thread = new Thread(new Runnable(file) { // from class: com.privacystar.core.util.FileUtil$$Lambda$0
            private final File arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                FileUtil.directoryDeletion(this.arg$1);
            }
        });
        thread.setPriority(1);
        thread.start();
    }

    public static File forceRenameTo(File file, String str, String str2) {
        File file2 = new File(str, str2);
        boolean renameTo = file.renameTo(file2);
        boolean z = renameTo;
        if (!renameTo) {
            z = renameTo;
            if (file2.exists()) {
                z = renameTo;
                if (file2.delete()) {
                    z = file.renameTo(file2);
                }
            }
        }
        return z ? file2 : null;
    }

    public static File getCompressedOffendersDirectory() {
        File[] listFiles;
        File file = new File(PSApplication.context().getApplicationInfo().dataDir);
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        for (File file2 : file.listFiles()) {
            if (file2.getName().startsWith("raw_offenders")) {
                return file2;
            }
        }
        return null;
    }

    public static String getFileContents(Context context, String str) {
        String str2;
        try {
            InputStream open = context.getAssets().open(str);
            Timber.m37d("%s loaded into InputStream", str);
            str2 = IOUtils.toString(open, Charset.defaultCharset());
        } catch (IOException e) {
            Timber.m23w(e, "Couldn't read file contents.", new Object[0]);
            str2 = "";
        }
        return str2;
    }

    public static File getFileFromAssets(String str) {
        Timber.m37d("Fetching file: %s", str);
        try {
            return new File(new File(PSApplication.context().getApplicationInfo().dataDir), str);
        } catch (NullPointerException e) {
            Timber.m23w(e, "Could not create file.", new Object[0]);
            return null;
        }
    }

    private static File getLocalFile(String str) {
        try {
            return new File(getLocalFilePath(str));
        } catch (Exception e) {
            Timber.m23w(e, "", new Object[0]);
            return null;
        }
    }

    public static String getLocalFilePath(String str) {
        return getSystemFilePath() + str;
    }

    public static String getSystemFilePath() {
        if (Text.isBlank(systemPath)) {
            File filesDir = PSApplication.context().getFilesDir();
            if (filesDir == null) {
                return null;
            }
            systemPath = filesDir.getPath();
        }
        return systemPath;
    }

    public static String getUiVersionFileContents(Context context) {
        return getFileContents(context, UI_VERSION_FILE_NAME);
    }

    @DebugLog
    public static boolean isStreamZipped(InputStream inputStream) {
        boolean z = false;
        try {
            if (new ZipInputStream(inputStream).getNextEntry() != null) {
                z = true;
            }
        } catch (IOException e) {
            Timber.m23w(e, "could not read stream to determine if it is zipped.", new Object[0]);
        }
        return z;
    }

    private static boolean seeIfLocalFileExists(File file, String str) {
        File localFile = getLocalFile(str);
        return localFile != null && localFile.exists();
    }

    public static boolean uiAssetsExist() {
        File fileFromAssets = getFileFromAssets(OFFENDER_FILE_NAME);
        return fileFromAssets != null && fileFromAssets.exists();
    }

    public static boolean unzip(String str, String str2, Context context) {
        FileOutputStream fileOutputStream;
        Throwable th;
        Exception e;
        byte[] bArr = new byte[4096];
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        inputStream = null;
        try {
            directoryCreation(str2);
            ZipFile zipFile = new ZipFile(str);
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            fileOutputStream = null;
            while (true) {
                inputStream2 = inputStream;
                fileOutputStream = fileOutputStream;
                try {
                    try {
                        if (entries.hasMoreElements()) {
                            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                            if (zipEntry.isDirectory()) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str2);
                                sb.append(zipEntry.getName());
                                directoryCreation(sb.toString());
                            } else {
                                InputStream inputStream3 = zipFile.getInputStream(zipEntry);
                                try {
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str2 + zipEntry.getName()));
                                    while (true) {
                                        try {
                                            int read = inputStream3.read(bArr);
                                            if (read == -1) {
                                                break;
                                            }
                                            fileOutputStream2.write(bArr, 0, read);
                                        } catch (Exception e2) {
                                            e = e2;
                                            fileOutputStream = fileOutputStream2;
                                            inputStream = inputStream3;
                                            inputStream2 = inputStream;
                                            fileOutputStream = fileOutputStream;
                                            Timber.m32e(e, "while unzipping file %s to %s", str, str2);
                                            IOUtils.closeQuietly(inputStream);
                                            IOUtils.closeQuietly((OutputStream) fileOutputStream);
                                            return false;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            fileOutputStream = fileOutputStream2;
                                            inputStream2 = inputStream3;
                                            IOUtils.closeQuietly(inputStream2);
                                            IOUtils.closeQuietly((OutputStream) fileOutputStream);
                                            throw th;
                                        }
                                    }
                                    fileOutputStream2.close();
                                    inputStream3.close();
                                    fileOutputStream = fileOutputStream2;
                                    inputStream = inputStream3;
                                } catch (Exception e3) {
                                    e = e3;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                        } else {
                            zipFile.close();
                            IOUtils.closeQuietly(inputStream);
                            IOUtils.closeQuietly((OutputStream) fileOutputStream);
                            return true;
                        }
                    } catch (Exception e4) {
                        e = e4;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        } catch (Exception e5) {
            e = e5;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }

    public static File unzipFromGZipStream(InputStream inputStream, String str, String str2, Context context) {
        GZIPInputStream gZIPInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream2;
        try {
            directoryCreation(str);
            gZIPInputStream = new GZIPInputStream(inputStream);
        } catch (IOException e2) {
            e = e2;
            gZIPInputStream = null;
            fileOutputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            gZIPInputStream = null;
            fileOutputStream = null;
        }
        try {
            File file = new File(str, str2 + ".tmp");
            fileOutputStream2 = new FileOutputStream(file);
            gZIPInputStream = gZIPInputStream;
            fileOutputStream = fileOutputStream2;
            try {
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = gZIPInputStream.read(bArr);
                        if (read != -1) {
                            fileOutputStream2.write(bArr, 0, read);
                        } else {
                            fileOutputStream2.flush();
                            File forceRenameTo = forceRenameTo(file, str, str2);
                            IOUtils.closeQuietly((OutputStream) fileOutputStream2);
                            IOUtils.closeQuietly((InputStream) gZIPInputStream);
                            return forceRenameTo;
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    gZIPInputStream = gZIPInputStream;
                    fileOutputStream = fileOutputStream2;
                    Timber.m32e(e, "", new Object[0]);
                    IOUtils.closeQuietly((OutputStream) fileOutputStream2);
                    IOUtils.closeQuietly((InputStream) gZIPInputStream);
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                IOUtils.closeQuietly((InputStream) gZIPInputStream);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            fileOutputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            IOUtils.closeQuietly((InputStream) gZIPInputStream);
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00d2: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:39:0x00d2 */
    public static String unzipFromLocalZipFile() {
        ZipInputStream zipInputStream;
        OutputStream outputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        FileNotFoundException e;
        IOException e2;
        Context context = PSApplication.context();
        String str = null;
        try {
            try {
                InputStream open = context.getAssets().open(BINARY_OFFENDER_FILE_NAME);
                Timber.m37d("%s loaded into InputStream", BINARY_OFFENDER_FILE_NAME);
                zipInputStream = new ZipInputStream(open);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
            fileOutputStream = null;
            zipInputStream = null;
        } catch (IOException e4) {
            e2 = e4;
            fileOutputStream = null;
            zipInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            zipInputStream = null;
        }
        try {
            fileOutputStream = context.openFileOutput("unzipped-local-offenders.fops", 0);
            try {
                if (zipInputStream.getNextEntry() != null) {
                    Timber.m37d("Copied %d bytes to temporary disk file.", Integer.valueOf(IOUtils.copy(zipInputStream, fileOutputStream)));
                    fileOutputStream.flush();
                }
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                IOUtils.closeQuietly((InputStream) zipInputStream);
                str = "unzipped-local-offenders.fops";
            } catch (FileNotFoundException e5) {
                e = e5;
                Timber.m23w(e, "Couldn't load local binary offender file.", new Object[0]);
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                IOUtils.closeQuietly((InputStream) zipInputStream);
                return str;
            } catch (IOException e6) {
                e2 = e6;
                Timber.m23w(e2, "Couldn't write temporary delta file to disk.", new Object[0]);
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                IOUtils.closeQuietly((InputStream) zipInputStream);
                return str;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileOutputStream = null;
        } catch (IOException e8) {
            e2 = e8;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
            IOUtils.closeQuietly(outputStream);
            IOUtils.closeQuietly((InputStream) zipInputStream);
            throw th;
        }
        return str;
    }

    public static String unzipFromZipStream(InputStream inputStream, long j) {
        Throwable th;
        String str;
        FileOutputStream fileOutputStream;
        FileNotFoundException e;
        IOException e2;
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        Context context = PSApplication.context();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("offenders-");
                sb.append(j);
                sb.append(".fops");
                str = sb.toString();
                try {
                    fileOutputStream = context.openFileOutput(str, 0);
                } catch (FileNotFoundException e3) {
                    e = e3;
                    fileOutputStream = null;
                } catch (IOException e4) {
                    e2 = e4;
                    fileOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            str = null;
            fileOutputStream = null;
        } catch (IOException e6) {
            e2 = e6;
            str = null;
            fileOutputStream = null;
        }
        try {
            if (zipInputStream.getNextEntry() != null) {
                Timber.m37d("Copied %d bytes to temporary disk file.", Integer.valueOf(IOUtils.copy(zipInputStream, fileOutputStream)));
                fileOutputStream.flush();
            }
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
        } catch (FileNotFoundException e7) {
            e = e7;
            Timber.m23w(e, "Couldn't write temporary delta file to disk.", new Object[0]);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            IOUtils.closeQuietly((InputStream) zipInputStream);
            return str;
        } catch (IOException e8) {
            e2 = e8;
            Timber.m23w(e2, "Error unzipping stream.", new Object[0]);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            IOUtils.closeQuietly((InputStream) zipInputStream);
            return str;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            IOUtils.closeQuietly((OutputStream) fileOutputStream2);
            IOUtils.closeQuietly((InputStream) zipInputStream);
            throw th;
        }
        IOUtils.closeQuietly((InputStream) zipInputStream);
        return str;
    }

    public static String unzipFromZipStream(byte[] bArr, long j) {
        return unzipFromZipStream(new ByteArrayInputStream(bArr), j);
    }

    @DebugLog
    public static byte[] unzipFromZipStreamNative(byte[] bArr) {
        byte[] bArr2 = new byte[4096];
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            Timber.m23w(e, "error parsing zipped stream.", new Object[0]);
            return new byte[0];
        }
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00da: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:35:0x00da */
    public static File unzipToFileFromStream(InputStream inputStream, String str, String str2) {
        ZipInputStream zipInputStream;
        OutputStream outputStream;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        try {
            try {
                directoryCreation(str);
                zipInputStream = new ZipInputStream(inputStream);
            } catch (Throwable th2) {
                th = th2;
                zipInputStream = null;
            }
            try {
                zipInputStream.getNextEntry();
                File file = new File(str, str2 + ".tmp");
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = zipInputStream.read(bArr);
                        if (read != -1) {
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            fileOutputStream.flush();
                            File forceRenameTo = forceRenameTo(file, str, str2);
                            IOUtils.closeQuietly((OutputStream) fileOutputStream);
                            IOUtils.closeQuietly((InputStream) zipInputStream);
                            return forceRenameTo;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    Timber.m23w(e, "Error unzipping stream.", new Object[0]);
                    IOUtils.closeQuietly((OutputStream) fileOutputStream);
                    IOUtils.closeQuietly((InputStream) zipInputStream);
                    return null;
                }
            } catch (IOException e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
                IOUtils.closeQuietly(outputStream);
                IOUtils.closeQuietly((InputStream) zipInputStream);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            zipInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            zipInputStream = null;
            outputStream = null;
        }
    }

    public static String writeToDiskFromStream(InputStream inputStream, long j) {
        Throwable th;
        String str;
        FileOutputStream fileOutputStream;
        FileNotFoundException e;
        IOException e2;
        FileOutputStream openFileOutput;
        Context context = PSApplication.context();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("offenders-");
                sb.append(j);
                sb.append(".fops");
                str = sb.toString();
                try {
                    openFileOutput = context.openFileOutput(str, 0);
                } catch (FileNotFoundException e3) {
                    e = e3;
                    fileOutputStream = null;
                } catch (IOException e4) {
                    e2 = e4;
                    fileOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            str = null;
            fileOutputStream = null;
        } catch (IOException e6) {
            e2 = e6;
            str = null;
            fileOutputStream = null;
        }
        try {
            int copy = IOUtils.copy(inputStream, openFileOutput);
            openFileOutput.flush();
            Timber.m37d("Copied %d bytes to temporary disk file.", Integer.valueOf(copy));
            IOUtils.closeQuietly((OutputStream) openFileOutput);
        } catch (FileNotFoundException e7) {
            e = e7;
            fileOutputStream = openFileOutput;
            Timber.m23w(e, "Couldn't write temporary delta file to disk.", new Object[0]);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            return str;
        } catch (IOException e8) {
            e2 = e8;
            fileOutputStream = openFileOutput;
            Timber.m23w(e2, "Error unzipping stream.", new Object[0]);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            return str;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = openFileOutput;
            IOUtils.closeQuietly((OutputStream) fileOutputStream2);
            throw th;
        }
        return str;
    }

    public static File writeToFileWithName(InputStream inputStream, String str, String str2) throws IOException {
        String str3 = getSystemFilePath() + str;
        directoryCreation(str3);
        File file = new File(str3, str2);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                fileOutputStream.flush();
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                IOUtils.closeQuietly(inputStream);
                return file;
            }
        }
    }
}

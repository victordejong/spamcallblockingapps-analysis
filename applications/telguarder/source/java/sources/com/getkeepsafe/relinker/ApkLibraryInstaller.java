package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.getkeepsafe.relinker.ReLinker;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ApkLibraryInstaller.class */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {
    private static final int COPY_BUFFER_SIZE = 4096;
    private static final int MAX_TRIES = 5;

    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry.class */
    public static class ZipFileInZipEntry {
        public ZipEntry zipEntry;
        public ZipFile zipFile;

        public ZipFileInZipEntry(ZipFile zipFile, ZipEntry zipEntry) {
            this.zipFile = zipFile;
            this.zipEntry = zipEntry;
        }
    }

    private void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    private long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return c;
            }
            outputStream.write(bArr, 0, read);
            r0 = c + read;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00fc -> B:26:0x00f1). Please submit an issue!!! */
    private ZipFileInZipEntry findAPKWithLibrary(Context context, String[] strArr, String str, ReLinkerInstance reLinkerInstance) {
        ZipFile zipFile;
        String[] sourceDirectories = sourceDirectories(context);
        int length = sourceDirectories.length;
        ZipFile zipFile2 = null;
        int i = 0;
        while (true) {
            char c = 0;
            if (i < length) {
                String str2 = sourceDirectories[i];
                int i2 = 0;
                while (true) {
                    zipFile = zipFile2;
                    if (i2 >= 5) {
                        break;
                    }
                    try {
                        zipFile = new ZipFile(new File(str2), 1);
                        break;
                    } catch (IOException e) {
                        i2++;
                    }
                }
                if (zipFile != null) {
                    for (int i3 = 0; i3 < 5; i3++) {
                        int length2 = strArr.length;
                        int i4 = 0;
                        while (i4 < length2) {
                            String str3 = "lib" + File.separatorChar + strArr[i4] + File.separatorChar + str;
                            Object[] objArr = new Object[2];
                            objArr[c] = str3;
                            objArr[1] = str2;
                            reLinkerInstance.log("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry != null) {
                                return new ZipFileInZipEntry(zipFile, entry);
                            }
                            i4++;
                            c = 0;
                        }
                    }
                    try {
                        zipFile.close();
                    } catch (IOException e2) {
                    }
                }
                i++;
                zipFile2 = zipFile;
            } else {
                return null;
            }
        }
    }

    private String[] getSupportedABIs(Context context, String str) {
        Pattern compile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        String[] sourceDirectories = sourceDirectories(context);
        int length = sourceDirectories.length;
        for (int i = 0; i < length; i++) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(sourceDirectories[i]), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(entries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException e) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    private String[] sourceDirectories(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || applicationInfo.splitSourceDirs == null || applicationInfo.splitSourceDirs.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr = new String[applicationInfo.splitSourceDirs.length + 1];
        strArr[0] = applicationInfo.sourceDir;
        System.arraycopy(applicationInfo.splitSourceDirs, 0, strArr, 1, applicationInfo.splitSourceDirs.length);
        return strArr;
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    public void installLibrary(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance) {
        ZipFileInZipEntry zipFileInZipEntry;
        Throwable th;
        String[] strArr2;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        Throwable th2;
        long copy;
        try {
            ZipFileInZipEntry findAPKWithLibrary = findAPKWithLibrary(context, strArr, str, reLinkerInstance);
            try {
                if (findAPKWithLibrary == null) {
                    try {
                        strArr2 = getSupportedABIs(context, str);
                    } catch (Exception e) {
                        strArr2 = new String[]{e.toString()};
                    }
                    throw new MissingLibraryException(str, strArr, strArr2);
                }
                for (int i = 0; i < 5; i++) {
                    reLinkerInstance.log("Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = findAPKWithLibrary.zipFile.getInputStream(findAPKWithLibrary.zipEntry);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                } catch (FileNotFoundException e2) {
                                    fileOutputStream = null;
                                } catch (IOException e3) {
                                    fileOutputStream = null;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    closeable = null;
                                }
                            } catch (FileNotFoundException e4) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (IOException e5) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (Throwable th4) {
                                th2 = th4;
                                closeable = null;
                                inputStream = null;
                            }
                            try {
                                copy = copy(inputStream, fileOutputStream);
                                fileOutputStream.getFD().sync();
                            } catch (FileNotFoundException e6) {
                                closeSilently(inputStream);
                                closeSilently(fileOutputStream);
                            } catch (IOException e7) {
                                closeSilently(inputStream);
                                closeSilently(fileOutputStream);
                            } catch (Throwable th5) {
                                closeable = fileOutputStream;
                                th2 = th5;
                                closeSilently(inputStream);
                                closeSilently(closeable);
                                throw th2;
                            }
                            if (copy == file.length()) {
                                closeSilently(inputStream);
                                closeSilently(fileOutputStream);
                                file.setReadable(true, false);
                                file.setExecutable(true, false);
                                file.setWritable(true);
                                if (findAPKWithLibrary == null) {
                                    return;
                                }
                                try {
                                    if (findAPKWithLibrary.zipFile == null) {
                                        return;
                                    }
                                    findAPKWithLibrary.zipFile.close();
                                    return;
                                } catch (IOException e8) {
                                    return;
                                }
                            }
                            closeSilently(inputStream);
                            closeSilently(fileOutputStream);
                        }
                    } catch (IOException e9) {
                    }
                }
                reLinkerInstance.log("FATAL! Couldn't extract the library from the APK!");
                if (findAPKWithLibrary == null) {
                    return;
                }
                try {
                    if (findAPKWithLibrary.zipFile == null) {
                        return;
                    }
                    findAPKWithLibrary.zipFile.close();
                } catch (IOException e10) {
                }
            } catch (Throwable th6) {
                th = th6;
                zipFileInZipEntry = findAPKWithLibrary;
                if (zipFileInZipEntry != null) {
                    try {
                        if (zipFileInZipEntry.zipFile != null) {
                            zipFileInZipEntry.zipFile.close();
                        }
                    } catch (IOException e11) {
                    }
                }
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            zipFileInZipEntry = null;
        }
    }
}

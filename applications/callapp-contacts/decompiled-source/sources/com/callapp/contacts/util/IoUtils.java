package com.callapp.contacts.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.core.content.FileProvider;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.framework.util.StringUtils;
import io.objectbox.model.PropertyFlags;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
import java.util.Objects;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/IoUtils.class */
public class IoUtils {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f15889a = true;

    /* renamed from: b  reason: collision with root package name */
    private static File f15890b;

    private static long a(StatFs statFs, boolean z) {
        long j;
        long j2;
        if (z) {
            j2 = statFs.getBlockSizeLong();
            j = statFs.getAvailableBlocksLong();
        } else {
            j2 = statFs.getBlockSizeLong();
            j = statFs.getBlockCountLong();
        }
        return (j2 * j) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    public static Uri a(Context context, File file) {
        Uri uri;
        try {
            uri = FileProvider.a(context, "com.callapp.contacts.fileprovider", file);
        } catch (IllegalArgumentException e) {
            try {
                uri = Uri.fromFile(file);
            } catch (Exception e2) {
                uri = null;
            }
        }
        return uri;
    }

    public static File a(File file, String str) {
        return a(file, str, true, null);
    }

    private static File a(File file, String str, boolean z, String str2) {
        if (file == null) {
            return null;
        }
        File file2 = new File(StringUtils.b((CharSequence) null) ? d((String) null) : getCacheFolder(), str);
        if (!z || i(file2.getParentFile()) != null) {
            return j(file2);
        }
        return null;
    }

    public static File a(String str) {
        return b(str);
    }

    public static File a(String str, String str2, String str3) {
        File file;
        try {
            file = File.createTempFile(str, str2, c(str3));
        } catch (IOException e) {
            CLog.a(IoUtils.class, e);
            file = null;
        }
        return file;
    }

    public static String a(Uri uri, String str) {
        Throwable th;
        InputStream inputStream;
        String str2;
        File b2;
        InputStream inputStream2 = null;
        String str3 = null;
        if (uri.getAuthority() != null) {
            try {
                inputStream = CallAppApplication.get().getContentResolver().openInputStream(uri);
                if (inputStream != null) {
                    try {
                        try {
                            byte[] bArr = new byte[PropertyFlags.UNSIGNED];
                            b2 = b(str);
                            FileOutputStream fileOutputStream = new FileOutputStream(b2);
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileOutputStream.flush();
                            try {
                                fileOutputStream.close();
                            } catch (IOException e) {
                            }
                        } catch (IOException e2) {
                            str2 = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream2 = inputStream;
                        try {
                            inputStream2.close();
                        } catch (IOException e3) {
                        }
                        throw th;
                    }
                } else {
                    b2 = null;
                }
                str2 = b2.getPath();
            } catch (IOException e4) {
                inputStream = null;
                str2 = null;
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                inputStream.close();
                str3 = str2;
            } catch (IOException e5) {
                str3 = str2;
            }
        }
        return str3;
    }

    public static void a() {
        synchronized (IoUtils.class) {
            try {
                f15889a = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException e) {
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException | RuntimeException e) {
            }
        }
    }

    public static void a(File file) {
        if (file != null) {
            CLog.a(IoUtils.class, String.format("FILEOP deleteing file %s", file.getAbsolutePath()));
            b(file);
        }
    }

    public static void a(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "Source must not be null");
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is a directory");
        } else if (!file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                throw new IOException("Destination '" + parentFile + "' directory cannot be created");
            } else if (!file2.exists() || file2.canWrite()) {
                a(file, file2, true);
            } else {
                throw new IOException("Destination '" + file2 + "' exists but is read-only");
            }
        } else {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        FileChannel fileChannel;
        FileInputStream fileInputStream2;
        if (!file2.exists() || !file2.isDirectory()) {
            FileChannel fileChannel2 = null;
            fileChannel2 = null;
            try {
                fileInputStream2 = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    FileChannel channel = fileInputStream2.getChannel();
                    try {
                        FileChannel channel2 = fileOutputStream2.getChannel();
                        long size = channel.size();
                        long j = 0;
                        while (j < size) {
                            long j2 = size - j;
                            if (j2 > 31457280) {
                                j2 = 31457280;
                            }
                            fileChannel2 = channel2;
                            j += channel2.transferFrom(channel, j, j2);
                        }
                        a(channel2);
                        a(fileOutputStream2);
                        a(channel);
                        a(fileInputStream2);
                        if (file.length() == file2.length()) {
                            file2.setLastModified(file.lastModified());
                            return;
                        }
                        throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "'");
                    } catch (Throwable th3) {
                        th = th3;
                        fileInputStream = fileInputStream2;
                        fileOutputStream = fileOutputStream2;
                        fileChannel = channel;
                        a(fileChannel2);
                        a(fileOutputStream);
                        a(fileChannel);
                        a(fileInputStream);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileChannel = null;
                    fileInputStream = fileInputStream2;
                    fileOutputStream = fileOutputStream2;
                }
            } catch (Throwable th5) {
                th = th5;
                fileInputStream = fileInputStream2;
                fileOutputStream = null;
                fileChannel = null;
                a(fileChannel2);
                a(fileOutputStream);
                a(fileChannel);
                a(fileInputStream);
                throw th;
            }
        } else {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
    }

    public static void a(List<String> list, String str) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
        try {
            byte[] bArr = new byte[6144];
            for (String str2 : list) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str2), 6144);
                zipOutputStream.putNextEntry(new ZipEntry(str2.substring(str2.lastIndexOf("/") + 1)));
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 6144);
                    if (read != -1) {
                        zipOutputStream.write(bArr, 0, read);
                    }
                }
                bufferedInputStream.close();
            }
            zipOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    zipOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0053, code lost:
        if (r9 == 270) goto L_0x0056;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r4, android.net.Uri r5) throws java.lang.IllegalArgumentException, java.lang.SecurityException {
        /*
            android.media.MediaMetadataRetriever r0 = new android.media.MediaMetadataRetriever
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            r2 = r5
            r0.setDataSource(r1, r2)
            r0 = r6
            r1 = 18
            java.lang.String r0 = r0.extractMetadata(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            int r0 = r0.intValue()
            r7 = r0
            r0 = r6
            r1 = 19
            java.lang.String r0 = r0.extractMetadata(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            int r0 = r0.intValue()
            r8 = r0
            r0 = r6
            r1 = 24
            java.lang.String r0 = r0.extractMetadata(r1)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x003a
            r0 = 0
            r9 = r0
            goto L_0x0040
        L_0x003a:
            r0 = r4
            int r0 = java.lang.Integer.parseInt(r0)
            r9 = r0
        L_0x0040:
            r0 = r9
            r1 = 90
            if (r0 == r1) goto L_0x0056
            r0 = r7
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r9
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 != r1) goto L_0x005d
        L_0x0056:
            r0 = r7
            r11 = r0
            r0 = r8
            r10 = r0
        L_0x005d:
            r0 = r10
            r1 = r11
            if (r0 <= r1) goto L_0x0066
            r0 = 1
            return r0
        L_0x0066:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.IoUtils.a(android.content.Context, android.net.Uri):boolean");
    }

    private static File b() {
        synchronized (IoUtils.class) {
            try {
                if (!f15889a) {
                    return f15890b;
                }
                CallAppApplication application = Singletons.get().getApplication();
                File h = h(application.getExternalCacheDir());
                if (h != null) {
                    return h;
                }
                File h2 = h(application.getExternalFilesDir(null));
                if (h2 != null) {
                    return h2;
                }
                File h3 = h(application.getCacheDir());
                if (h3 != null) {
                    return h3;
                }
                File h4 = h(application.getFilesDir());
                if (h4 != null) {
                    return h4;
                }
                CLog.d(IoUtils.class, "Couldn't create cache folder");
                f15889a = false;
                return h4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static File b(String str) {
        boolean contains = str.contains(File.separator);
        File a2 = a(getCacheFolder(), str, contains, null);
        File file = a2;
        if (a2 == null) {
            a();
            file = a(getCacheFolder(), str, contains, null);
        }
        return file;
    }

    public static boolean b(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                e(file);
            }
        } catch (Exception e) {
        }
        try {
            return file.delete();
        } catch (Exception e2) {
            return false;
        }
    }

    public static File c(String str) {
        File externalStorageDirectory = getExternalStorageDirectory();
        File file = new File(externalStorageDirectory, File.separator + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void c(File file) throws IOException {
        if (file.exists()) {
            if (!g(file)) {
                e(file);
            }
            if (!file.delete()) {
                throw new IOException("Unable to delete directory " + file + ".");
            }
        }
    }

    public static float d(File file) {
        if (file == null || !file.isDirectory()) {
            return -1.0f;
        }
        return (float) a(new StatFs(file.getPath()), true);
    }

    private static File d(String str) {
        File file = new File(CallAppApplication.get().getFilesDir() + File.separator + "callapp" + File.separator + str);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    private static void e(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                IOException e = null;
                for (File file2 : listFiles) {
                    try {
                        f(file2);
                    } catch (IOException e2) {
                        e = e2;
                    }
                }
                if (e != null) {
                    throw e;
                }
                return;
            }
            throw new IOException("Failed to list contents of ".concat(String.valueOf(file)));
        } else {
            throw new IllegalArgumentException(file + " is not a directory");
        }
    }

    private static void f(File file) throws IOException {
        if (file.isDirectory()) {
            c(file);
            return;
        }
        boolean exists = file.exists();
        if (file.delete()) {
            return;
        }
        if (!exists) {
            throw new FileNotFoundException("File does not exist: ".concat(String.valueOf(file)));
        }
        throw new IOException("Unable to delete file: ".concat(String.valueOf(file)));
    }

    private static boolean g(File file) throws IOException {
        Objects.requireNonNull(file, "File must not be null");
        if (File.separatorChar == '\\') {
            return false;
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static File getCacheFolder() {
        if (f15889a) {
            f15890b = b();
        }
        return f15890b;
    }

    private static File getExternalStorageDirectory() {
        return Environment.getExternalStorageDirectory();
    }

    public static long getFreeExternalStorageSizeMB() {
        return a(new StatFs(getExternalStorageDirectory().getAbsolutePath()), true);
    }

    public static long getFreeInternalStorageSizeMB() {
        return a(new StatFs(Environment.getRootDirectory().getAbsolutePath()), true);
    }

    public static long getTotalExternalStorageSizeMB() {
        try {
            return a(new StatFs(getExternalStorageDirectory().getAbsolutePath()), false);
        } catch (IllegalArgumentException e) {
            return 0L;
        }
    }

    public static long getTotalInternalStorageSizeMB() {
        return a(new StatFs(Environment.getRootDirectory().getAbsolutePath()), false);
    }

    private static File h(File file) {
        File i;
        if (file == null || (i = i(new File(file, "cache"))) == null || j(new File(i, ".nomedia")) == null) {
            return null;
        }
        f15889a = false;
        CLog.a(IoUtils.class, "Cache folder created at %s", i);
        File file2 = f15890b;
        if (file2 != null && !file2.equals(i)) {
            AnalyticsManager.get().a("IoUtils", "CacheFolderChanged");
        }
        return i;
    }

    private static File i(File file) {
        file.mkdirs();
        File file2 = file;
        if (!file.isDirectory()) {
            AnalyticsManager.get().a("IoUtils", "NotFolder", file.getPath());
            file2 = null;
        }
        return file2;
    }

    private static File j(File file) {
        try {
            file.createNewFile();
            if (file.isFile() && file.canRead() && file.canWrite()) {
                return file;
            }
            return null;
        } catch (IOException e) {
            return null;
        }
    }
}

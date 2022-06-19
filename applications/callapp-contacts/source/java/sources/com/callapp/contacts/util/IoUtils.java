package com.callapp.contacts.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.support.p008v4.media.session.PlaybackStateCompat;
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

    /* renamed from: a */
    private static boolean f27732a = true;

    /* renamed from: b */
    private static File f27733b;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private static long m27515a(StatFs statFs, boolean z) {
        char c;
        char c2;
        if (z) {
            c2 = statFs.getBlockSizeLong();
            c = statFs.getAvailableBlocksLong();
        } else {
            c2 = statFs.getBlockSizeLong();
            c = statFs.getBlockCountLong();
        }
        return (c2 * c) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    /* renamed from: a */
    public static Uri m27518a(Context context, File file) {
        Uri uri;
        try {
            uri = FileProvider.m44509a(context, "com.callapp.contacts.fileprovider", file);
        } catch (IllegalArgumentException e) {
            try {
                uri = Uri.fromFile(file);
            } catch (Exception e2) {
                uri = null;
            }
        }
        return uri;
    }

    /* renamed from: a */
    public static File m27510a(File file, String str) {
        return m27509a(file, str, true, null);
    }

    /* renamed from: a */
    private static File m27509a(File file, String str, boolean z, String str2) {
        if (file == null) {
            return null;
        }
        File file2 = new File(StringUtils.m26045b((CharSequence) null) ? m27499d((String) null) : getCacheFolder(), str);
        if (z && m27494i(file2.getParentFile()) == null) {
            return null;
        }
        return m27493j(file2);
    }

    /* renamed from: a */
    public static File m27508a(String str) {
        return m27503b(str);
    }

    /* renamed from: a */
    public static File m27507a(String str, String str2, String str3) {
        File file;
        try {
            file = File.createTempFile(str, str2, m27501c(str3));
        } catch (IOException e) {
            CLog.m27609a(IoUtils.class, e);
            file = null;
        }
        return file;
    }

    /* renamed from: a */
    public static String m27516a(Uri uri, String str) {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        String str2;
        File m27503b;
        String str3 = null;
        if (uri.getAuthority() != null) {
            try {
                inputStream2 = CallAppApplication.get().getContentResolver().openInputStream(uri);
                if (inputStream2 != null) {
                    try {
                        try {
                            byte[] bArr = new byte[PropertyFlags.UNSIGNED];
                            m27503b = m27503b(str);
                            FileOutputStream fileOutputStream = new FileOutputStream(m27503b);
                            while (true) {
                                int read = inputStream2.read(bArr);
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
                        inputStream = inputStream2;
                        try {
                            inputStream.close();
                        } catch (IOException e3) {
                        }
                        throw th;
                    }
                } else {
                    m27503b = null;
                }
                str2 = m27503b.getPath();
            } catch (IOException e4) {
                inputStream2 = null;
                str2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
            try {
                inputStream2.close();
                str3 = str2;
            } catch (IOException e5) {
                str3 = str2;
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static void m27520a() {
        synchronized (IoUtils.class) {
            try {
                f27732a = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m27517a(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m27514a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException | RuntimeException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m27513a(File file) {
        if (file != null) {
            CLog.m27611a(IoUtils.class, String.format("FILEOP deleteing file %s", file.getAbsolutePath()));
            m27504b(file);
        }
    }

    /* renamed from: a */
    public static void m27512a(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "Source must not be null");
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        } else if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is a directory");
        } else if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        } else {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                throw new IOException("Destination '" + parentFile + "' directory cannot be created");
            } else if (!file2.exists() || file2.canWrite()) {
                m27511a(file, file2, true);
            } else {
                throw new IOException("Destination '" + file2 + "' exists but is read-only");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* renamed from: a */
    private static void m27511a(File file, File file2, boolean z) throws IOException {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        Throwable th;
        FileChannel fileChannel;
        FileInputStream fileInputStream2;
        FileInputStream fileInputStream3;
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileChannel fileChannel2 = null;
        FileChannel fileChannel3 = null;
        try {
            fileInputStream3 = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = null;
        }
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
            try {
                FileChannel channel = fileInputStream3.getChannel();
                try {
                    FileChannel channel2 = fileOutputStream2.getChannel();
                    long size = channel.size();
                    ?? r0 = 0;
                    while (true) {
                        char c = r0;
                        if (c >= size) {
                            break;
                        }
                        char c2 = size - c;
                        if (c2 > 31457280) {
                            c2 = 0;
                        }
                        fileChannel3 = channel2;
                        r0 = c + channel2.transferFrom(channel, c, c2);
                    }
                    m27514a(channel2);
                    m27514a(fileOutputStream2);
                    m27514a(channel);
                    m27514a(fileInputStream3);
                    if (file.length() == file2.length()) {
                        file2.setLastModified(file.lastModified());
                        return;
                    }
                    throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "'");
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream3;
                    fileOutputStream = fileOutputStream2;
                    fileChannel = channel;
                    fileChannel2 = fileChannel3;
                    m27514a(fileChannel2);
                    m27514a(fileOutputStream);
                    m27514a(fileChannel);
                    m27514a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                fileChannel = null;
                fileInputStream = fileInputStream3;
                fileOutputStream = fileOutputStream2;
            }
        } catch (Throwable th5) {
            th = th5;
            fileInputStream2 = fileInputStream3;
            fileOutputStream = null;
            fileChannel = null;
            fileInputStream = fileInputStream2;
            m27514a(fileChannel2);
            m27514a(fileOutputStream);
            m27514a(fileChannel);
            m27514a(fileInputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static void m27506a(List<String> list, String str) throws IOException {
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
        if (r9 == 270) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m27519a(android.content.Context r4, android.net.Uri r5) throws java.lang.IllegalArgumentException, java.lang.SecurityException {
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
            if (r0 != 0) goto L3a
            r0 = 0
            r9 = r0
            goto L40
        L3a:
            r0 = r4
            int r0 = java.lang.Integer.parseInt(r0)
            r9 = r0
        L40:
            r0 = r9
            r1 = 90
            if (r0 == r1) goto L56
            r0 = r7
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r9
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 != r1) goto L5d
        L56:
            r0 = r7
            r11 = r0
            r0 = r8
            r10 = r0
        L5d:
            r0 = r10
            r1 = r11
            if (r0 <= r1) goto L66
            r0 = 1
            return r0
        L66:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.IoUtils.m27519a(android.content.Context, android.net.Uri):boolean");
    }

    /* renamed from: b */
    private static File m27505b() {
        synchronized (IoUtils.class) {
            try {
                if (!f27732a) {
                    return f27733b;
                }
                CallAppApplication application = Singletons.get().getApplication();
                File m27495h = m27495h(application.getExternalCacheDir());
                if (m27495h != null) {
                    return m27495h;
                }
                File m27495h2 = m27495h(application.getExternalFilesDir(null));
                if (m27495h2 != null) {
                    return m27495h2;
                }
                File m27495h3 = m27495h(application.getCacheDir());
                if (m27495h3 != null) {
                    return m27495h3;
                }
                File m27495h4 = m27495h(application.getFilesDir());
                if (m27495h4 != null) {
                    return m27495h4;
                }
                CLog.m27585d(IoUtils.class, "Couldn't create cache folder");
                f27732a = false;
                return m27495h4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static File m27503b(String str) {
        boolean contains = str.contains(File.separator);
        File m27509a = m27509a(getCacheFolder(), str, contains, null);
        File file = m27509a;
        if (m27509a == null) {
            m27520a();
            file = m27509a(getCacheFolder(), str, contains, null);
        }
        return file;
    }

    /* renamed from: b */
    public static boolean m27504b(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                m27498e(file);
            }
        } catch (Exception e) {
        }
        try {
            return file.delete();
        } catch (Exception e2) {
            return false;
        }
    }

    /* renamed from: c */
    public static File m27501c(String str) {
        File externalStorageDirectory = getExternalStorageDirectory();
        File file = new File(externalStorageDirectory, File.separator + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: c */
    public static void m27502c(File file) throws IOException {
        if (!file.exists()) {
            return;
        }
        if (!m27496g(file)) {
            m27498e(file);
        }
        if (file.delete()) {
            return;
        }
        throw new IOException("Unable to delete directory " + file + ".");
    }

    /* renamed from: d */
    public static float m27500d(File file) {
        if (file == null || !file.isDirectory()) {
            return -1.0f;
        }
        return (float) m27515a(new StatFs(file.getPath()), true);
    }

    /* renamed from: d */
    private static File m27499d(String str) {
        File file = new File(CallAppApplication.get().getFilesDir() + File.separator + "callapp" + File.separator + str);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    /* renamed from: e */
    private static void m27498e(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("Failed to list contents of ".concat(String.valueOf(file)));
            }
            IOException e = null;
            for (File file2 : listFiles) {
                try {
                    m27497f(file2);
                } catch (IOException e2) {
                    e = e2;
                }
            }
            if (e != null) {
                throw e;
            }
        }
    }

    /* renamed from: f */
    private static void m27497f(File file) throws IOException {
        if (file.isDirectory()) {
            m27502c(file);
            return;
        }
        boolean exists = file.exists();
        if (file.delete()) {
            return;
        }
        if (exists) {
            throw new IOException("Unable to delete file: ".concat(String.valueOf(file)));
        }
        throw new FileNotFoundException("File does not exist: ".concat(String.valueOf(file)));
    }

    /* renamed from: g */
    private static boolean m27496g(File file) throws IOException {
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
        if (f27732a) {
            f27733b = m27505b();
        }
        return f27733b;
    }

    private static File getExternalStorageDirectory() {
        return Environment.getExternalStorageDirectory();
    }

    public static long getFreeExternalStorageSizeMB() {
        return m27515a(new StatFs(getExternalStorageDirectory().getAbsolutePath()), true);
    }

    public static long getFreeInternalStorageSizeMB() {
        return m27515a(new StatFs(Environment.getRootDirectory().getAbsolutePath()), true);
    }

    public static long getTotalExternalStorageSizeMB() {
        try {
            return m27515a(new StatFs(getExternalStorageDirectory().getAbsolutePath()), false);
        } catch (IllegalArgumentException e) {
            return 0L;
        }
    }

    public static long getTotalInternalStorageSizeMB() {
        return m27515a(new StatFs(Environment.getRootDirectory().getAbsolutePath()), false);
    }

    /* renamed from: h */
    private static File m27495h(File file) {
        File m27494i;
        if (file == null || (m27494i = m27494i(new File(file, "cache"))) == null || m27493j(new File(m27494i, ".nomedia")) == null) {
            return null;
        }
        f27732a = false;
        CLog.m27610a(IoUtils.class, "Cache folder created at %s", m27494i);
        File file2 = f27733b;
        if (file2 != null && !file2.equals(m27494i)) {
            AnalyticsManager.get().m28450a("IoUtils", "CacheFolderChanged");
        }
        return m27494i;
    }

    /* renamed from: i */
    private static File m27494i(File file) {
        file.mkdirs();
        File file2 = file;
        if (!file.isDirectory()) {
            AnalyticsManager.get().m28449a("IoUtils", "NotFolder", file.getPath());
            file2 = null;
        }
        return file2;
    }

    /* renamed from: j */
    private static File m27493j(File file) {
        try {
            file.createNewFile();
            if (!file.isFile() || !file.canRead() || !file.canWrite()) {
                return null;
            }
            return file;
        } catch (IOException e) {
            return null;
        }
    }
}

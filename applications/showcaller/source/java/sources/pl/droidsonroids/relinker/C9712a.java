package pl.droidsonroids.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import pl.droidsonroids.relinker.C9714b;
/* renamed from: pl.droidsonroids.relinker.a */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/a.class */
public class C9712a implements C9714b.AbstractC9715a {

    /* renamed from: pl.droidsonroids.relinker.a$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/a$a.class */
    public static class C9713a {

        /* renamed from: a */
        public ZipFile f40980a;

        /* renamed from: b */
        public ZipEntry f40981b;

        public C9713a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f40980a = zipFile;
            this.f40981b = zipEntry;
        }
    }

    /* renamed from: b */
    private void m36b(Closeable closeable) {
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
    /* renamed from: c */
    private long m35c(InputStream inputStream, OutputStream outputStream) {
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
    /* renamed from: d */
    private C9713a m34d(Context context, String[] strArr, String str, C9719c c9719c) {
        ZipFile zipFile;
        String[] m33e = m33e(context);
        int length = m33e.length;
        ZipFile zipFile2 = null;
        int i = 0;
        while (true) {
            char c = 0;
            if (i < length) {
                String str2 = m33e[i];
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
                            c9719c.m18i("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry != null) {
                                return new C9713a(zipFile, entry);
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

    /* renamed from: e */
    private String[] m33e(Context context) {
        String[] strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || (strArr = applicationInfo.splitSourceDirs) == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    @Override // pl.droidsonroids.relinker.C9714b.AbstractC9715a
    /* renamed from: a */
    public void mo30a(Context context, String[] strArr, String str, File file, C9719c c9719c) {
        C9713a c9713a;
        Throwable th;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        Throwable th2;
        long m35c;
        try {
            C9713a m34d = m34d(context, strArr, str, c9719c);
            try {
                if (m34d == null) {
                    throw new MissingLibraryException(str);
                }
                for (int i = 0; i < 5; i++) {
                    c9719c.m18i("Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = m34d.f40980a.getInputStream(m34d.f40981b);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                } catch (FileNotFoundException e) {
                                    fileOutputStream = null;
                                } catch (IOException e2) {
                                    fileOutputStream = null;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    closeable = null;
                                }
                            } catch (FileNotFoundException e3) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (IOException e4) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (Throwable th4) {
                                th2 = th4;
                                closeable = null;
                                inputStream = null;
                            }
                            try {
                                m35c = m35c(inputStream, fileOutputStream);
                                fileOutputStream.getFD().sync();
                            } catch (FileNotFoundException e5) {
                                m36b(inputStream);
                                m36b(fileOutputStream);
                            } catch (IOException e6) {
                                m36b(inputStream);
                                m36b(fileOutputStream);
                            } catch (Throwable th5) {
                                closeable = fileOutputStream;
                                th2 = th5;
                                m36b(inputStream);
                                m36b(closeable);
                                throw th2;
                            }
                            if (m35c == file.length()) {
                                m36b(inputStream);
                                m36b(fileOutputStream);
                                file.setReadable(true, false);
                                file.setExecutable(true, false);
                                file.setWritable(true);
                                try {
                                    ZipFile zipFile = m34d.f40980a;
                                    if (zipFile == null) {
                                        return;
                                    }
                                    zipFile.close();
                                    return;
                                } catch (IOException e7) {
                                    return;
                                }
                            }
                            m36b(inputStream);
                            m36b(fileOutputStream);
                        }
                    } catch (IOException e8) {
                    }
                }
                c9719c.m19h("FATAL! Couldn't extract the library from the APK!");
                try {
                    ZipFile zipFile2 = m34d.f40980a;
                    if (zipFile2 == null) {
                        return;
                    }
                    zipFile2.close();
                } catch (IOException e9) {
                }
            } catch (Throwable th6) {
                th = th6;
                c9713a = m34d;
                if (c9713a != null) {
                    try {
                        ZipFile zipFile3 = c9713a.f40980a;
                        if (zipFile3 != null) {
                            zipFile3.close();
                        }
                    } catch (IOException e10) {
                    }
                }
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            c9713a = null;
        }
    }
}

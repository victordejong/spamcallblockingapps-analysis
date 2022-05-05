package p081h.p157g.p158a;

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
import p081h.p157g.p158a.C6160c;
/* renamed from: h.g.a.a */
/* loaded from: classes2-dex2jar.jar:h/g/a/a.class */
public class C6157a implements C6160c.AbstractC6161a {

    /* renamed from: h.g.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/g/a/a$a.class */
    public static class C6158a {

        /* renamed from: a */
        public ZipFile f15316a;

        /* renamed from: b */
        public ZipEntry f15317b;

        public C6158a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f15316a = zipFile;
            this.f15317b = zipEntry;
        }
    }

    /* renamed from: a */
    public final long m23668a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    /* renamed from: a */
    public final C6158a m23670a(Context context, String[] strArr, String str, C6165d dVar) {
        String[] a = m23671a(context);
        int length = a.length;
        ZipFile zipFile = null;
        int i = 0;
        while (true) {
            char c = 0;
            if (i >= length) {
                return null;
            }
            String str2 = a[i];
            for (int i2 = 0; i2 < 5; i2++) {
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException e) {
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
                        dVar.m23656a("Looking for %s in APK %s...", objArr);
                        ZipEntry entry = zipFile.getEntry(str3);
                        if (entry != null) {
                            return new C6158a(zipFile, entry);
                        }
                        i4++;
                        c = 0;
                    }
                }
                continue;
            }
            i++;
            zipFile = zipFile;
        }
    }

    @Override // p081h.p157g.p158a.C6160c.AbstractC6161a
    /* renamed from: a */
    public void mo23665a(Context context, String[] strArr, String str, File file, C6165d dVar) {
        C6158a aVar;
        Throwable th;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        Throwable th2;
        long a;
        try {
            C6158a a2 = m23670a(context, strArr, str, dVar);
            try {
                if (a2 != null) {
                    for (int i = 0; i < 5; i++) {
                        dVar.m23656a("Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = a2.f15316a.getInputStream(a2.f15317b);
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
                                    inputStream = null;
                                    closeable = null;
                                }
                                try {
                                    a = m23668a(inputStream, fileOutputStream);
                                    fileOutputStream.getFD().sync();
                                } catch (FileNotFoundException e5) {
                                    m23669a(inputStream);
                                    m23669a(fileOutputStream);
                                } catch (IOException e6) {
                                    m23669a(inputStream);
                                    m23669a(fileOutputStream);
                                } catch (Throwable th5) {
                                    th2 = th5;
                                    closeable = fileOutputStream;
                                    m23669a(inputStream);
                                    m23669a(closeable);
                                    throw th2;
                                }
                                if (a != file.length()) {
                                    m23669a(inputStream);
                                    m23669a(fileOutputStream);
                                } else {
                                    m23669a(inputStream);
                                    m23669a(fileOutputStream);
                                    file.setReadable(true, false);
                                    file.setExecutable(true, false);
                                    file.setWritable(true);
                                    if (a2 != null) {
                                        try {
                                            if (a2.f15316a != null) {
                                                a2.f15316a.close();
                                                return;
                                            }
                                            return;
                                        } catch (IOException e7) {
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            }
                        } catch (IOException e8) {
                        }
                    }
                    dVar.m23657a("FATAL! Couldn't extract the library from the APK!");
                    if (a2 != null) {
                        try {
                            if (a2.f15316a != null) {
                                a2.f15316a.close();
                            }
                        } catch (IOException e9) {
                        }
                    }
                } else {
                    throw new C6159b(str);
                }
            } catch (Throwable th6) {
                th = th6;
                aVar = a2;
                if (aVar != null) {
                    try {
                        if (aVar.f15316a != null) {
                            aVar.f15316a.close();
                        }
                    } catch (IOException e10) {
                    }
                }
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            aVar = null;
        }
    }

    /* renamed from: a */
    public final void m23669a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public final String[] m23671a(Context context) {
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
}

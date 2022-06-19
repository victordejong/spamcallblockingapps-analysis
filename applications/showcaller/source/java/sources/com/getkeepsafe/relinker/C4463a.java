package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.getkeepsafe.relinker.C4465b;
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
/* renamed from: com.getkeepsafe.relinker.a */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/a.class */
public class C4463a implements C4465b.AbstractC4466a {

    /* renamed from: com.getkeepsafe.relinker.a$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/a$a.class */
    public static class C4464a {

        /* renamed from: a */
        public ZipFile f13598a;

        /* renamed from: b */
        public ZipEntry f13599b;

        public C4464a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f13598a = zipFile;
            this.f13599b = zipEntry;
        }
    }

    /* renamed from: b */
    private void m22418b(Closeable closeable) {
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
    private long m22417c(InputStream inputStream, OutputStream outputStream) {
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

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00ec -> B:26:0x00e4). Please submit an issue!!! */
    /* renamed from: d */
    private C4464a m22416d(Context context, String[] strArr, String str, C4470c c4470c) {
        String[] m22414f;
        ZipFile zipFile;
        for (String str2 : m22414f(context)) {
            int i = 0;
            while (true) {
                zipFile = null;
                if (i >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException e) {
                    i++;
                }
            }
            if (zipFile != null) {
                for (int i2 = 0; i2 < 5; i2++) {
                    for (String str3 : strArr) {
                        String str4 = "lib" + File.separatorChar + str3 + File.separatorChar + str;
                        c4470c.m22399i("Looking for %s in APK %s...", str4, str2);
                        ZipEntry entry = zipFile.getEntry(str4);
                        if (entry != null) {
                            return new C4464a(zipFile, entry);
                        }
                    }
                }
                try {
                    zipFile.close();
                } catch (IOException e2) {
                }
            }
        }
        return null;
    }

    /* renamed from: e */
    private String[] m22415e(Context context, String str) {
        Pattern compile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        String[] m22414f = m22414f(context);
        int length = m22414f.length;
        for (int i = 0; i < length; i++) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(m22414f[i]), 1).entries();
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

    /* renamed from: f */
    private String[] m22414f(Context context) {
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

    @Override // com.getkeepsafe.relinker.C4465b.AbstractC4466a
    /* renamed from: a */
    public void mo22411a(Context context, String[] strArr, String str, File file, C4470c c4470c) {
        C4464a c4464a;
        Throwable th;
        String[] strArr2;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        Throwable th2;
        long m22417c;
        try {
            C4464a m22416d = m22416d(context, strArr, str, c4470c);
            try {
                if (m22416d == null) {
                    try {
                        strArr2 = m22415e(context, str);
                    } catch (Exception e) {
                        strArr2 = new String[]{e.toString()};
                    }
                    throw new MissingLibraryException(str, strArr, strArr2);
                }
                for (int i = 0; i < 5; i++) {
                    c4470c.m22399i("Found %s! Extracting...", str);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = m22416d.f13598a.getInputStream(m22416d.f13599b);
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
                                m22417c = m22417c(inputStream, fileOutputStream);
                                fileOutputStream.getFD().sync();
                            } catch (FileNotFoundException e6) {
                                m22418b(inputStream);
                                m22418b(fileOutputStream);
                            } catch (IOException e7) {
                                m22418b(inputStream);
                                m22418b(fileOutputStream);
                            } catch (Throwable th5) {
                                closeable = fileOutputStream;
                                th2 = th5;
                                m22418b(inputStream);
                                m22418b(closeable);
                                throw th2;
                            }
                            if (m22417c == file.length()) {
                                m22418b(inputStream);
                                m22418b(fileOutputStream);
                                file.setReadable(true, false);
                                file.setExecutable(true, false);
                                file.setWritable(true);
                                try {
                                    ZipFile zipFile = m22416d.f13598a;
                                    if (zipFile == null) {
                                        return;
                                    }
                                    zipFile.close();
                                    return;
                                } catch (IOException e8) {
                                    return;
                                }
                            }
                            m22418b(inputStream);
                            m22418b(fileOutputStream);
                        }
                    } catch (IOException e9) {
                    }
                }
                c4470c.m22400h("FATAL! Couldn't extract the library from the APK!");
                try {
                    ZipFile zipFile2 = m22416d.f13598a;
                    if (zipFile2 == null) {
                        return;
                    }
                    zipFile2.close();
                } catch (IOException e10) {
                }
            } catch (Throwable th6) {
                th = th6;
                c4464a = m22416d;
                if (c4464a != null) {
                    try {
                        ZipFile zipFile3 = c4464a.f13598a;
                        if (zipFile3 != null) {
                            zipFile3.close();
                        }
                    } catch (IOException e11) {
                    }
                }
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            c4464a = null;
        }
    }
}

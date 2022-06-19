package com.bytedance.sdk.openadsdk.p176k.p183g;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.openadsdk.k.g.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/a.class */
public class C5027a {

    /* renamed from: a */
    static Context f18212a;

    @Deprecated
    /* renamed from: a */
    public static File m33258a() {
        return m33248b(f18212a);
    }

    /* renamed from: a */
    public static File m33253a(File file, String str) {
        if (!m33247c() || !m33246d() || TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = file;
        if (file == null) {
            file2 = m33258a();
        }
        File file3 = new File(file2, str);
        m33254a(file3);
        return file3;
    }

    /* renamed from: a */
    public static String m33252a(InputStream inputStream) {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            StringBuilder sb = new StringBuilder();
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        C5478q.m32117a("FileHelper", "readStream error", th);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                C5478q.m32117a("FileHelper", "br error", th3);
                            }
                        }
                        if (inputStream == null) {
                            return null;
                        }
                        try {
                            inputStream.close();
                            return null;
                        } catch (Throwable th4) {
                            C5478q.m32117a("FileHelper", "is error", th4);
                            return null;
                        }
                    } catch (Throwable th5) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th6) {
                                C5478q.m32117a("FileHelper", "br error", th6);
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th7) {
                                C5478q.m32117a("FileHelper", "is error", th7);
                            }
                        }
                        throw th5;
                    }
                }
            }
            String sb2 = sb.toString();
            try {
                bufferedReader.close();
            } catch (Throwable th8) {
                C5478q.m32117a("FileHelper", "br error", th8);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th9) {
                    C5478q.m32117a("FileHelper", "is error", th9);
                }
            }
            return sb2;
        } catch (Throwable th10) {
            th = th10;
            bufferedReader = null;
        }
    }

    /* renamed from: a */
    public static void m33257a(Context context) {
        Objects.requireNonNull(context);
        f18212a = context;
    }

    /* renamed from: a */
    public static void m33254a(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    /* renamed from: b */
    public static File m33249b() {
        if (!m33247c() || !m33246d()) {
            return null;
        }
        File file = new File(m33258a(), "video");
        m33254a(file);
        return file;
    }

    /* renamed from: b */
    public static File m33248b(Context context) {
        return context.getCacheDir();
    }

    /* renamed from: c */
    public static boolean m33247c() {
        boolean z;
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception e) {
            z = C5029c.m33238a().m33236b();
        }
        if (!"mounted".equals(externalStorageState)) {
            if (!"mounted_ro".equals(externalStorageState)) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: d */
    public static boolean m33246d() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Exception e) {
            return false;
        }
    }
}

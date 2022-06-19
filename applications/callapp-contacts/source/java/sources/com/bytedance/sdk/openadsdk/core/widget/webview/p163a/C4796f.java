package com.bytedance.sdk.openadsdk.core.widget.webview.p163a;

import android.text.TextUtils;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.bytedance.sdk.openadsdk.core.p154e.C4561l;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/f.class */
public class C4796f {

    /* renamed from: a */
    private static C4561l f17625a;

    /* renamed from: a */
    public static C4561l.C4562a m33927a(String str) {
        if (!TextUtils.isEmpty(str) && m33926b() != null && m33926b().m35093d() != null && m33926b().m35091e()) {
            for (C4561l.C4562a c4562a : m33926b().m35093d()) {
                if (c4562a.m35089a() != null && c4562a.m35089a().equals(str)) {
                    return c4562a;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m33929a() {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            File file = new File(C4788b.m33963f(), "temp_pkg_info.json");
            Long valueOf = Long.valueOf(file.length());
            if (valueOf.longValue() <= 0 || !file.exists() || !file.isFile()) {
                C5478q.m32112b(JsonDocumentFields.VERSION, "version pkg json file does not exist");
            } else {
                byte[] bArr = new byte[valueOf.intValue()];
                fileInputStream = new FileInputStream(file);
                try {
                    fileInputStream.read(bArr);
                    C4561l m35098a = C4561l.m35098a(new JSONObject(new String(bArr, "utf-8")));
                    if (m35098a != null) {
                        f17625a = m35098a;
                        C5478q.m32112b(JsonDocumentFields.VERSION, "old version read success: " + f17625a.m35097b());
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        C5478q.m32108c(JsonDocumentFields.VERSION, "version init error", th);
                        if (fileInputStream == null) {
                            return;
                        }
                        try {
                            fileInputStream.close();
                            return;
                        } catch (IOException e) {
                            return;
                        }
                    } catch (Throwable th3) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                            }
                        }
                        throw th3;
                    }
                }
            }
            if (fileInputStream == null) {
                return;
            }
            try {
                fileInputStream.close();
            } catch (IOException e3) {
            }
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }

    /* renamed from: a */
    public static void m33928a(C4561l c4561l) {
        synchronized (C4796f.class) {
            if (c4561l != null) {
                try {
                    if (c4561l.m35091e()) {
                        f17625a = c4561l;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public static C4561l m33926b() {
        C4561l c4561l;
        synchronized (C4796f.class) {
            try {
                c4561l = f17625a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4561l;
    }

    /* renamed from: b */
    public static boolean m33925b(String str) {
        try {
            if (m33926b() != null && !TextUtils.isEmpty(m33926b().m35097b())) {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                String m35097b = m33926b().m35097b();
                String[] split = str.split("\\.");
                String[] split2 = m35097b.split("\\.");
                int min = Math.min(split.length, split2.length);
                for (int i = 0; i < min; i++) {
                    int length = split[i].length() - split2[i].length();
                    if (length != 0) {
                        return length > 0;
                    }
                    int compareTo = split[i].compareTo(split2[i]);
                    if (compareTo > 0) {
                        return true;
                    }
                    if (compareTo < 0) {
                        return false;
                    }
                    if (i == min - 1) {
                        return split.length > split2.length;
                    }
                }
                return false;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: c */
    public static void m33924c() {
        Throwable th;
        FileOutputStream fileOutputStream;
        C4561l c4561l = f17625a;
        if (c4561l == null) {
            C5478q.m32112b(JsonDocumentFields.VERSION, "version save error1");
            return;
        }
        String m35090f = c4561l.m35090f();
        if (TextUtils.isEmpty(m35090f)) {
            C5478q.m32112b(JsonDocumentFields.VERSION, "version save error2");
            return;
        }
        File file = new File(C4788b.m33963f(), "temp_pkg_info.json");
        File file2 = new File(file + ".tmp");
        if (file2.exists()) {
            file2.delete();
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file2);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(m35090f.getBytes("utf-8"));
            if (file.exists()) {
                file.delete();
            }
            file2.renameTo(file);
            try {
                fileOutputStream.close();
            } catch (IOException e) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            try {
                C5478q.m32108c(JsonDocumentFields.VERSION, "version save error3", th);
                if (fileOutputStream2 == null) {
                    return;
                }
                try {
                    fileOutputStream2.close();
                } catch (IOException e2) {
                }
            } catch (Throwable th4) {
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e3) {
                    }
                }
                throw th4;
            }
        }
    }

    /* renamed from: d */
    public static void m33923d() {
        C4561l m33926b = m33926b();
        if (m33926b == null) {
            return;
        }
        File m33963f = C4788b.m33963f();
        try {
            new File(m33963f, "temp_pkg_info.json").delete();
        } catch (Throwable th) {
        }
        if (m33926b.m35093d() != null) {
            for (C4561l.C4562a c4562a : m33926b.m35093d()) {
                try {
                    new File(m33963f, C5465i.m32148a(c4562a.m35089a())).delete();
                } catch (Throwable th2) {
                }
            }
        }
        f17625a = null;
    }
}

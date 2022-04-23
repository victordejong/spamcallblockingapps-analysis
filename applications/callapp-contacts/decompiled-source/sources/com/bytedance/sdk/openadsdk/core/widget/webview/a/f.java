package com.bytedance.sdk.openadsdk.core.widget.webview.a;

import android.text.TextUtils;
import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.bytedance.sdk.openadsdk.core.e.l;
import com.bytedance.sdk.openadsdk.utils.i;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static l f9373a;

    public static l.a a(String str) {
        if (TextUtils.isEmpty(str) || b() == null || b().d() == null || !b().e()) {
            return null;
        }
        for (l.a aVar : b().d()) {
            if (aVar.a() != null && aVar.a().equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    public static void a() {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            File file = new File(b.f(), "temp_pkg_info.json");
            Long valueOf = Long.valueOf(file.length());
            if (valueOf.longValue() <= 0 || !file.exists() || !file.isFile()) {
                q.b(JsonDocumentFields.VERSION, "version pkg json file does not exist");
            } else {
                byte[] bArr = new byte[valueOf.intValue()];
                fileInputStream = new FileInputStream(file);
                try {
                    fileInputStream.read(bArr);
                    l a2 = l.a(new JSONObject(new String(bArr, "utf-8")));
                    if (a2 != null) {
                        f9373a = a2;
                        q.b(JsonDocumentFields.VERSION, "old version read success: " + f9373a.b());
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        q.c(JsonDocumentFields.VERSION, "version init error", th);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                                return;
                            } catch (IOException e) {
                                return;
                            }
                        } else {
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
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                }
            }
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }

    public static void a(l lVar) {
        synchronized (f.class) {
            if (lVar != null) {
                try {
                    if (lVar.e()) {
                        f9373a = lVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static l b() {
        l lVar;
        synchronized (f.class) {
            try {
                lVar = f9373a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    public static boolean b(String str) {
        try {
            if (b() != null && !TextUtils.isEmpty(b().b())) {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                String b2 = b().b();
                String[] split = str.split("\\.");
                String[] split2 = b2.split("\\.");
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

    public static void c() {
        Throwable th;
        FileOutputStream fileOutputStream;
        l lVar = f9373a;
        if (lVar == null) {
            q.b(JsonDocumentFields.VERSION, "version save error1");
            return;
        }
        String f = lVar.f();
        if (TextUtils.isEmpty(f)) {
            q.b(JsonDocumentFields.VERSION, "version save error2");
            return;
        }
        File file = new File(b.f(), "temp_pkg_info.json");
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
            fileOutputStream.write(f.getBytes("utf-8"));
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
                q.c(JsonDocumentFields.VERSION, "version save error3", th);
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e2) {
                    }
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

    public static void d() {
        l b2 = b();
        if (b2 != null) {
            File f = b.f();
            try {
                new File(f, "temp_pkg_info.json").delete();
            } catch (Throwable th) {
            }
            if (b2.d() != null) {
                for (l.a aVar : b2.d()) {
                    try {
                        new File(f, i.a(aVar.a())).delete();
                    } catch (Throwable th2) {
                    }
                }
            }
            f9373a = null;
        }
    }
}

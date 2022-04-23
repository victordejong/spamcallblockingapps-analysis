package com.bytedance.sdk.openadsdk.k.g;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/g/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static Context f9763a;

    @Deprecated
    public static File a() {
        return b(f9763a);
    }

    public static File a(File file, String str) {
        if (!c() || !d() || TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = file;
        if (file == null) {
            file2 = a();
        }
        File file3 = new File(file2, str);
        a(file3);
        return file3;
    }

    public static String a(InputStream inputStream) {
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
                        q.a("FileHelper", "readStream error", th);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                q.a("FileHelper", "br error", th3);
                            }
                        }
                        if (inputStream == null) {
                            return null;
                        }
                        try {
                            inputStream.close();
                            return null;
                        } catch (Throwable th4) {
                            q.a("FileHelper", "is error", th4);
                            return null;
                        }
                    } catch (Throwable th5) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th6) {
                                q.a("FileHelper", "br error", th6);
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th7) {
                                q.a("FileHelper", "is error", th7);
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
                q.a("FileHelper", "br error", th8);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th9) {
                    q.a("FileHelper", "is error", th9);
                }
            }
            return sb2;
        } catch (Throwable th10) {
            th = th10;
            bufferedReader = null;
        }
    }

    public static void a(Context context) {
        Objects.requireNonNull(context);
        f9763a = context;
    }

    public static void a(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static File b() {
        if (!c() || !d()) {
            return null;
        }
        File file = new File(a(), "video");
        a(file);
        return file;
    }

    public static File b(Context context) {
        return context.getCacheDir();
    }

    public static boolean c() {
        boolean z;
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (Exception e) {
            z = c.a().b();
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

    public static boolean d() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Exception e) {
            return false;
        }
    }
}

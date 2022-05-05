package p081h.p160h.p178d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.util.Log;
import java.io.File;
/* renamed from: h.h.d.a */
/* loaded from: classes2-dex2jar.jar:h/h/d/a.class */
public class C6333a {

    /* renamed from: a */
    public static String f15730a = "a";

    /* renamed from: a */
    public static int m23273a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public static void m23274a(Context context) {
        File externalFilesDir;
        String[] list;
        String[] list2;
        if (Environment.getExternalStorageState().equals("mounted")) {
            File file = new File(context.getExternalCacheDir().getParent());
            if (file.exists()) {
                for (String str : file.list()) {
                    if (!str.equals("lib")) {
                        m23272a(new File(file, str));
                    }
                }
            }
        }
        File file2 = new File(context.getCacheDir().getParent());
        if (file2.exists()) {
            for (String str2 : file2.list()) {
                if (!str2.equals("lib")) {
                    m23272a(new File(file2, str2));
                }
            }
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            String str3 = null;
            try {
                str3 = context.getExternalFilesDir(null) != null ? externalFilesDir.getPath() + "/db/" : "";
            } catch (Exception e) {
                Log.e(f15730a, "Fail get external directory path, exception message: " + e.getMessage());
            }
            if (str3 != null) {
                File file3 = new File(str3);
                if (file3.exists()) {
                    for (String str4 : file3.list()) {
                        m23272a(new File(file3, str4));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m23272a(File file) {
        String[] list;
        boolean z = false;
        if (!(file == null || !file.isDirectory() || (list = file.list()) == null)) {
            for (String str : list) {
                if (!m23272a(new File(file, str))) {
                    return false;
                }
            }
        }
        if (file == null || !file.exists() || file.delete()) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static String m23271b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }
}

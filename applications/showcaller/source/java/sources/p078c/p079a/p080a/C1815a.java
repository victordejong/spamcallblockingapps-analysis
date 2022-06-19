package p078c.p079a.p080a;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
/* renamed from: c.a.a.a */
/* loaded from: classes-dex2jar.jar:c/a/a/a.class */
public class C1815a {

    /* renamed from: a */
    private static final String f6740a = "a";

    /* renamed from: a */
    public static void m28815a(Context context, String str, File file, String str2) {
        m28814b(file, context.getAssets().open(str), str2);
    }

    /* renamed from: b */
    private static void m28814b(File file, InputStream inputStream, String str) {
        String absolutePath = file.getAbsolutePath();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                fileOutputStream.close();
                inputStream.close();
                Runtime runtime = Runtime.getRuntime();
                runtime.exec("chmod " + str + " " + absolutePath).waitFor();
                return;
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: c */
    public static boolean m28813c(Context context, String str, String str2) {
        String str3 = Build.CPU_ABI;
        String str4 = "armeabi-v7a";
        if (!str3.startsWith("armeabi-v7a")) {
            str4 = str3.startsWith("x86") ? "x86" : "armeabi";
        }
        String str5 = str4 + File.separator + str2;
        try {
            File file = new File(context.getDir(str, 0), str2);
            if (file.exists()) {
                Log.d(f6740a, "binary has existed");
                return false;
            }
            m28815a(context, str5, file, "0755");
            return true;
        } catch (Exception e) {
            Log.e(f6740a, "installBinary failed: " + e.getMessage());
            return false;
        }
    }
}

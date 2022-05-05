package com.asus.themesdk;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/asus/themesdk/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final FilenameFilter f3101a = new a(".apk");
    private static final String e = Environment.getExternalStorageDirectory() + "/.AsusTheme/";

    /* renamed from: b  reason: collision with root package name */
    public static final String f3102b = e + "themes";
    public static final String c = Environment.getExternalStorageDirectory() + "/Android/data/com.asus.themeapp/files/wallpaper_channel";
    public static final String d = e + "diy";

    /* loaded from: classes-dex2jar.jar:com/asus/themesdk/b$a.class */
    public static final class a implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        private String f3103a;

        public a(String str) {
            this.f3103a = str;
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return !TextUtils.isEmpty(str) && str.endsWith(this.f3103a);
        }
    }

    public static String a(Context context, String str) {
        return context.getFilesDir() + "/themes/" + str;
    }

    public static String a(InputStream inputStream, String str) {
        Throwable th;
        FileOutputStream fileOutputStream;
        String str2;
        File file;
        File parentFile;
        FileOutputStream fileOutputStream2 = null;
        try {
            file = new File(str);
            parentFile = new File(file.getAbsolutePath()).getParentFile();
        } catch (IOException e2) {
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        if (parentFile.exists() || parentFile.mkdirs()) {
            FileOutputStream fileOutputStream3 = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream3.write(bArr, 0, read);
                }
                fileOutputStream3.flush();
                fileOutputStream3.close();
                str2 = file.getAbsolutePath();
                a(fileOutputStream3);
            } catch (IOException e3) {
                fileOutputStream2 = fileOutputStream3;
                a(fileOutputStream2);
                str2 = BuildConfig.FLAVOR;
                return str2;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = fileOutputStream3;
                a(fileOutputStream);
                throw th;
            }
            return str2;
        }
        a((Closeable) null);
        str2 = BuildConfig.FLAVOR;
        return str2;
    }

    public static String a(String str) {
        return f3102b + "/" + str + ".zip";
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }
}

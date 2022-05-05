package p459j.p460a.p474c0.p499h;

import android.webkit.MimeTypeMap;
import gogolook.callgogolook2.R$string;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.y */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/y.class */
public class C12241y {
    /* renamed from: a */
    public static File m6566a(File file, String str) throws IOException {
        return m6565a(file, MimeTypeMap.getSingleton().getExtensionFromMimeType(str), AbstractC11516a.m9413n().mo9412a().getString(C12205r.m6809d(str) ? R$string.new_image_file_name_format : R$string.new_file_name_format));
    }

    /* renamed from: a */
    public static File m6565a(File file, String str, String str2) throws IOException {
        synchronized (C12241y.class) {
            try {
                Date date = new Date(System.currentTimeMillis());
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
                String str3 = simpleDateFormat.format(date) + "_%02d." + str;
                for (int i = 1; i <= 99; i++) {
                    File file2 = new File(file, String.format(Locale.US, str3, Integer.valueOf(i)));
                    if (!file2.exists()) {
                        file2.createNewFile();
                        return file2;
                    }
                }
                C12153d0.m6987b("MessagingApp", "Too many duplicate file names: " + str3);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

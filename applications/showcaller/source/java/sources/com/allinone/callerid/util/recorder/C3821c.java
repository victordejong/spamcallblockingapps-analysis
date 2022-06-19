package com.allinone.callerid.util.recorder;

import android.text.TextUtils;
import com.allinone.callerid.main.EZCallApplication;
import java.io.File;
/* renamed from: com.allinone.callerid.util.recorder.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/recorder/c.class */
public class C3821c {

    /* renamed from: a */
    public static final String f12102a;

    /* renamed from: b */
    private static final String f12103b;

    /* renamed from: c */
    private static final String f12104c;

    static {
        String str = EZCallApplication.m26146c().getExternalFilesDir("") + "/ShowCallRecording/";
        f12102a = str;
        f12103b = str + "pcm/";
        f12104c = str + "pcmagcns/";
    }

    /* renamed from: a */
    public static File m24011a() {
        String str = f12102a;
        File file = new File(str);
        File file2 = file;
        if (!file.exists()) {
            file2 = file.mkdirs() ? file : new File(str);
        }
        return file2;
    }

    /* renamed from: b */
    public static String m24010b(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = str;
            if (!str.endsWith(".pcm")) {
                str2 = str + ".pcm";
            }
            String str3 = f12104c;
            File file = new File(str3);
            if (!file.exists()) {
                file.mkdirs();
            }
            return str3 + str2;
        }
        throw new NullPointerException("fileName isEmpty");
    }

    /* renamed from: c */
    public static String m24009c(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = str;
            if (!str.endsWith(".pcm")) {
                str2 = str + ".pcm";
            }
            String str3 = f12103b;
            File file = new File(str3);
            if (!file.exists()) {
                file.mkdirs();
            }
            return str3 + str2;
        }
        throw new NullPointerException("fileName isEmpty");
    }

    /* renamed from: d */
    public static void m24008d() {
        try {
            String str = f12103b;
            String str2 = f12104c;
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            File file2 = new File(str2);
            if (!file2.exists()) {
                return;
            }
            file2.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

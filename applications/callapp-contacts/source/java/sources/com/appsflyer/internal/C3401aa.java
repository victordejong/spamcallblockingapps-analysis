package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appsflyer.internal.aa */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa.class */
public final class C3401aa {

    /* renamed from: ι */
    private static C3401aa f12851 = new C3401aa();

    private C3401aa() {
    }

    /* renamed from: ı */
    public static C3401aa m38038() {
        return f12851;
    }

    /* renamed from: ǃ */
    public static File m38037(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }

    /* renamed from: ɩ */
    public static C3426i m38036(File file) {
        FileReader fileReader;
        Throwable th;
        try {
            fileReader = new FileReader(file);
            try {
                char[] cArr = new char[(int) file.length()];
                fileReader.read(cArr);
                C3426i c3426i = new C3426i(cArr);
                c3426i.f12967 = file.getName();
                try {
                    fileReader.close();
                } catch (IOException e) {
                    AFLogger.afErrorLog(e);
                }
                return c3426i;
            } catch (Exception e2) {
                if (fileReader == null) {
                    return null;
                }
                try {
                    fileReader.close();
                    return null;
                } catch (IOException e3) {
                    AFLogger.afErrorLog(e3);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e4) {
                        AFLogger.afErrorLog(e4);
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
    }

    /* renamed from: ɩ */
    public static void m38035(String str, Context context) {
        File file = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
        StringBuilder sb = new StringBuilder("Deleting ");
        sb.append(str);
        sb.append(" from cache");
        AFLogger.afInfoLog(sb.toString());
        if (file.exists()) {
            try {
                file.delete();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder("Could not delete ");
                sb2.append(str);
                sb2.append(" from cache");
                AFLogger.afErrorLog(sb2.toString(), e);
            }
        }
    }

    /* renamed from: Ι */
    public static List<C3426i> m38034(Context context) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(context.getFilesDir(), "AFRequestCache");
            if (!file.exists()) {
                file.mkdir();
            } else {
                for (File file2 : file.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file2.getName());
                    AFLogger.afInfoLog(sb.toString());
                    arrayList.add(m38036(file2));
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLog("Could not cache request", e);
        }
        return arrayList;
    }
}

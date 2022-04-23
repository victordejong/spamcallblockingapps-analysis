package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa.class */
public final class aa {

    /* renamed from: ι  reason: contains not printable characters */
    private static aa f175 = new aa();

    private aa() {
    }

    /* renamed from: ı  reason: contains not printable characters */
    public static aa m921() {
        return f175;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public static File m922(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    public static i m923(File file) {
        Throwable th;
        FileReader fileReader = null;
        try {
            fileReader = new FileReader(file);
            try {
                char[] cArr = new char[(int) file.length()];
                fileReader.read(cArr);
                i iVar = new i(cArr);
                iVar.f291 = file.getName();
                try {
                    fileReader.close();
                } catch (IOException e) {
                    AFLogger.afErrorLog(e);
                }
                return iVar;
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
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    public static void m924(String str, Context context) {
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

    /* renamed from: Ι  reason: contains not printable characters */
    public static List<i> m925(Context context) {
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
                    arrayList.add(m923(file2));
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLog("Could not cache request", e);
        }
        return arrayList;
    }
}

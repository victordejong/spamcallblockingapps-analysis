package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appsflyer.internal.af */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/af.class */
public final class C0717af {
    private static C0717af valueOf = new C0717af();

    private C0717af() {
    }

    public static void AFKeystoreWrapper(String str, Context context) {
        File file = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
        StringBuilder sb = new StringBuilder("Deleting ");
        sb.append(str);
        sb.append(" from cache");
        AFLogger.valueOf(sb.toString());
        if (file.exists()) {
            try {
                file.delete();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder("Could not delete ");
                sb2.append(str);
                sb2.append(" from cache");
                AFLogger.valueOf(sb2.toString(), e);
            }
        }
    }

    public static C0813f valueOf(File file) {
        FileReader fileReader;
        Throwable th;
        try {
            fileReader = new FileReader(file);
            try {
                char[] cArr = new char[(int) file.length()];
                fileReader.read(cArr);
                C0813f c0813f = new C0813f(cArr);
                c0813f.AFKeystoreWrapper = file.getName();
                try {
                    fileReader.close();
                } catch (IOException e) {
                    AFLogger.valueOf(e);
                }
                return c0813f;
            } catch (Exception e2) {
                if (fileReader == null) {
                    return null;
                }
                try {
                    fileReader.close();
                    return null;
                } catch (IOException e3) {
                    AFLogger.valueOf(e3);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e4) {
                        AFLogger.valueOf(e4);
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

    public static List<C0813f> valueOf(Context context) {
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
                    AFLogger.valueOf(sb.toString());
                    arrayList.add(valueOf(file2));
                }
            }
        } catch (Exception e) {
            AFLogger.valueOf("Could not cache request", e);
        }
        return arrayList;
    }

    public static C0717af values() {
        return valueOf;
    }

    public static File values(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }
}

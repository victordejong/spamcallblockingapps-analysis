package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1293l;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.h */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/h.class */
public class C1248h {

    /* renamed from: a */
    private static final String f4191a = AbstractC1293l.m17541a("WrkDbPathHelper");

    /* renamed from: b */
    private static final String[] f4192b = {"-journal", "-shm", "-wal"};

    /* renamed from: a */
    private static File m17668a(Context context, String str) {
        return new File(context.getNoBackupFilesDir(), str);
    }

    /* renamed from: a */
    public static String m17670a() {
        return "androidx.work.workdb";
    }

    /* renamed from: a */
    public static void m17669a(Context context) {
        File m17666c = m17666c(context);
        if (Build.VERSION.SDK_INT < 23 || !m17666c.exists()) {
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f4191a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
        Map<File, File> m17667b = m17667b(context);
        for (File file : m17667b.keySet()) {
            File file2 = m17667b.get(file);
            if (file.exists() && file2 != null) {
                if (file2.exists()) {
                    AbstractC1293l.m17543a().mo17537d(f4191a, String.format("Over-writing contents of %s", file2), new Throwable[0]);
                }
                AbstractC1293l.m17543a().mo17539b(f4191a, file.renameTo(file2) ? String.format("Migrated %s to %s", file, file2) : String.format("Renaming %s to %s failed", file, file2), new Throwable[0]);
            }
        }
    }

    /* renamed from: b */
    public static Map<File, File> m17667b(Context context) {
        File m17666c;
        File m17665d;
        String[] strArr;
        HashMap hashMap = new HashMap();
        if (Build.VERSION.SDK_INT >= 23) {
            hashMap.put(m17666c(context), m17665d(context));
            for (String str : f4192b) {
                hashMap.put(new File(m17666c.getPath() + str), new File(m17665d.getPath() + str));
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    public static File m17666c(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }

    /* renamed from: d */
    public static File m17665d(Context context) {
        return Build.VERSION.SDK_INT < 23 ? m17666c(context) : m17668a(context, "androidx.work.workdb");
    }
}

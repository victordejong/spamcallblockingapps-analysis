package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC1404j;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/i.class */
public class C1288i {

    /* renamed from: a */
    private static final String f5441a = AbstractC1404j.m30159f("WrkDbPathHelper");

    /* renamed from: b */
    private static final String[] f5442b = {"-journal", "-shm", "-wal"};

    /* renamed from: a */
    public static File m30404a(Context context) {
        return Build.VERSION.SDK_INT < 23 ? m30403b(context) : m30402c(context, "androidx.work.workdb");
    }

    /* renamed from: b */
    public static File m30403b(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }

    /* renamed from: c */
    private static File m30402c(Context context, String str) {
        return new File(context.getNoBackupFilesDir(), str);
    }

    /* renamed from: d */
    public static String m30401d() {
        return "androidx.work.workdb";
    }

    /* renamed from: e */
    public static void m30400e(Context context) {
        File m30403b = m30403b(context);
        if (Build.VERSION.SDK_INT < 23 || !m30403b.exists()) {
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5441a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
        Map<File, File> m30399f = m30399f(context);
        for (File file : m30399f.keySet()) {
            File file2 = m30399f.get(file);
            if (file.exists() && file2 != null) {
                if (file2.exists()) {
                    AbstractC1404j.m30161c().mo30154h(f5441a, String.format("Over-writing contents of %s", file2), new Throwable[0]);
                }
                AbstractC1404j.m30161c().mo30158a(f5441a, file.renameTo(file2) ? String.format("Migrated %s to %s", file, file2) : String.format("Renaming %s to %s failed", file, file2), new Throwable[0]);
            }
        }
    }

    /* renamed from: f */
    public static Map<File, File> m30399f(Context context) {
        File m30403b;
        File m30404a;
        String[] strArr;
        HashMap hashMap = new HashMap();
        if (Build.VERSION.SDK_INT >= 23) {
            hashMap.put(m30403b(context), m30404a(context));
            for (String str : f5442b) {
                hashMap.put(new File(m30403b.getPath() + str), new File(m30404a.getPath() + str));
            }
        }
        return hashMap;
    }
}

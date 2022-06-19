package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC3145k;
import java.io.File;
import java.util.HashMap;
/* renamed from: androidx.work.impl.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/i.class */
public final class C3067i {

    /* renamed from: a */
    private static final String f11347a = AbstractC3145k.m39275a("WrkDbPathHelper");

    /* renamed from: b */
    private static final String[] f11348b = {"-journal", "-shm", "-wal"};

    private C3067i() {
    }

    /* renamed from: a */
    public static String m39365a() {
        return "androidx.work.workdb";
    }

    /* renamed from: a */
    public static void m39364a(Context context) {
        File databasePath;
        File databasePath2;
        String[] strArr;
        File databasePath3 = context.getDatabasePath("androidx.work.workdb");
        if (Build.VERSION.SDK_INT < 23 || !databasePath3.exists()) {
            return;
        }
        AbstractC3145k.m39277a();
        HashMap hashMap = new HashMap();
        if (Build.VERSION.SDK_INT >= 23) {
            hashMap.put(context.getDatabasePath("androidx.work.workdb"), Build.VERSION.SDK_INT < 23 ? context.getDatabasePath("androidx.work.workdb") : new File(context.getNoBackupFilesDir(), "androidx.work.workdb"));
            for (String str : f11348b) {
                hashMap.put(new File(databasePath.getPath() + str), new File(databasePath2.getPath() + str));
            }
        }
        for (File file : hashMap.keySet()) {
            File file2 = (File) hashMap.get(file);
            if (file.exists() && file2 != null) {
                if (file2.exists()) {
                    AbstractC3145k.m39277a().mo39274a(f11347a, String.format("Over-writing contents of %s", file2));
                }
                if (file.renameTo(file2)) {
                    String.format("Migrated %s to %s", file, file2);
                } else {
                    String.format("Renaming %s to %s failed", file, file2);
                }
                AbstractC3145k.m39277a();
            }
        }
    }
}

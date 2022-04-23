package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.k;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6114a = k.a("WrkDbPathHelper");

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f6115b = {"-journal", "-shm", "-wal"};

    private i() {
    }

    public static String a() {
        return "androidx.work.workdb";
    }

    public static void a(Context context) {
        File databasePath;
        File databasePath2;
        String[] strArr;
        File databasePath3 = context.getDatabasePath("androidx.work.workdb");
        if (Build.VERSION.SDK_INT >= 23 && databasePath3.exists()) {
            k.a();
            HashMap hashMap = new HashMap();
            if (Build.VERSION.SDK_INT >= 23) {
                hashMap.put(context.getDatabasePath("androidx.work.workdb"), Build.VERSION.SDK_INT < 23 ? context.getDatabasePath("androidx.work.workdb") : new File(context.getNoBackupFilesDir(), "androidx.work.workdb"));
                for (String str : f6115b) {
                    hashMap.put(new File(databasePath.getPath() + str), new File(databasePath2.getPath() + str));
                }
            }
            for (File file : hashMap.keySet()) {
                File file2 = (File) hashMap.get(file);
                if (file.exists() && file2 != null) {
                    if (file2.exists()) {
                        k.a().a(f6114a, String.format("Over-writing contents of %s", file2));
                    }
                    if (file.renameTo(file2)) {
                        String.format("Migrated %s to %s", file, file2);
                    } else {
                        String.format("Renaming %s to %s failed", file, file2);
                    }
                    k.a();
                }
            }
        }
    }
}

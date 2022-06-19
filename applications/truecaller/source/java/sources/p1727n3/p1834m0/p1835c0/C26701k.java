package p1727n3.p1834m0.p1835c0;

import android.content.Context;
import java.io.File;
import java.util.HashMap;
import p1727n3.p1834m0.AbstractC26839p;
/* renamed from: n3.m0.c0.k */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/k.class */
public class C26701k {

    /* renamed from: a */
    public static final String f74718a = AbstractC26839p.m1295e("WrkDbPathHelper");

    /* renamed from: b */
    public static final String[] f74719b = {"-journal", "-shm", "-wal"};

    /* renamed from: a */
    public static void m1432a(Context context) {
        File databasePath;
        File file;
        String[] strArr;
        if (context.getDatabasePath("androidx.work.workdb").exists()) {
            AbstractC26839p.m1296c().mo1294a(f74718a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
            HashMap hashMap = new HashMap();
            hashMap.put(context.getDatabasePath("androidx.work.workdb"), new File(context.getNoBackupFilesDir(), "androidx.work.workdb"));
            for (String str : f74719b) {
                hashMap.put(new File(databasePath.getPath() + str), new File(file.getPath() + str));
            }
            for (File file2 : hashMap.keySet()) {
                File file3 = (File) hashMap.get(file2);
                if (file2.exists() && file3 != null) {
                    if (file3.exists()) {
                        AbstractC26839p.m1296c().mo1291f(f74718a, String.format("Over-writing contents of %s", file3), new Throwable[0]);
                    }
                    AbstractC26839p.m1296c().mo1294a(f74718a, file2.renameTo(file3) ? String.format("Migrated %s to %s", file2, file3) : String.format("Renaming %s to %s failed", file2, file3), new Throwable[0]);
                }
            }
        }
    }
}

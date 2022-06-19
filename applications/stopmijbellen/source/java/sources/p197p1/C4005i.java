package p197p1;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.util.HashMap;
import p186o1.AbstractC3824h;
/* renamed from: p1.i */
/* loaded from: classes-dex2jar.jar:p1/i.class */
public class C4005i {

    /* renamed from: a */
    public static final String f12577a = AbstractC3824h.m1773e("WrkDbPathHelper");

    /* renamed from: b */
    public static final String[] f12578b = {"-journal", "-shm", "-wal"};

    /* renamed from: a */
    public static void m1537a(Context context) {
        File databasePath;
        File databasePath2;
        String[] strArr;
        File databasePath3 = context.getDatabasePath("androidx.work.workdb");
        int i = Build.VERSION.SDK_INT;
        if (i < 23 || !databasePath3.exists()) {
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f12577a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
        HashMap hashMap = new HashMap();
        if (i >= 23) {
            hashMap.put(context.getDatabasePath("androidx.work.workdb"), i < 23 ? context.getDatabasePath("androidx.work.workdb") : new File(context.getNoBackupFilesDir(), "androidx.work.workdb"));
            for (String str : f12578b) {
                hashMap.put(new File(databasePath.getPath() + str), new File(databasePath2.getPath() + str));
            }
        }
        for (File file : hashMap.keySet()) {
            File file2 = (File) hashMap.get(file);
            if (file.exists() && file2 != null) {
                if (file2.exists()) {
                    AbstractC3824h.m1774c().mo1769f(f12577a, String.format("Over-writing contents of %s", file2), new Throwable[0]);
                }
                AbstractC3824h.m1774c().mo1772a(f12577a, file.renameTo(file2) ? String.format("Migrated %s to %s", file, file2) : String.format("Renaming %s to %s failed", file, file2), new Throwable[0]);
            }
        }
    }
}

package p134j4;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
import p201p6.C4018c;
/* renamed from: j4.w */
/* loaded from: classes-dex2jar.jar:j4/w.class */
public final class C3259w {

    /* renamed from: c */
    public static final C4018c f11004c = new C4018c("AssetPackStorage");

    /* renamed from: a */
    public final Context f11005a;

    /* renamed from: b */
    public final C3252t1 f11006b;

    static {
        TimeUnit timeUnit = TimeUnit.DAYS;
        timeUnit.toMillis(14L);
        timeUnit.toMillis(28L);
    }

    public C3259w(Context context, C3252t1 c3252t1) {
        this.f11005a = context;
        this.f11006b = c3252t1;
    }

    /* renamed from: d */
    public static long m2499d(File file, boolean z) {
        File[] listFiles;
        if (!file.exists()) {
            return -1L;
        }
        ArrayList arrayList = new ArrayList();
        if (z && file.listFiles().length > 1) {
            f11004c.m1506f("Multiple pack versions found, using highest version code.", new Object[0]);
        }
        try {
            for (File file2 : file.listFiles()) {
                if (!file2.getName().equals("stale.tmp")) {
                    arrayList.add(Long.valueOf(file2.getName()));
                }
            }
        } catch (NumberFormatException e) {
            f11004c.m1508d(e, "Corrupt asset pack directories.", new Object[0]);
        }
        if (arrayList.isEmpty()) {
            return -1L;
        }
        Collections.sort(arrayList);
        return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
    }

    /* renamed from: i */
    public static void m2494i(File file) {
        File[] listFiles;
        if (file.listFiles() == null || file.listFiles().length <= 1) {
            return;
        }
        long m2499d = m2499d(file, false);
        for (File file2 : file.listFiles()) {
            if (!file2.getName().equals(String.valueOf(m2499d)) && !file2.getName().equals("stale.tmp")) {
                m2493j(file2);
            }
        }
    }

    /* renamed from: j */
    public static boolean m2493j(File file) {
        File[] listFiles = file.listFiles();
        boolean z = true;
        boolean z2 = true;
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (true) {
                z = z2;
                if (i >= length) {
                    break;
                }
                z2 &= m2493j(listFiles[i]);
                i++;
            }
        }
        if (!file.delete()) {
            return false;
        }
        return z;
    }

    /* renamed from: a */
    public final void m2502a(String str, int i, long j, int i2) throws IOException {
        File file = new File(m2487p(str, i, j), "merge.tmp");
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i2));
        file.getParentFile().mkdirs();
        file.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }

    /* renamed from: b */
    public final void m2501b(String str, int i, long j) {
        File[] listFiles;
        File[] listFiles2;
        File m2498e = m2498e(str);
        if (!m2498e.exists()) {
            return;
        }
        for (File file : m2498e.listFiles()) {
            if (!file.getName().equals(String.valueOf(i)) && !file.getName().equals("stale.tmp")) {
                m2493j(file);
            } else if (file.getName().equals(String.valueOf(i))) {
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().equals(String.valueOf(j))) {
                        m2493j(file2);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public final boolean m2500c(String str, int i, long j) {
        if (!m2497f(str, i, j).exists()) {
            return true;
        }
        return m2493j(m2497f(str, i, j));
    }

    /* renamed from: e */
    public final File m2498e(String str) {
        return new File(m2496g(), str);
    }

    /* renamed from: f */
    public final File m2497f(String str, int i, long j) {
        return new File(new File(new File(new File(m2496g(), "_tmp"), str), String.valueOf(i)), String.valueOf(j));
    }

    /* renamed from: g */
    public final File m2496g() {
        return new File(this.f11005a.getFilesDir(), "assetpacks");
    }

    /* renamed from: h */
    public final List m2495h() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e) {
            f11004c.m1509c("Could not process directory while scanning installed packs. %s", e);
        }
        if (m2496g().exists() && m2496g().listFiles() != null) {
            for (File file : m2496g().listFiles()) {
                if (!file.getCanonicalPath().equals(new File(m2496g(), "_tmp").getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: k */
    public final int m2492k(String str, int i, long j) throws IOException {
        File file = new File(m2487p(str, i, j), "merge.tmp");
        if (!file.exists()) {
            return 0;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("numberOfMerges") == null) {
                throw new C3233n0("Merge checkpoint file corrupt.");
            }
            try {
                return Integer.parseInt(properties.getProperty("numberOfMerges"));
            } catch (NumberFormatException e) {
                throw new C3233n0("Merge checkpoint file corrupt.", e);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: l */
    public final long m2491l(String str) {
        return m2499d(m2490m(str, (int) m2499d(m2498e(str), true)), true);
    }

    /* renamed from: m */
    public final File m2490m(String str, int i) {
        return new File(m2498e(str), String.valueOf(i));
    }

    /* renamed from: n */
    public final File m2489n(String str, int i, long j) {
        return new File(m2490m(str, i), String.valueOf(j));
    }

    /* renamed from: o */
    public final File m2488o(String str, int i, long j) {
        return new File(m2489n(str, i, j), "_metadata");
    }

    /* renamed from: p */
    public final File m2487p(String str, int i, long j) {
        return new File(m2497f(str, i, j), "_packs");
    }

    /* renamed from: q */
    public final File m2486q(String str, int i, long j, String str2) {
        return new File(m2485r(str, i, j, str2), "checkpoint.dat");
    }

    /* renamed from: r */
    public final File m2485r(String str, int i, long j, String str2) {
        return new File(new File(new File(m2497f(str, i, j), "_slices"), "_metadata"), str2);
    }

    /* renamed from: s */
    public final File m2484s(String str, int i, long j, String str2) {
        return new File(new File(new File(m2497f(str, i, j), "_slices"), "_unverified"), str2);
    }

    /* renamed from: t */
    public final File m2483t(String str, int i, long j, String str2) {
        return new File(new File(new File(m2497f(str, i, j), "_slices"), "_verified"), str2);
    }

    /* renamed from: u */
    public final String m2482u(String str) throws IOException {
        int length;
        File file = new File(m2496g(), str);
        if (!file.exists()) {
            f11004c.m1510b("Pack not found with pack name: %s", str);
            return null;
        }
        File file2 = new File(file, String.valueOf(this.f11006b.m2504a()));
        if (!file2.exists()) {
            f11004c.m1510b("Pack not found with pack name: %s app version: %s", str, Integer.valueOf(this.f11006b.m2504a()));
            return null;
        }
        File[] listFiles = file2.listFiles();
        if (listFiles == null || (length = listFiles.length) == 0) {
            f11004c.m1510b("No pack version found for pack name: %s app version: %s", str, Integer.valueOf(this.f11006b.m2504a()));
            return null;
        } else if (length <= 1) {
            return listFiles[0].getCanonicalPath();
        } else {
            f11004c.m1509c("Multiple pack versions found for pack name: %s app version: %s", str, Integer.valueOf(this.f11006b.m2504a()));
            return null;
        }
    }

    /* renamed from: v */
    public final Map m2481v() {
        HashMap hashMap = new HashMap();
        Iterator it2 = ((ArrayList) m2495h()).iterator();
        while (it2.hasNext()) {
            String name = ((File) it2.next()).getName();
            int m2499d = (int) m2499d(m2498e(name), true);
            long m2499d2 = m2499d(m2490m(name, m2499d), true);
            if (m2489n(name, m2499d, m2499d2).exists()) {
                hashMap.put(name, Long.valueOf(m2499d2));
            }
        }
        return hashMap;
    }
}

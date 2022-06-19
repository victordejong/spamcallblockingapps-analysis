package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.C15034ay;
import com.google.android.play.core.internal.C15072h;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.play.core.assetpacks.w */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/w.class */
public final class C14996w {

    /* renamed from: b */
    final C14947bu f54716b;

    /* renamed from: e */
    private final Context f54717e;

    /* renamed from: c */
    private static final C15072h f54714c = new C15072h("AssetPackStorage");

    /* renamed from: d */
    private static final long f54715d = TimeUnit.DAYS.toMillis(14);

    /* renamed from: a */
    static final long f54713a = TimeUnit.DAYS.toMillis(28);

    public C14996w(Context context, C14947bu c14947bu) {
        this.f54717e = context;
        this.f54716b = c14947bu;
    }

    /* renamed from: a */
    public static long m9668a(File file) {
        return m9667a(file, true);
    }

    /* renamed from: a */
    private static long m9667a(File file, boolean z) {
        File[] listFiles;
        if (!file.exists()) {
            return -1L;
        }
        ArrayList arrayList = new ArrayList();
        if (z && file.listFiles().length > 1) {
            f54714c.m9507d("Multiple pack versions found, using highest version code.", new Object[0]);
        }
        try {
            for (File file2 : file.listFiles()) {
                if (!file2.getName().equals("stale.tmp")) {
                    arrayList.add(Long.valueOf(file2.getName()));
                }
            }
        } catch (NumberFormatException e) {
            f54714c.m9510a(e, "Corrupt asset pack directories.", new Object[0]);
        }
        if (arrayList.isEmpty()) {
            return -1L;
        }
        Collections.sort(arrayList);
        return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
    }

    /* renamed from: a */
    private final File m9665a(String str, int i) {
        return new File(m9666a(str), String.valueOf(i));
    }

    /* renamed from: b */
    public static boolean m9660b(File file) {
        boolean z;
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            boolean z2 = true;
            while (true) {
                z = z2;
                if (i >= length) {
                    break;
                }
                z2 &= m9660b(listFiles[i]);
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && true == z;
    }

    /* renamed from: c */
    private static void m9655c(File file) {
        File[] listFiles;
        if (file.listFiles() == null || file.listFiles().length <= 1) {
            return;
        }
        long m9667a = m9667a(file, false);
        for (File file2 : file.listFiles()) {
            if (!file2.getName().equals(String.valueOf(m9667a)) && !file2.getName().equals("stale.tmp")) {
                m9660b(file2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0119 A[Catch: IOException -> 0x0168, TRY_ENTER, TryCatch #0 {IOException -> 0x0168, blocks: (B:3:0x0008, B:5:0x0013, B:7:0x001b, B:10:0x004a, B:13:0x0061, B:15:0x007f, B:16:0x00a0, B:18:0x00ac, B:22:0x00bf, B:23:0x00e0, B:24:0x00ec, B:28:0x0119, B:30:0x012f, B:32:0x0147, B:35:0x0158), top: B:40:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0158 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0012 A[SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, com.google.android.play.core.assetpacks.AbstractC14899a> m9645f() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.C14996w.m9645f():java.util.Map");
    }

    /* renamed from: g */
    private final File m9643g() {
        return new File(m9641h(), "_tmp");
    }

    /* renamed from: g */
    private final File m9642g(String str, int i, long j) {
        return new File(m9653c(str, i, j), "merge.tmp");
    }

    /* renamed from: h */
    private final File m9641h() {
        return new File(this.f54717e.getFilesDir(), "assetpacks");
    }

    /* renamed from: h */
    private final File m9640h(String str, int i, long j) {
        return new File(new File(new File(m9643g(), str), String.valueOf(i)), String.valueOf(j));
    }

    /* renamed from: a */
    public final File m9666a(String str) {
        return new File(m9641h(), str);
    }

    /* renamed from: a */
    public final File m9664a(String str, int i, long j) {
        return new File(m9665a(str, i), String.valueOf(j));
    }

    /* renamed from: a */
    public final File m9662a(String str, int i, long j, String str2) {
        return new File(new File(new File(m9640h(str, i, j), "_slices"), "_unverified"), str2);
    }

    /* renamed from: a */
    public final Map<String, Long> m9669a() {
        HashMap hashMap = new HashMap();
        for (String str : m9645f().keySet()) {
            hashMap.put(str, Long.valueOf(m9654c(str)));
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m9663a(String str, int i, long j, int i2) throws IOException {
        File m9642g = m9642g(str, i, j);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i2));
        m9642g.getParentFile().mkdirs();
        m9642g.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(m9642g);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }

    /* renamed from: b */
    public final int m9659b(String str) {
        return (int) m9667a(m9666a(str), true);
    }

    /* renamed from: b */
    public final File m9658b(String str, int i, long j) {
        return new File(m9664a(str, i, j), "_metadata");
    }

    /* renamed from: b */
    public final File m9657b(String str, int i, long j, String str2) {
        return new File(new File(new File(m9640h(str, i, j), "_slices"), "_verified"), str2);
    }

    /* renamed from: b */
    public final void m9661b() {
        for (File file : m9648e()) {
            if (file.listFiles() != null) {
                m9655c(file);
                long m9667a = m9667a(file, false);
                if (this.f54716b.m9734a() != m9667a) {
                    try {
                        new File(new File(file, String.valueOf(m9667a)), "stale.tmp").createNewFile();
                    } catch (IOException e) {
                        f54714c.m9509b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    m9655c(file2);
                }
            }
        }
    }

    /* renamed from: c */
    public final long m9654c(String str) {
        return m9667a(m9665a(str, m9659b(str)), true);
    }

    /* renamed from: c */
    public final File m9653c(String str, int i, long j) {
        return new File(m9640h(str, i, j), "_packs");
    }

    /* renamed from: c */
    public final File m9652c(String str, int i, long j, String str2) {
        return new File(m9646e(str, i, j, str2), "checkpoint.dat");
    }

    /* renamed from: c */
    public final void m9656c() {
        File[] listFiles;
        if (!m9643g().exists()) {
            return;
        }
        for (File file : m9643g().listFiles()) {
            if (System.currentTimeMillis() - file.lastModified() > f54715d) {
                m9660b(file);
            } else {
                m9655c(file);
            }
        }
    }

    /* renamed from: d */
    public final int m9650d(String str, int i, long j) throws IOException {
        File m9642g = m9642g(str, i, j);
        if (!m9642g.exists()) {
            return 0;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(m9642g);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("numberOfMerges") == null) {
                throw new C14911al("Merge checkpoint file corrupt.");
            }
            try {
                return Integer.parseInt(properties.getProperty("numberOfMerges"));
            } catch (NumberFormatException e) {
                throw new C14911al("Merge checkpoint file corrupt.", e);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final File m9649d(String str, int i, long j, String str2) {
        return new File(m9646e(str, i, j, str2), "checkpoint_ext.dat");
    }

    /* renamed from: d */
    public final void m9651d() {
        m9660b(m9641h());
    }

    /* renamed from: e */
    public final File m9647e(String str, int i, long j) {
        return new File(new File(m9640h(str, i, j), "_slices"), "_metadata");
    }

    /* renamed from: e */
    public final File m9646e(String str, int i, long j, String str2) {
        return new File(m9647e(str, i, j), str2);
    }

    /* renamed from: e */
    public final List<File> m9648e() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e) {
            f54714c.m9509b("Could not process directory while scanning installed packs. %s", e);
        }
        if (m9641h().exists() && m9641h().listFiles() != null) {
            for (File file : m9641h().listFiles()) {
                if (!file.getCanonicalPath().equals(m9643g().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: f */
    public final void m9644f(String str, int i, long j) {
        if (!m9640h(str, i, j).exists()) {
            return;
        }
        m9660b(m9640h(str, i, j));
    }
}

package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.ay;
import com.google.android.play.core.internal.h;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/w.class */
public final class w {

    /* renamed from: b  reason: collision with root package name */
    final bu f31316b;
    private final Context e;

    /* renamed from: c  reason: collision with root package name */
    private static final h f31314c = new h("AssetPackStorage");

    /* renamed from: d  reason: collision with root package name */
    private static final long f31315d = TimeUnit.DAYS.toMillis(14);

    /* renamed from: a  reason: collision with root package name */
    static final long f31313a = TimeUnit.DAYS.toMillis(28);

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Context context, bu buVar) {
        this.e = context;
        this.f31316b = buVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(File file) {
        return a(file, true);
    }

    private static long a(File file, boolean z) {
        File[] listFiles;
        if (!file.exists()) {
            return -1L;
        }
        ArrayList arrayList = new ArrayList();
        if (z && file.listFiles().length > 1) {
            f31314c.d("Multiple pack versions found, using highest version code.", new Object[0]);
        }
        try {
            for (File file2 : file.listFiles()) {
                if (!file2.getName().equals("stale.tmp")) {
                    arrayList.add(Long.valueOf(file2.getName()));
                }
            }
        } catch (NumberFormatException e) {
            f31314c.a(e, "Corrupt asset pack directories.", new Object[0]);
        }
        if (arrayList.isEmpty()) {
            return -1L;
        }
        Collections.sort(arrayList);
        return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
    }

    private final File a(String str, int i) {
        return new File(a(str), String.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(File file) {
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
                z2 &= b(listFiles[i]);
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && true == z;
    }

    private static void c(File file) {
        File[] listFiles;
        if (file.listFiles() != null && file.listFiles().length > 1) {
            long a2 = a(file, false);
            for (File file2 : file.listFiles()) {
                if (!file2.getName().equals(String.valueOf(a2)) && !file2.getName().equals("stale.tmp")) {
                    b(file2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0119 A[Catch: IOException -> 0x0168, TRY_ENTER, TryCatch #0 {IOException -> 0x0168, blocks: (B:3:0x0008, B:5:0x0013, B:7:0x001b, B:10:0x004a, B:13:0x0061, B:15:0x007f, B:16:0x00a0, B:18:0x00ac, B:22:0x00bf, B:23:0x00e0, B:24:0x00ec, B:28:0x0119, B:30:0x012f, B:32:0x0147, B:35:0x0158), top: B:40:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0158 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0012 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, com.google.android.play.core.assetpacks.a> f() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.assetpacks.w.f():java.util.Map");
    }

    private final File g() {
        return new File(h(), "_tmp");
    }

    private final File g(String str, int i, long j) {
        return new File(c(str, i, j), "merge.tmp");
    }

    private final File h() {
        return new File(this.e.getFilesDir(), "assetpacks");
    }

    private final File h(String str, int i, long j) {
        return new File(new File(new File(g(), str), String.valueOf(i)), String.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File a(String str) {
        return new File(h(), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File a(String str, int i, long j) {
        return new File(a(str, i), String.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File a(String str, int i, long j, String str2) {
        return new File(new File(new File(h(str, i, j), "_slices"), "_unverified"), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, Long> a() {
        HashMap hashMap = new HashMap();
        for (String str : f().keySet()) {
            hashMap.put(str, Long.valueOf(c(str)));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, int i, long j, int i2) throws IOException {
        File g = g(str, i, j);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i2));
        g.getParentFile().mkdirs();
        g.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(g);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str) {
        return (int) a(a(str), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File b(String str, int i, long j) {
        return new File(a(str, i, j), "_metadata");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File b(String str, int i, long j, String str2) {
        return new File(new File(new File(h(str, i, j), "_slices"), "_verified"), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        for (File file : e()) {
            if (file.listFiles() != null) {
                c(file);
                long a2 = a(file, false);
                if (this.f31316b.a() != a2) {
                    try {
                        new File(new File(file, String.valueOf(a2)), "stale.tmp").createNewFile();
                    } catch (IOException e) {
                        f31314c.b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    c(file2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long c(String str) {
        return a(a(str, b(str)), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File c(String str, int i, long j) {
        return new File(h(str, i, j), "_packs");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File c(String str, int i, long j, String str2) {
        return new File(e(str, i, j, str2), "checkpoint.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        File[] listFiles;
        if (g().exists()) {
            for (File file : g().listFiles()) {
                if (System.currentTimeMillis() - file.lastModified() > f31315d) {
                    b(file);
                } else {
                    c(file);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(String str, int i, long j) throws IOException {
        File g = g(str, i, j);
        if (!g.exists()) {
            return 0;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(g);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("numberOfMerges") != null) {
                try {
                    return Integer.parseInt(properties.getProperty("numberOfMerges"));
                } catch (NumberFormatException e) {
                    throw new al("Merge checkpoint file corrupt.", e);
                }
            } else {
                throw new al("Merge checkpoint file corrupt.");
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File d(String str, int i, long j, String str2) {
        return new File(e(str, i, j, str2), "checkpoint_ext.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        b(h());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File e(String str, int i, long j) {
        return new File(new File(h(str, i, j), "_slices"), "_metadata");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File e(String str, int i, long j, String str2) {
        return new File(e(str, i, j), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<File> e() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e) {
            f31314c.b("Could not process directory while scanning installed packs. %s", e);
        }
        if (h().exists() && h().listFiles() != null) {
            for (File file : h().listFiles()) {
                if (!file.getCanonicalPath().equals(g().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(String str, int i, long j) {
        if (h(str, i, j).exists()) {
            b(h(str, i, j));
        }
    }
}

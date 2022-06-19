package com.bytedance.sdk.openadsdk.preload.geckox.p206a;

import com.bytedance.sdk.openadsdk.preload.geckox.p221g.C5376a;
import com.bytedance.sdk.openadsdk.preload.geckox.p221g.C5377b;
import com.bytedance.sdk.openadsdk.preload.geckox.p221g.C5378c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5418c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.ExecutorC5422f;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.ExecutorC5426j;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/c.class */
public class C5316c {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* renamed from: a */
    private static List<File> m32589a(File[] fileArr) {
        char c;
        ArrayList<File> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        File file = null;
        char c2 = 65535;
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (name.endsWith("--updating")) {
                arrayList.add(file2);
            } else if (name.endsWith("--pending-delete")) {
                m32591a(file2);
            } else {
                try {
                    ?? parseLong = Long.parseLong(name);
                    if (parseLong > c2) {
                        if (file != null) {
                            try {
                                arrayList2.add(file);
                            } catch (Exception e) {
                                c2 = parseLong;
                                m32591a(file2);
                            }
                        }
                        file = file2;
                        c2 = parseLong;
                    } else {
                        arrayList2.add(file2);
                    }
                } catch (Exception e2) {
                }
            }
        }
        for (File file3 : arrayList) {
            String name2 = file3.getName();
            int indexOf = name2.indexOf("--updating");
            if (indexOf == -1) {
                m32591a(file3);
            } else {
                try {
                    c = Long.parseLong(name2.substring(0, indexOf));
                } catch (NumberFormatException e3) {
                    e3.printStackTrace();
                    c = 65535;
                }
                if (c <= c2) {
                    m32591a(file3);
                }
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    private static void m32591a(final File file) {
        ExecutorC5422f.m32351a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.c.3
            @Override // java.lang.Runnable
            public final void run() {
                C5419d.m32358a(file);
            }
        });
    }

    /* renamed from: a */
    public static void m32590a(final String str) {
        ExecutorC5426j.m32345a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C5316c.m32586d(str);
                } catch (Throwable th) {
                    C5418c.m32359a(new RuntimeException("delete old channel version failed，path：" + str, th));
                }
            }
        });
    }

    /* renamed from: b */
    public static boolean m32588b(String str) {
        try {
            C5376a m32437a = C5376a.m32437a(str + File.separator + "update.lock");
            if (m32437a == null) {
                return true;
            }
            C5377b m32435a = C5377b.m32435a(str + File.separator + "select.lock");
            try {
                C5419d.m32355c(new File(str));
            } catch (Throwable th) {
            }
            m32435a.m32436a();
            m32437a.m32438a();
            return true;
        } catch (Throwable th2) {
            return false;
        }
    }

    /* renamed from: d */
    public static void m32586d(String str) throws Exception {
        C5376a m32437a = C5376a.m32437a(str + File.separator + "update.lock");
        if (m32437a == null) {
            return;
        }
        try {
            C5377b m32435a = C5377b.m32435a(str + File.separator + "select.lock");
            List<File> m32585e = m32585e(str);
            if (m32585e != null && !m32585e.isEmpty()) {
                for (File file : m32585e) {
                    C5378c.m32432c(file.getAbsolutePath() + File.separator + "using.lock");
                }
                m32435a.m32436a();
                return;
            }
            m32435a.m32436a();
        } finally {
            m32437a.m32438a();
        }
    }

    /* renamed from: e */
    private static List<File> m32585e(String str) {
        File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.a.c.2
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return file.isDirectory();
            }
        });
        if (listFiles == null || listFiles.length == 0 || listFiles.length == 1) {
            return null;
        }
        return m32589a(listFiles);
    }
}

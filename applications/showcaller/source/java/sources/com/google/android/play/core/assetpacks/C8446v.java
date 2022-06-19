package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8505n0;
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
/* renamed from: com.google.android.play.core.assetpacks.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/v.class */
public final class C8446v {

    /* renamed from: a */
    private static final C8466a f37950a = new C8466a("AssetPackStorage");

    /* renamed from: b */
    private static final long f37951b;

    /* renamed from: c */
    private static final long f37952c;

    /* renamed from: d */
    private final Context f37953d;

    /* renamed from: e */
    private final C8436s1 f37954e;

    static {
        TimeUnit timeUnit = TimeUnit.DAYS;
        f37951b = timeUnit.toMillis(14L);
        f37952c = timeUnit.toMillis(28L);
    }

    public C8446v(Context context, C8436s1 c8436s1) {
        this.f37953d = context;
        this.f37954e = c8436s1;
    }

    /* renamed from: d */
    private final File m3658d(String str, int i) {
        return new File(m3657e(str), String.valueOf(i));
    }

    /* renamed from: e */
    private final File m3657e(String str) {
        return new File(m3648n(), str);
    }

    /* renamed from: f */
    private final File m3656f(String str, int i, long j) {
        return new File(m3638x(str, i, j), "merge.tmp");
    }

    /* renamed from: g */
    private static void m3655g(File file) {
        File[] listFiles;
        if (file.listFiles() == null || file.listFiles().length <= 1) {
            return;
        }
        long m3652j = m3652j(file);
        for (File file2 : file.listFiles()) {
            if (!file2.getName().equals(String.valueOf(m3652j)) && !file2.getName().equals("stale.tmp")) {
                m3647o(file2);
            }
        }
    }

    /* renamed from: h */
    private static long m3654h(File file) {
        return m3653i(file, true);
    }

    /* renamed from: i */
    private static long m3653i(File file, boolean z) {
        File[] listFiles;
        if (!file.exists()) {
            return -1L;
        }
        ArrayList arrayList = new ArrayList();
        if (z && file.listFiles().length > 1) {
            f37950a.m3563e("Multiple pack versions found, using highest version code.", new Object[0]);
        }
        try {
            for (File file2 : file.listFiles()) {
                if (!file2.getName().equals("stale.tmp")) {
                    arrayList.add(Long.valueOf(file2.getName()));
                }
            }
        } catch (NumberFormatException e) {
            f37950a.m3565c(e, "Corrupt asset pack directories.", new Object[0]);
        }
        if (arrayList.isEmpty()) {
            return -1L;
        }
        Collections.sort(arrayList);
        return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
    }

    /* renamed from: j */
    private static long m3652j(File file) {
        return m3653i(file, false);
    }

    /* renamed from: k */
    private final List<File> m3651k() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e) {
            f37950a.m3566b("Could not process directory while scanning installed packs. %s", e);
        }
        if (m3648n().exists() && m3648n().listFiles() != null) {
            for (File file : m3648n().listFiles()) {
                if (!file.getCanonicalPath().equals(m3649m().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: l */
    private final File m3650l(String str, int i, long j) {
        return new File(new File(new File(m3649m(), str), String.valueOf(i)), String.valueOf(j));
    }

    /* renamed from: m */
    private final File m3649m() {
        return new File(m3648n(), "_tmp");
    }

    /* renamed from: n */
    private final File m3648n() {
        return new File(this.f37953d.getFilesDir(), "assetpacks");
    }

    /* renamed from: o */
    private static boolean m3647o(File file) {
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
                z2 &= m3647o(listFiles[i]);
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && true == z;
    }

    /* renamed from: A */
    public final File m3672A(String str, int i, long j, String str2) {
        return new File(m3670C(str, i, j, str2), "checkpoint.dat");
    }

    /* renamed from: B */
    public final File m3671B(String str, int i, long j, String str2) {
        return new File(m3670C(str, i, j, str2), "checkpoint_ext.dat");
    }

    /* renamed from: C */
    public final File m3670C(String str, int i, long j, String str2) {
        return new File(m3669D(str, i, j), str2);
    }

    /* renamed from: D */
    public final File m3669D(String str, int i, long j) {
        return new File(new File(m3650l(str, i, j), "_slices"), "_metadata");
    }

    /* renamed from: E */
    public final void m3668E(String str, int i, long j) {
        File[] listFiles;
        File[] listFiles2;
        File m3657e = m3657e(str);
        if (!m3657e.exists()) {
            return;
        }
        for (File file : m3657e.listFiles()) {
            if (!file.getName().equals(String.valueOf(i)) && !file.getName().equals("stale.tmp")) {
                m3647o(file);
            } else if (file.getName().equals(String.valueOf(i))) {
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().equals(String.valueOf(j))) {
                        m3647o(file2);
                    }
                }
            }
        }
    }

    /* renamed from: F */
    public final void m3667F() {
        for (File file : m3651k()) {
            if (file.listFiles() != null) {
                m3655g(file);
                long m3652j = m3652j(file);
                if (this.f37954e.m3675a() != m3652j) {
                    try {
                        new File(new File(file, String.valueOf(m3652j)), "stale.tmp").createNewFile();
                    } catch (IOException e) {
                        f37950a.m3566b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    m3655g(file2);
                }
            }
        }
    }

    /* renamed from: G */
    public final int m3666G(String str) {
        return (int) m3654h(m3657e(str));
    }

    /* renamed from: H */
    public final long m3665H(String str) {
        return m3654h(m3658d(str, m3666G(str)));
    }

    /* renamed from: I */
    public final void m3664I() {
        File[] listFiles;
        for (File file : m3651k()) {
            if (file.listFiles() != null) {
                for (File file2 : file.listFiles()) {
                    File file3 = new File(file2, "stale.tmp");
                    if (file3.exists() && System.currentTimeMillis() - file3.lastModified() > f37952c) {
                        m3647o(file2);
                    }
                }
            }
        }
    }

    /* renamed from: J */
    public final void m3663J() {
        File[] listFiles;
        if (!m3649m().exists()) {
            return;
        }
        for (File file : m3649m().listFiles()) {
            if (System.currentTimeMillis() - file.lastModified() > f37951b) {
                m3647o(file);
            } else {
                m3655g(file);
            }
        }
    }

    /* renamed from: K */
    public final void m3662K() {
        m3647o(m3648n());
    }

    /* renamed from: a */
    public final void m3661a(List<String> list) {
        int m3675a = this.f37954e.m3675a();
        for (File file : m3651k()) {
            if (!list.contains(file.getName()) && m3654h(file) != m3675a) {
                m3647o(file);
            }
        }
    }

    /* renamed from: b */
    public final void m3660b(String str, int i, long j) {
        if (!m3650l(str, i, j).exists()) {
            return;
        }
        m3647o(m3650l(str, i, j));
    }

    /* renamed from: c */
    public final void m3659c(String str, int i, long j) {
        if (!m3642t(str, i, j).exists()) {
            return;
        }
        m3647o(m3642t(str, i, j));
    }

    /* renamed from: p */
    final Map<String, AbstractC8361a> m3646p() {
        HashMap hashMap = new HashMap();
        try {
            for (File file : m3651k()) {
                AbstractC8361a m3644r = m3644r(file.getName());
                if (m3644r != null) {
                    hashMap.put(file.getName(), m3644r);
                }
            }
        } catch (IOException e) {
            f37950a.m3566b("Could not process directory while scanning installed packs: %s", e);
        }
        return hashMap;
    }

    /* renamed from: q */
    public final Map<String, Long> m3645q() {
        HashMap hashMap = new HashMap();
        for (String str : m3646p().keySet()) {
            hashMap.put(str, Long.valueOf(m3665H(str)));
        }
        return hashMap;
    }

    /* renamed from: r */
    final AbstractC8361a m3644r(String str) {
        String m3643s = m3643s(str);
        if (m3643s == null) {
            return null;
        }
        File file = new File(m3643s, "assets");
        if (file.isDirectory()) {
            return AbstractC8361a.m3790b(m3643s, file.getCanonicalPath());
        }
        f37950a.m3566b("Failed to find assets directory: %s", file);
        return null;
    }

    /* renamed from: s */
    final String m3643s(String str) {
        int length;
        File file = new File(m3648n(), str);
        if (!file.exists()) {
            f37950a.m3567a("Pack not found with pack name: %s", str);
            return null;
        }
        File file2 = new File(file, String.valueOf(this.f37954e.m3675a()));
        if (!file2.exists()) {
            f37950a.m3567a("Pack not found with pack name: %s app version: %s", str, Integer.valueOf(this.f37954e.m3675a()));
            return null;
        }
        File[] listFiles = file2.listFiles();
        if (listFiles == null || (length = listFiles.length) == 0) {
            f37950a.m3567a("No pack version found for pack name: %s app version: %s", str, Integer.valueOf(this.f37954e.m3675a()));
            return null;
        } else if (length <= 1) {
            return listFiles[0].getCanonicalPath();
        } else {
            f37950a.m3566b("Multiple pack versions found for pack name: %s app version: %s", str, Integer.valueOf(this.f37954e.m3675a()));
            return null;
        }
    }

    /* renamed from: t */
    public final File m3642t(String str, int i, long j) {
        return new File(m3658d(str, i), String.valueOf(j));
    }

    /* renamed from: u */
    public final File m3641u(String str, int i, long j) {
        return new File(m3642t(str, i, j), "_metadata");
    }

    /* renamed from: v */
    public final File m3640v(String str, int i, long j, String str2) {
        return new File(new File(new File(m3650l(str, i, j), "_slices"), "_unverified"), str2);
    }

    /* renamed from: w */
    public final File m3639w(String str, int i, long j, String str2) {
        return new File(new File(new File(m3650l(str, i, j), "_slices"), "_verified"), str2);
    }

    /* renamed from: x */
    public final File m3638x(String str, int i, long j) {
        return new File(m3650l(str, i, j), "_packs");
    }

    /* renamed from: y */
    public final int m3637y(String str, int i, long j) {
        File m3656f = m3656f(str, i, j);
        if (!m3656f.exists()) {
            return 0;
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(m3656f);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("numberOfMerges") == null) {
                throw new C8369bk("Merge checkpoint file corrupt.");
            }
            try {
                return Integer.parseInt(properties.getProperty("numberOfMerges"));
            } catch (NumberFormatException e) {
                throw new C8369bk("Merge checkpoint file corrupt.", e);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: z */
    public final void m3636z(String str, int i, long j, int i2) {
        File m3656f = m3656f(str, i, j);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i2));
        m3656f.getParentFile().mkdirs();
        m3656f.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(m3656f);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }
}

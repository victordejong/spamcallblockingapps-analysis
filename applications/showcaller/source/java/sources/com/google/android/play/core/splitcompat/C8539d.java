package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.util.Log;
import com.google.android.play.core.internal.C8516t;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/d.class */
public final class C8539d {

    /* renamed from: a */
    private final long f38110a;

    /* renamed from: b */
    private final Context f38111b;

    /* renamed from: c */
    private File f38112c;

    public C8539d(Context context) {
        this.f38111b = context;
        this.f38110a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
    }

    /* renamed from: o */
    public static void m3374o(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                m3374o(file2);
            }
        }
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException(String.format("Failed to delete '%s'", file.getAbsolutePath()));
    }

    /* renamed from: p */
    private final File m3373p() {
        File file = new File(m3372q(), "verified-splits");
        m3366w(file);
        return file;
    }

    /* renamed from: q */
    private final File m3372q() {
        File file = new File(m3371r(), Long.toString(this.f38110a));
        m3366w(file);
        return file;
    }

    /* renamed from: r */
    private final File m3371r() {
        if (this.f38112c == null) {
            Context context = this.f38111b;
            if (context == null) {
                throw new IllegalStateException("context must be non-null to populate null filesDir");
            }
            this.f38112c = context.getFilesDir();
        }
        File file = new File(this.f38112c, "splitcompat");
        m3366w(file);
        return file;
    }

    /* renamed from: s */
    private final File m3370s() {
        File file = new File(m3372q(), "native-libraries");
        m3366w(file);
        return file;
    }

    /* renamed from: t */
    private final File m3369t(String str) {
        File m3368u = m3368u(m3370s(), str);
        m3366w(m3368u);
        return m3368u;
    }

    /* renamed from: u */
    private static File m3368u(File file, String str) {
        File file2 = new File(file, str);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            return file2;
        }
        throw new IllegalArgumentException("split ID cannot be placed in target directory");
    }

    /* renamed from: v */
    private static String m3367v(String str) {
        return String.valueOf(str).concat(".apk");
    }

    /* renamed from: w */
    private static void m3366w(File file) {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IllegalArgumentException("File input must be directory when it exists.");
            }
            return;
        }
        file.mkdirs();
        if (file.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file.getAbsolutePath());
        throw new IOException(valueOf.length() != 0 ? "Unable to create directory: ".concat(valueOf) : new String("Unable to create directory: "));
    }

    /* renamed from: a */
    public final void m3388a() {
        File m3371r = m3371r();
        String[] list = m3371r.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(Long.toString(this.f38110a))) {
                    File file = new File(m3371r, str);
                    String valueOf = String.valueOf(file);
                    long j = this.f38110a;
                    StringBuilder sb = new StringBuilder(valueOf.length() + 118);
                    sb.append("FileStorage: removing directory for different version code (directory = ");
                    sb.append(valueOf);
                    sb.append(", current version code = ");
                    sb.append(j);
                    sb.append(")");
                    Log.d("SplitCompat", sb.toString());
                    m3374o(file);
                }
            }
        }
    }

    /* renamed from: b */
    public final File m3387b(String str) {
        return m3368u(m3382g(), m3367v(str));
    }

    /* renamed from: c */
    public final File m3386c(String str) {
        return m3368u(m3373p(), m3367v(str));
    }

    /* renamed from: d */
    public final File m3385d(File file) {
        return m3368u(m3373p(), file.getName());
    }

    /* renamed from: e */
    public final File m3384e(String str, String str2) {
        return m3368u(m3369t(str), str2);
    }

    /* renamed from: f */
    public final File m3383f() {
        return new File(m3372q(), "lock.tmp");
    }

    /* renamed from: g */
    public final File m3382g() {
        File file = new File(m3372q(), "unverified-splits");
        m3366w(file);
        return file;
    }

    /* renamed from: h */
    public final File m3381h(String str) {
        File file = new File(m3372q(), "dex");
        m3366w(file);
        File m3368u = m3368u(file, str);
        m3366w(m3368u);
        return m3368u;
    }

    /* renamed from: i */
    public final Set<C8553r> m3380i() {
        File m3373p = m3373p();
        HashSet hashSet = new HashSet();
        File[] listFiles = m3373p.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.getName().endsWith(".apk")) {
                    String name = file.getName();
                    hashSet.add(new C8553r(file, name.substring(0, name.length() - 4)));
                }
            }
        }
        return hashSet;
    }

    /* renamed from: j */
    public final List<String> m3379j() {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = m3370s().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: k */
    public final void m3378k(String str) {
        m3374o(m3369t(str));
    }

    /* renamed from: l */
    public final void m3377l(File file) {
        C8516t.m3468c(file.getParentFile().getParentFile().equals(m3370s()), "File to remove is not a native library");
        m3374o(file);
    }

    /* renamed from: m */
    public final Set<File> m3376m(String str) {
        HashSet hashSet = new HashSet();
        File[] listFiles = m3369t(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile()) {
                    hashSet.add(file);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: n */
    public final void m3375n(String str) {
        m3374o(m3386c(str));
    }
}

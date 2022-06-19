package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.C15088x;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/d.class */
public final class C15108d {

    /* renamed from: a */
    private final long f54842a;

    /* renamed from: b */
    private final Context f54843b;

    /* renamed from: c */
    private File f54844c;

    public C15108d(Context context) throws PackageManager.NameNotFoundException {
        this.f54843b = context;
        this.f54842a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
    }

    /* renamed from: a */
    public static File m9446a(File file, String str) throws IOException {
        File file2 = new File(file, str);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            return file2;
        }
        throw new IllegalArgumentException("split ID cannot be placed in target directory");
    }

    /* renamed from: b */
    public static void m9443b(File file) throws IOException {
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

    /* renamed from: c */
    private static void m9440c(File file) throws IOException {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                m9440c(file2);
            }
        }
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException(String.format("Failed to delete '%s'", file.getAbsolutePath()));
    }

    /* renamed from: e */
    public static String m9435e(String str) {
        return String.valueOf(str).concat(".apk");
    }

    /* renamed from: g */
    private final File m9432g() throws IOException {
        if (this.f54844c == null) {
            Context context = this.f54843b;
            if (context == null) {
                throw new IllegalStateException("context must be non-null to populate null filesDir");
            }
            this.f54844c = context.getFilesDir();
        }
        File file = new File(this.f54844c, "splitcompat");
        m9443b(file);
        return file;
    }

    /* renamed from: a */
    public final File m9445a(String str) throws IOException {
        return m9446a(m9441c(), m9435e(str));
    }

    /* renamed from: a */
    public final void m9448a() throws IOException {
        File m9432g = m9432g();
        String[] list = m9432g.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(Long.toString(this.f54842a))) {
                    File file = new File(m9432g, str);
                    String valueOf = String.valueOf(file);
                    long j = this.f54842a;
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118);
                    sb.append("FileStorage: removing directory for different version code (directory = ");
                    sb.append(valueOf);
                    sb.append(", current version code = ");
                    sb.append(j);
                    sb.append(")");
                    m9440c(file);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m9447a(File file) throws IOException {
        C15088x.m9479a(file.getParentFile().getParentFile().equals(m9436e()), "File to remove is not a native library");
        m9440c(file);
    }

    /* renamed from: b */
    public final File m9444b() throws IOException {
        File file = new File(m9438d(), "unverified-splits");
        m9443b(file);
        return file;
    }

    /* renamed from: b */
    public final File m9442b(String str) throws IOException {
        File m9446a = m9446a(m9436e(), str);
        m9443b(m9446a);
        return m9446a;
    }

    /* renamed from: c */
    public final File m9441c() throws IOException {
        File file = new File(m9438d(), "verified-splits");
        m9443b(file);
        return file;
    }

    /* renamed from: c */
    public final void m9439c(String str) throws IOException {
        m9440c(m9442b(str));
    }

    /* renamed from: d */
    public final File m9438d() throws IOException {
        File file = new File(m9432g(), Long.toString(this.f54842a));
        m9443b(file);
        return file;
    }

    /* renamed from: d */
    public final Set<File> m9437d(String str) throws IOException {
        HashSet hashSet = new HashSet();
        File[] listFiles = m9442b(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile()) {
                    hashSet.add(file);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: e */
    public final File m9436e() throws IOException {
        File file = new File(m9438d(), "native-libraries");
        m9443b(file);
        return file;
    }

    /* renamed from: f */
    public final Set<C15122r> m9434f() throws IOException {
        File m9441c = m9441c();
        HashSet hashSet = new HashSet();
        File[] listFiles = m9441c.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.getName().endsWith(".apk")) {
                    String name = file.getName();
                    hashSet.add(new C15122r(file, name.substring(0, name.length() - 4)));
                }
            }
        }
        return hashSet;
    }

    /* renamed from: f */
    public final void m9433f(String str) throws IOException {
        m9440c(m9445a(str));
    }
}

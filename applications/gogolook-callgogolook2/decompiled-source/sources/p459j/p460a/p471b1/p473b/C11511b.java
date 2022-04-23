package p459j.p460a.p471b1.p473b;

import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import p626l.C14989s;
import p626l.p640y.C15086c;
import p626l.p640y.C15103n;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b1.b.b */
/* loaded from: classes3-dex2jar.jar:j/a/b1/b/b.class */
public final class C11511b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long m9431a(java.io.File r6, java.io.PrintStream r7) throws java.lang.Throwable {
        /*
            r0 = r6
            java.lang.String r1 = "receiver$0"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r7
            java.lang.String r1 = "ps"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r6
            boolean r0 = r0.exists()     // Catch: all -> 0x00b8
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b5
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.getPath()     // Catch: all -> 0x00b8
            r0.println(r1)     // Catch: all -> 0x00b8
            r0 = r6
            java.io.File[] r0 = r0.listFiles()     // Catch: all -> 0x00b8
            r13 = r0
            r0 = r13
            int r0 = r0.length     // Catch: all -> 0x00b8
            r14 = r0
            r0 = 0
            r15 = r0
        L_0x0030:
            r0 = r9
            r11 = r0
            r0 = r15
            r1 = r14
            if (r0 >= r1) goto L_0x00b5
            r0 = r13
            r1 = r15
            r0 = r0[r1]
            r16 = r0
            r0 = r16
            java.lang.String r1 = "file"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)     // Catch: all -> 0x00b8
            r0 = r16
            boolean r0 = r0.isDirectory()     // Catch: all -> 0x00b8
            if (r0 == 0) goto L_0x005b
            r0 = r16
            r1 = r7
            long r0 = m9431a(r0, r1)     // Catch: all -> 0x00b8
            r11 = r0
            goto L_0x00aa
        L_0x005b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00b8
            r17 = r0
            r0 = r17
            r0.<init>()     // Catch: all -> 0x00b8
            r0 = r17
            r1 = r16
            long r1 = r1.length()     // Catch: all -> 0x00b8
            r2 = 1000(0x3e8, float:1.401E-42)
            long r2 = (long) r2     // Catch: all -> 0x00b8
            long r1 = r1 / r2
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00b8
            r0 = r17
            java.lang.String r1 = " KB "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00b8
            r0 = r17
            r1 = r6
            java.lang.String r1 = r1.getPath()     // Catch: all -> 0x00b8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00b8
            r0 = r17
            r1 = 47
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00b8
            r0 = r17
            r1 = r16
            java.lang.String r1 = r1.getName()     // Catch: all -> 0x00b8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00b8
            r0 = r7
            r1 = r17
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00b8
            r0.println(r1)     // Catch: all -> 0x00b8
            r0 = r16
            long r0 = r0.length()     // Catch: all -> 0x00b8
            r11 = r0
        L_0x00aa:
            r0 = r9
            r1 = r11
            long r0 = r0 + r1
            r9 = r0
            int r15 = r15 + 1
            goto L_0x0030
        L_0x00b5:
            r0 = r11
            return r0
        L_0x00b8:
            r6 = move-exception
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p471b1.p473b.C11511b.m9431a(java.io.File, java.io.PrintStream):long");
    }

    /* renamed from: a */
    public static final File m9434a(File file, File file2) {
        C15149k.m377b(file, "receiver$0");
        C15149k.m377b(file2, AnimatedVectorDrawableCompat.TARGET);
        m9432a(file, file2, true, 0, 4, null);
        return file2;
    }

    /* renamed from: a */
    public static final File m9433a(File file, File file2, boolean z, int i) {
        C15149k.m377b(file, "receiver$0");
        C15149k.m377b(file2, AnimatedVectorDrawableCompat.TARGET);
        C15103n.m428a(file, file2, z, i);
        return file2;
    }

    /* renamed from: a */
    public static /* synthetic */ File m9432a(File file, File file2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        m9433a(file, file2, z, i);
        return file2;
    }

    /* renamed from: a */
    public static final PrintStream m9429a(File file, boolean z, String str) {
        C15149k.m377b(file, "receiver$0");
        C15149k.m377b(str, "encoding");
        return m9425a(new FileOutputStream(file), z, str);
    }

    /* renamed from: a */
    public static /* synthetic */ PrintStream m9428a(File file, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = "UTF-8";
        }
        return m9429a(file, z, str);
    }

    /* renamed from: a */
    public static final PrintStream m9427a(OutputStream outputStream) throws UnsupportedEncodingException {
        return m9424a(outputStream, false, (String) null, 3, (Object) null);
    }

    /* renamed from: a */
    public static final PrintStream m9425a(OutputStream outputStream, boolean z, String str) throws UnsupportedEncodingException {
        C15149k.m377b(outputStream, "receiver$0");
        C15149k.m377b(str, "encoding");
        return new PrintStream(outputStream, z, str);
    }

    /* renamed from: a */
    public static /* synthetic */ PrintStream m9424a(OutputStream outputStream, boolean z, String str, int i, Object obj) throws UnsupportedEncodingException {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = "UTF-8";
        }
        return m9425a(outputStream, z, str);
    }

    /* renamed from: a */
    public static final <S extends OutputStream, R> R m9426a(S s, AbstractC15118l<? super S, ? extends R> lVar) throws Throwable {
        R r;
        C15149k.m377b(lVar, "action");
        if (s != null) {
            try {
                r = (R) lVar.invoke(s);
                C15148j.m389b(1);
                s.flush();
                C15148j.m390a(1);
                C14989s sVar = C14989s.f33022a;
                C15148j.m389b(1);
                C15086c.m447a(s, null);
                C15148j.m390a(1);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            r = null;
        }
        return r;
    }

    /* renamed from: a */
    public static final void m9430a(File file, AbstractC15118l<? super File, C14989s> lVar) throws IOException {
        C15149k.m377b(file, "receiver$0");
        C15149k.m377b(lVar, "action");
        if (file.exists()) {
            return;
        }
        if (file.mkdirs()) {
            lVar.invoke(file);
            return;
        }
        throw new IOException("Failure occurs when creating folders");
    }

    /* renamed from: a */
    public static final boolean m9435a(File file) {
        C15149k.m377b(file, "receiver$0");
        return !file.exists() ? file.mkdirs() : false;
    }

    /* renamed from: b */
    public static final File m9423b(File file) throws IOException, IllegalStateException {
        C15149k.m377b(file, "receiver$0");
        if (!file.exists()) {
            m9422c(file);
        }
        return file;
    }

    /* renamed from: c */
    public static final void m9422c(File file) throws IOException, IllegalStateException {
        if (!file.createNewFile()) {
            throw new IllegalStateException("Unable to create new file: " + file.getPath());
        }
    }

    /* renamed from: d */
    public static final boolean m9421d(File file) {
        C15149k.m377b(file, "receiver$0");
        return file.exists() ? file.delete() : false;
    }

    /* renamed from: e */
    public static final PrintStream m9420e(File file) {
        return m9428a(file, false, (String) null, 3, (Object) null);
    }

    /* renamed from: f */
    public static final File m9419f(File file) throws IOException, IllegalStateException {
        C15149k.m377b(file, "receiver$0");
        if (!file.isDirectory()) {
            if (!file.exists()) {
                m9422c(file);
            } else if (file.isFile()) {
                file.delete();
                m9422c(file);
            }
            return file;
        }
        throw new IllegalStateException(file.getPath() + " is a directory, not a file");
    }

    /* renamed from: g */
    public static final File m9418g(File file) throws IllegalStateException {
        C15149k.m377b(file, "receiver$0");
        if (!file.isFile()) {
            if (!file.exists()) {
                file.mkdir();
            } else if (file.isDirectory()) {
                C15103n.m427c(file);
                file.mkdir();
            }
            return file;
        }
        throw new IllegalStateException(file.getPath() + " is a file, not a directory");
    }
}

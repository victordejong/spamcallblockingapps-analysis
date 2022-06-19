package com.bumptech.glide.p068a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bumptech.glide.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a.class */
public final class C1345a implements Closeable {

    /* renamed from: b */
    private final File f4444b;

    /* renamed from: c */
    private final File f4445c;

    /* renamed from: d */
    private final File f4446d;

    /* renamed from: e */
    private final File f4447e;

    /* renamed from: f */
    private final int f4448f;

    /* renamed from: g */
    private long f4449g;

    /* renamed from: h */
    private final int f4450h;

    /* renamed from: j */
    private Writer f4452j;

    /* renamed from: l */
    private int f4454l;

    /* renamed from: i */
    private long f4451i = 0;

    /* renamed from: k */
    private final LinkedHashMap<String, C1349c> f4453k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: m */
    private long f4455m = 0;

    /* renamed from: a */
    final ThreadPoolExecutor f4443a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC1347a());

    /* renamed from: n */
    private final Callable<Void> f4456n = new Callable<Void>() { // from class: com.bumptech.glide.a.a.1
        /* renamed from: a */
        public Void call() {
            synchronized (C1345a.this) {
                if (C1345a.this.f4452j == null) {
                    return null;
                }
                C1345a.this.m17382g();
                if (C1345a.this.m17386e()) {
                    C1345a.this.m17389d();
                    C1345a.this.f4454l = 0;
                }
                return null;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$a.class */
    public static final class ThreadFactoryC1347a implements ThreadFactory {
        private ThreadFactoryC1347a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread;
            synchronized (this) {
                thread = new Thread(runnable, "glide-disk-lru-cache-thread");
                thread.setPriority(1);
            }
            return thread;
        }
    }

    /* renamed from: com.bumptech.glide.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$b.class */
    public final class C1348b {

        /* renamed from: b */
        private final C1349c f4459b;

        /* renamed from: c */
        private final boolean[] f4460c;

        /* renamed from: d */
        private boolean f4461d;

        private C1348b(C1349c c1349c) {
            C1345a.this = r4;
            this.f4459b = c1349c;
            this.f4460c = c1349c.f4467f ? null : new boolean[r4.f4450h];
        }

        /* renamed from: a */
        public File m17379a(int i) {
            File m17366b;
            synchronized (C1345a.this) {
                if (this.f4459b.f4468g != this) {
                    throw new IllegalStateException();
                }
                if (!this.f4459b.f4467f) {
                    this.f4460c[i] = true;
                }
                m17366b = this.f4459b.m17366b(i);
                if (!C1345a.this.f4444b.exists()) {
                    C1345a.this.f4444b.mkdirs();
                }
            }
            return m17366b;
        }

        /* renamed from: a */
        public void m17380a() {
            C1345a.this.m17404a(this, true);
            this.f4461d = true;
        }

        /* renamed from: b */
        public void m17377b() {
            C1345a.this.m17404a(this, false);
        }

        /* renamed from: c */
        public void m17375c() {
            if (!this.f4461d) {
                try {
                    m17377b();
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$c.class */
    public final class C1349c {

        /* renamed from: a */
        File[] f4462a;

        /* renamed from: b */
        File[] f4463b;

        /* renamed from: d */
        private final String f4465d;

        /* renamed from: e */
        private final long[] f4466e;

        /* renamed from: f */
        private boolean f4467f;

        /* renamed from: g */
        private C1348b f4468g;

        /* renamed from: h */
        private long f4469h;

        private C1349c(String str) {
            C1345a.this = r8;
            this.f4465d = str;
            this.f4466e = new long[r8.f4450h];
            this.f4462a = new File[r8.f4450h];
            this.f4463b = new File[r8.f4450h];
            StringBuilder append = new StringBuilder(str).append('.');
            int length = append.length();
            for (int i = 0; i < r8.f4450h; i++) {
                append.append(i);
                this.f4462a[i] = new File(r8.f4444b, append.toString());
                append.append(".tmp");
                this.f4463b[i] = new File(r8.f4444b, append.toString());
                append.setLength(length);
            }
        }

        /* renamed from: a */
        public void m17367a(String[] strArr) {
            if (strArr.length != C1345a.this.f4450h) {
                throw m17364b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f4466e[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw m17364b(strArr);
                }
            }
        }

        /* renamed from: b */
        private IOException m17364b(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public File m17373a(int i) {
            return this.f4462a[i];
        }

        /* renamed from: a */
        public String m17374a() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4466e) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        /* renamed from: b */
        public File m17366b(int i) {
            return this.f4463b[i];
        }
    }

    /* renamed from: com.bumptech.glide.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$d.class */
    public final class C1350d {

        /* renamed from: b */
        private final String f4471b;

        /* renamed from: c */
        private final long f4472c;

        /* renamed from: d */
        private final long[] f4473d;

        /* renamed from: e */
        private final File[] f4474e;

        private C1350d(String str, long j, File[] fileArr, long[] jArr) {
            C1345a.this = r5;
            this.f4471b = str;
            this.f4472c = j;
            this.f4474e = fileArr;
            this.f4473d = jArr;
        }

        /* renamed from: a */
        public File m17360a(int i) {
            return this.f4474e[i];
        }
    }

    private C1345a(File file, int i, int i2, long j) {
        this.f4444b = file;
        this.f4448f = i;
        this.f4445c = new File(file, "journal");
        this.f4446d = new File(file, "journal.tmp");
        this.f4447e = new File(file, "journal.bkp");
        this.f4450h = i2;
        this.f4449g = j;
    }

    /* renamed from: a */
    private C1348b m17396a(String str, long j) {
        C1348b c1348b;
        synchronized (this) {
            m17384f();
            C1349c c1349c = this.f4453k.get(str);
            if (j == -1 || (c1349c != null && c1349c.f4469h == j)) {
                if (c1349c == null) {
                    c1349c = new C1349c(str);
                    this.f4453k.put(str, c1349c);
                } else if (c1349c.f4468g != null) {
                    c1348b = null;
                }
                C1348b c1348b2 = new C1348b(c1349c);
                c1349c.f4468g = c1348b2;
                this.f4452j.append((CharSequence) "DIRTY");
                this.f4452j.append(' ');
                this.f4452j.append((CharSequence) str);
                this.f4452j.append('\n');
                this.f4452j.flush();
                c1348b = c1348b2;
            } else {
                c1348b = null;
            }
        }
        return c1348b;
    }

    /* renamed from: a */
    public static C1345a m17399a(File file, int i, int i2, long j) {
        C1345a c1345a;
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m17398a(file2, file3, false);
            }
        }
        C1345a c1345a2 = new C1345a(file, i, i2, j);
        if (c1345a2.f4445c.exists()) {
            try {
                c1345a2.m17395b();
                c1345a2.m17392c();
                c1345a = c1345a2;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                c1345a2.m17405a();
            }
            return c1345a;
        }
        file.mkdirs();
        c1345a = new C1345a(file, i, i2, j);
        c1345a.m17389d();
        return c1345a;
    }

    /* renamed from: a */
    public void m17404a(C1348b c1348b, boolean z) {
        synchronized (this) {
            C1349c c1349c = c1348b.f4459b;
            if (c1349c.f4468g != c1348b) {
                throw new IllegalStateException();
            }
            int i = 0;
            if (z) {
                i = 0;
                if (!c1349c.f4467f) {
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= this.f4450h) {
                            break;
                        } else if (!c1348b.f4460c[i2]) {
                            c1348b.m17377b();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!c1349c.m17366b(i2).exists()) {
                            c1348b.m17377b();
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.f4450h) {
                File m17366b = c1349c.m17366b(i);
                if (!z) {
                    m17400a(m17366b);
                } else if (m17366b.exists()) {
                    File m17373a = c1349c.m17373a(i);
                    m17366b.renameTo(m17373a);
                    long j = c1349c.f4466e[i];
                    long length = m17373a.length();
                    c1349c.f4466e[i] = length;
                    this.f4451i = (this.f4451i - j) + length;
                }
                i++;
            }
            this.f4454l++;
            c1349c.f4468g = null;
            if (c1349c.f4467f || z) {
                c1349c.f4467f = true;
                this.f4452j.append((CharSequence) "CLEAN");
                this.f4452j.append(' ');
                this.f4452j.append((CharSequence) c1349c.f4465d);
                this.f4452j.append((CharSequence) c1349c.m17374a());
                this.f4452j.append('\n');
                if (z) {
                    long j2 = this.f4455m;
                    this.f4455m = 1 + j2;
                    c1349c.f4469h = j2;
                }
            } else {
                this.f4453k.remove(c1349c.f4465d);
                this.f4452j.append((CharSequence) "REMOVE");
                this.f4452j.append(' ');
                this.f4452j.append((CharSequence) c1349c.f4465d);
                this.f4452j.append('\n');
            }
            this.f4452j.flush();
            if (this.f4451i > this.f4449g || m17386e()) {
                this.f4443a.submit(this.f4456n);
            }
        }
    }

    /* renamed from: a */
    private static void m17400a(File file) {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: a */
    private static void m17398a(File file, File file2, boolean z) {
        if (z) {
            m17400a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: b */
    private void m17395b() {
        C1351b c1351b = new C1351b(new FileInputStream(this.f4445c), C1353c.f4481a);
        try {
            String m17359a = c1351b.m17359a();
            String m17359a2 = c1351b.m17359a();
            String m17359a3 = c1351b.m17359a();
            String m17359a4 = c1351b.m17359a();
            String m17359a5 = c1351b.m17359a();
            if (!"libcore.io.DiskLruCache".equals(m17359a) || !"1".equals(m17359a2) || !Integer.toString(this.f4448f).equals(m17359a3) || !Integer.toString(this.f4450h).equals(m17359a4) || !"".equals(m17359a5)) {
                throw new IOException("unexpected journal header: [" + m17359a + ", " + m17359a2 + ", " + m17359a4 + ", " + m17359a5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m17387d(c1351b.m17359a());
                    i++;
                } catch (EOFException e) {
                    this.f4454l = i - this.f4453k.size();
                    if (c1351b.m17357b()) {
                        m17389d();
                    } else {
                        this.f4452j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4445c, true), C1353c.f4481a));
                    }
                    C1353c.m17355a(c1351b);
                    return;
                }
            }
        } catch (Throwable th) {
            C1353c.m17355a(c1351b);
            throw th;
        }
    }

    /* renamed from: c */
    private void m17392c() {
        m17400a(this.f4446d);
        Iterator<C1349c> it = this.f4453k.values().iterator();
        while (it.hasNext()) {
            C1349c next = it.next();
            if (next.f4468g == null) {
                for (int i = 0; i < this.f4450h; i++) {
                    this.f4451i += next.f4466e[i];
                }
            } else {
                next.f4468g = null;
                for (int i2 = 0; i2 < this.f4450h; i2++) {
                    m17400a(next.m17373a(i2));
                    m17400a(next.m17366b(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: d */
    public void m17389d() {
        synchronized (this) {
            if (this.f4452j != null) {
                this.f4452j.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4446d), C1353c.f4481a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4448f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4450h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C1349c c1349c : this.f4453k.values()) {
                if (c1349c.f4468g != null) {
                    bufferedWriter.write("DIRTY " + c1349c.f4465d + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c1349c.f4465d + c1349c.m17374a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f4445c.exists()) {
                m17398a(this.f4445c, this.f4447e, true);
            }
            m17398a(this.f4446d, this.f4445c, false);
            this.f4447e.delete();
            this.f4452j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4445c, true), C1353c.f4481a));
        }
    }

    /* renamed from: d */
    private void m17387d(String str) {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            str2 = str.substring(i);
            if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.f4453k.remove(str2);
                return;
            }
        } else {
            str2 = str.substring(i, indexOf2);
        }
        C1349c c1349c = this.f4453k.get(str2);
        C1349c c1349c2 = c1349c;
        if (c1349c == null) {
            c1349c2 = new C1349c(str2);
            this.f4453k.put(str2, c1349c2);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c1349c2.f4467f = true;
            c1349c2.f4468g = null;
            c1349c2.m17367a(split);
        } else if (indexOf2 == -1 && indexOf == "DIRTY".length() && str.startsWith("DIRTY")) {
            c1349c2.f4468g = new C1348b(c1349c2);
        } else if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: e */
    public boolean m17386e() {
        return this.f4454l >= 2000 && this.f4454l >= this.f4453k.size();
    }

    /* renamed from: f */
    private void m17384f() {
        if (this.f4452j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: g */
    public void m17382g() {
        while (this.f4451i > this.f4449g) {
            m17390c(this.f4453k.entrySet().iterator().next().getKey());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
        r10.f4454l++;
        r10.f4452j.append((java.lang.CharSequence) "READ");
        r10.f4452j.append(' ');
        r10.f4452j.append((java.lang.CharSequence) r11);
        r10.f4452j.append('\n');
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
        if (m17386e() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        r10.f4443a.submit(r10.f4456n);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009b, code lost:
        r14 = new com.bumptech.glide.p068a.C1345a.C1350d(r11, r0.f4469h, r0.f4462a, r0.f4466e);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bumptech.glide.p068a.C1345a.C1350d m17397a(java.lang.String r11) {
        /*
            r10 = this;
            r0 = 0
            r12 = r0
            r0 = r10
            monitor-enter(r0)
            r0 = r10
            r0.m17384f()     // Catch: java.lang.Throwable -> Lb3
            r0 = r10
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$c> r0 = r0.f4453k     // Catch: java.lang.Throwable -> Lb3
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lb3
            com.bumptech.glide.a.a$c r0 = (com.bumptech.glide.p068a.C1345a.C1349c) r0     // Catch: java.lang.Throwable -> Lb3
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L20
            r0 = r12
            r14 = r0
        L1b:
            r0 = r10
            monitor-exit(r0)
            r0 = r14
            return r0
        L20:
            r0 = r12
            r14 = r0
            r0 = r13
            boolean r0 = com.bumptech.glide.p068a.C1345a.C1349c.m17362d(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L1b
            r0 = r13
            java.io.File[] r0 = r0.f4462a     // Catch: java.lang.Throwable -> Lb3
            r15 = r0
            r0 = r15
            int r0 = r0.length     // Catch: java.lang.Throwable -> Lb3
            r16 = r0
            r0 = 0
            r17 = r0
        L38:
            r0 = r17
            r1 = r16
            if (r0 >= r1) goto L53
            r0 = r12
            r14 = r0
            r0 = r15
            r1 = r17
            r0 = r0[r1]     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L1b
            int r17 = r17 + 1
            goto L38
        L53:
            r0 = r10
            r1 = r10
            int r1 = r1.f4454l     // Catch: java.lang.Throwable -> Lb3
            r2 = 1
            int r1 = r1 + r2
            r0.f4454l = r1     // Catch: java.lang.Throwable -> Lb3
            r0 = r10
            java.io.Writer r0 = r0.f4452j     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r1 = "READ"
            java.io.Writer r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb3
            r0 = r10
            java.io.Writer r0 = r0.f4452j     // Catch: java.lang.Throwable -> Lb3
            r1 = 32
            java.io.Writer r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb3
            r0 = r10
            java.io.Writer r0 = r0.f4452j     // Catch: java.lang.Throwable -> Lb3
            r1 = r11
            java.io.Writer r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb3
            r0 = r10
            java.io.Writer r0 = r0.f4452j     // Catch: java.lang.Throwable -> Lb3
            r1 = 10
            java.io.Writer r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lb3
            r0 = r10
            boolean r0 = r0.m17386e()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L98
            r0 = r10
            java.util.concurrent.ThreadPoolExecutor r0 = r0.f4443a     // Catch: java.lang.Throwable -> Lb3
            r1 = r10
            java.util.concurrent.Callable<java.lang.Void> r1 = r1.f4456n     // Catch: java.lang.Throwable -> Lb3
            java.util.concurrent.Future r0 = r0.submit(r1)     // Catch: java.lang.Throwable -> Lb3
        L98:
            com.bumptech.glide.a.a$d r0 = new com.bumptech.glide.a.a$d     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb3
            r1 = r0
            r2 = r10
            r3 = r11
            r4 = r13
            long r4 = com.bumptech.glide.p068a.C1345a.C1349c.m17361e(r4)     // Catch: java.lang.Throwable -> Lb3
            r5 = r13
            java.io.File[] r5 = r5.f4462a     // Catch: java.lang.Throwable -> Lb3
            r6 = r13
            long[] r6 = com.bumptech.glide.p068a.C1345a.C1349c.m17365b(r6)     // Catch: java.lang.Throwable -> Lb3
            r7 = 0
            r1.<init>(r3, r4, r5, r6)     // Catch: java.lang.Throwable -> Lb3
            r14 = r0
            goto L1b
        Lb3:
            r11 = move-exception
            r0 = r10
            monitor-exit(r0)
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p068a.C1345a.m17397a(java.lang.String):com.bumptech.glide.a.a$d");
    }

    /* renamed from: a */
    public void m17405a() {
        close();
        C1353c.m17354a(this.f4444b);
    }

    /* renamed from: b */
    public C1348b m17393b(String str) {
        return m17396a(str, -1L);
    }

    /* renamed from: c */
    public boolean m17390c(String str) {
        boolean z;
        synchronized (this) {
            m17384f();
            C1349c c1349c = this.f4453k.get(str);
            if (c1349c == null || c1349c.f4468g != null) {
                z = false;
            } else {
                for (int i = 0; i < this.f4450h; i++) {
                    File m17373a = c1349c.m17373a(i);
                    if (m17373a.exists() && !m17373a.delete()) {
                        throw new IOException("failed to delete " + m17373a);
                    }
                    this.f4451i -= c1349c.f4466e[i];
                    c1349c.f4466e[i] = 0;
                }
                this.f4454l++;
                this.f4452j.append((CharSequence) "REMOVE");
                this.f4452j.append(' ');
                this.f4452j.append((CharSequence) str);
                this.f4452j.append('\n');
                this.f4453k.remove(str);
                if (m17386e()) {
                    this.f4443a.submit(this.f4456n);
                }
                z = true;
            }
        }
        return z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f4452j != null) {
                Iterator it = new ArrayList(this.f4453k.values()).iterator();
                while (it.hasNext()) {
                    C1349c c1349c = (C1349c) it.next();
                    if (c1349c.f4468g != null) {
                        c1349c.f4468g.m17377b();
                    }
                }
                m17382g();
                this.f4452j.close();
                this.f4452j = null;
            }
        }
    }
}

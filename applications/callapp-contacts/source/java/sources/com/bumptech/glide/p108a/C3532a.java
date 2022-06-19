package com.bumptech.glide.p108a;

import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
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
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bumptech.glide.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a.class */
public final class C3532a implements Closeable {

    /* renamed from: b */
    private final File f13440b;

    /* renamed from: c */
    private final File f13441c;

    /* renamed from: d */
    private final File f13442d;

    /* renamed from: e */
    private final File f13443e;

    /* renamed from: f */
    private final int f13444f;

    /* renamed from: g */
    private long f13445g;

    /* renamed from: h */
    private final int f13446h;

    /* renamed from: j */
    private Writer f13448j;

    /* renamed from: l */
    private int f13450l;

    /* renamed from: i */
    private long f13447i = 0;

    /* renamed from: k */
    private final LinkedHashMap<String, C3536c> f13449k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: m */
    private long f13451m = 0;

    /* renamed from: a */
    final ThreadPoolExecutor f13439a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC3534a());

    /* renamed from: n */
    private final Callable<Void> f13452n = new Callable<Void>() { // from class: com.bumptech.glide.a.a.1
        {
            C3532a.this = this;
        }

        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (C3532a.this) {
                if (C3532a.this.f13448j == null) {
                    return null;
                }
                C3532a.this.m37766f();
                if (C3532a.this.m37770d()) {
                    C3532a.this.m37773c();
                    C3532a.this.f13450l = 0;
                }
                return null;
            }
        }
    };

    /* renamed from: com.bumptech.glide.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$a.class */
    public static final class ThreadFactoryC3534a implements ThreadFactory {
        private ThreadFactoryC3534a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
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
    public final class C3535b {

        /* renamed from: a */
        final C3536c f13454a;

        /* renamed from: b */
        final boolean[] f13455b;

        /* renamed from: c */
        public boolean f13456c;

        private C3535b(C3536c c3536c) {
            C3532a.this = r4;
            this.f13454a = c3536c;
            this.f13455b = c3536c.f13462e ? null : new boolean[r4.f13446h];
        }

        /* renamed from: a */
        public final File m37762a() throws IOException {
            File file;
            synchronized (C3532a.this) {
                if (this.f13454a.f13463f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f13454a.f13462e) {
                    this.f13455b[0] = true;
                }
                file = this.f13454a.f13461d[0];
                C3532a.this.f13440b.mkdirs();
            }
            return file;
        }

        /* renamed from: b */
        public final void m37761b() throws IOException {
            C3532a.this.m37785a(this, false);
        }

        /* renamed from: c */
        public final void m37760c() {
            if (!this.f13456c) {
                try {
                    m37761b();
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$c.class */
    public final class C3536c {

        /* renamed from: a */
        final String f13458a;

        /* renamed from: b */
        final long[] f13459b;

        /* renamed from: c */
        File[] f13460c;

        /* renamed from: d */
        File[] f13461d;

        /* renamed from: e */
        boolean f13462e;

        /* renamed from: f */
        C3535b f13463f;

        /* renamed from: g */
        long f13464g;

        private C3536c(String str) {
            C3532a.this = r8;
            this.f13458a = str;
            this.f13459b = new long[r8.f13446h];
            this.f13460c = new File[r8.f13446h];
            this.f13461d = new File[r8.f13446h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < r8.f13446h; i++) {
                sb.append(i);
                this.f13460c[i] = new File(r8.f13440b, sb.toString());
                sb.append(".tmp");
                this.f13461d[i] = new File(r8.f13440b, sb.toString());
                sb.setLength(length);
            }
        }

        /* renamed from: b */
        private static IOException m37757b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public final String m37759a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f13459b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: a */
        final void m37758a(String[] strArr) throws IOException {
            if (strArr.length == C3532a.this.f13446h) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f13459b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw m37757b(strArr);
                    }
                }
                return;
            }
            throw m37757b(strArr);
        }
    }

    /* renamed from: com.bumptech.glide.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$d.class */
    public final class C3537d {

        /* renamed from: a */
        public final File[] f13466a;

        /* renamed from: c */
        private final String f13468c;

        /* renamed from: d */
        private final long f13469d;

        /* renamed from: e */
        private final long[] f13470e;

        private C3537d(String str, long j, File[] fileArr, long[] jArr) {
            C3532a.this = r5;
            this.f13468c = str;
            this.f13469d = j;
            this.f13466a = fileArr;
            this.f13470e = jArr;
        }
    }

    private C3532a(File file, int i, int i2, long j) {
        this.f13440b = file;
        this.f13444f = i;
        this.f13441c = new File(file, "journal");
        this.f13442d = new File(file, "journal.tmp");
        this.f13443e = new File(file, "journal.bkp");
        this.f13446h = i2;
        this.f13445g = j;
    }

    /* renamed from: a */
    public static C3532a m37781a(File file, long j) throws IOException {
        if (j > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m37780a(file2, file3, false);
                }
            }
            C3532a c3532a = new C3532a(file, 1, 1, j);
            if (c3532a.f13441c.exists()) {
                try {
                    c3532a.m37786a();
                    c3532a.m37777b();
                    return c3532a;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    c3532a.close();
                    C3540c.m37753a(c3532a.f13440b);
                }
            }
            file.mkdirs();
            C3532a c3532a2 = new C3532a(file, 1, 1, j);
            c3532a2.m37773c();
            return c3532a2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    private void m37786a() throws IOException {
        String m37756a;
        String str;
        C3538b c3538b = new C3538b(new FileInputStream(this.f13441c), C3540c.f13477a);
        try {
            String m37756a2 = c3538b.m37756a();
            String m37756a3 = c3538b.m37756a();
            String m37756a4 = c3538b.m37756a();
            String m37756a5 = c3538b.m37756a();
            String m37756a6 = c3538b.m37756a();
            if (!"libcore.io.DiskLruCache".equals(m37756a2) || !"1".equals(m37756a3) || !Integer.toString(this.f13444f).equals(m37756a4) || !Integer.toString(this.f13446h).equals(m37756a5) || !"".equals(m37756a6)) {
                throw new IOException("unexpected journal header: [" + m37756a2 + ", " + m37756a3 + ", " + m37756a5 + ", " + m37756a6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m37756a = c3538b.m37756a();
                    int indexOf = m37756a.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: ".concat(String.valueOf(m37756a)));
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = m37756a.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        String substring = m37756a.substring(i2);
                        str = substring;
                        if (indexOf == 6) {
                            str = substring;
                            if (m37756a.startsWith("REMOVE")) {
                                this.f13449k.remove(substring);
                                i++;
                            }
                        }
                    } else {
                        str = m37756a.substring(i2, indexOf2);
                    }
                    C3536c c3536c = this.f13449k.get(str);
                    C3536c c3536c2 = c3536c;
                    if (c3536c == null) {
                        c3536c2 = new C3536c(str);
                        this.f13449k.put(str, c3536c2);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && m37756a.startsWith("CLEAN")) {
                        String[] split = m37756a.substring(indexOf2 + 1).split(StringUtils.SPACE);
                        c3536c2.f13462e = true;
                        c3536c2.f13463f = null;
                        c3536c2.m37758a(split);
                    } else if (indexOf2 == -1 && indexOf == 5 && m37756a.startsWith("DIRTY")) {
                        c3536c2.f13463f = new C3535b(c3536c2);
                    } else if (indexOf2 != -1 || indexOf != 4 || !m37756a.startsWith("READ")) {
                        break;
                    }
                    i++;
                } catch (EOFException e) {
                    this.f13450l = i - this.f13449k.size();
                    boolean z = false;
                    if (c3538b.f13472b == -1) {
                        z = true;
                    }
                    if (z) {
                        m37773c();
                    } else {
                        this.f13448j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f13441c, true), C3540c.f13477a));
                    }
                    C3540c.m37754a(c3538b);
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(String.valueOf(m37756a)));
        } catch (Throwable th) {
            C3540c.m37754a(c3538b);
            throw th;
        }
    }

    /* renamed from: a */
    public void m37785a(C3535b c3535b, boolean z) throws IOException {
        synchronized (this) {
            C3536c c3536c = c3535b.f13454a;
            if (c3536c.f13463f == c3535b) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c3536c.f13462e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f13446h) {
                                break;
                            } else if (!c3535b.f13455b[i2]) {
                                c3535b.m37761b();
                                throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                            } else if (!c3536c.f13461d[i2].exists()) {
                                c3535b.m37761b();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f13446h) {
                    File file = c3536c.f13461d[i];
                    if (!z) {
                        m37782a(file);
                    } else if (file.exists()) {
                        File file2 = c3536c.f13460c[i];
                        file.renameTo(file2);
                        long j = c3536c.f13459b[i];
                        long length = file2.length();
                        c3536c.f13459b[i] = length;
                        this.f13447i = (this.f13447i - j) + length;
                    }
                    i++;
                }
                this.f13450l++;
                c3536c.f13463f = null;
                if (c3536c.f13462e || z) {
                    c3536c.f13462e = true;
                    this.f13448j.append((CharSequence) "CLEAN");
                    this.f13448j.append(' ');
                    this.f13448j.append((CharSequence) c3536c.f13458a);
                    this.f13448j.append((CharSequence) c3536c.m37759a());
                    this.f13448j.append('\n');
                    if (z) {
                        long j2 = this.f13451m;
                        this.f13451m = 1 + j2;
                        c3536c.f13464g = j2;
                    }
                } else {
                    this.f13449k.remove(c3536c.f13458a);
                    this.f13448j.append((CharSequence) "REMOVE");
                    this.f13448j.append(' ');
                    this.f13448j.append((CharSequence) c3536c.f13458a);
                    this.f13448j.append('\n');
                }
                m37775b(this.f13448j);
                if (this.f13447i > this.f13445g || m37770d()) {
                    this.f13439a.submit(this.f13452n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m37783a(C3532a c3532a, C3535b c3535b, boolean z) throws IOException {
        c3532a.m37785a(c3535b, z);
    }

    /* renamed from: a */
    private static void m37782a(File file) throws IOException {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: a */
    private static void m37780a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m37782a(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: a */
    private static void m37779a(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: b */
    private void m37777b() throws IOException {
        m37782a(this.f13442d);
        Iterator<C3536c> it2 = this.f13449k.values().iterator();
        while (it2.hasNext()) {
            C3536c next = it2.next();
            if (next.f13463f == null) {
                for (int i = 0; i < this.f13446h; i++) {
                    this.f13447i += next.f13459b[i];
                }
            } else {
                next.f13463f = null;
                for (int i2 = 0; i2 < this.f13446h; i2++) {
                    m37782a(next.f13460c[i2]);
                    m37782a(next.f13461d[i2]);
                }
                it2.remove();
            }
        }
    }

    /* renamed from: b */
    private static void m37775b(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: c */
    public void m37773c() throws IOException {
        synchronized (this) {
            Writer writer = this.f13448j;
            if (writer != null) {
                m37779a(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f13442d), C3540c.f13477a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write("1");
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write(Integer.toString(this.f13444f));
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write(Integer.toString(this.f13446h));
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write(StringUtils.f67179LF);
            for (C3536c c3536c : this.f13449k.values()) {
                if (c3536c.f13463f != null) {
                    bufferedWriter.write("DIRTY " + c3536c.f13458a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c3536c.f13458a + c3536c.m37759a() + '\n');
                }
            }
            m37779a(bufferedWriter);
            if (this.f13441c.exists()) {
                m37780a(this.f13441c, this.f13443e, true);
            }
            m37780a(this.f13442d, this.f13441c, false);
            this.f13443e.delete();
            this.f13448j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f13441c, true), C3540c.f13477a));
        }
    }

    /* renamed from: c */
    private boolean m37771c(String str) throws IOException {
        synchronized (this) {
            m37768e();
            C3536c c3536c = this.f13449k.get(str);
            if (c3536c != null && c3536c.f13463f == null) {
                for (int i = 0; i < this.f13446h; i++) {
                    File file = c3536c.f13460c[i];
                    if (file.exists() && !file.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(file)));
                    }
                    this.f13447i -= c3536c.f13459b[i];
                    c3536c.f13459b[i] = 0;
                }
                this.f13450l++;
                this.f13448j.append((CharSequence) "REMOVE");
                this.f13448j.append(' ');
                this.f13448j.append((CharSequence) str);
                this.f13448j.append('\n');
                this.f13449k.remove(str);
                if (m37770d()) {
                    this.f13439a.submit(this.f13452n);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: d */
    public boolean m37770d() {
        int i = this.f13450l;
        return i >= 2000 && i >= this.f13449k.size();
    }

    /* renamed from: e */
    private void m37768e() {
        if (this.f13448j != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* renamed from: f */
    public void m37766f() throws IOException {
        while (this.f13447i > this.f13445g) {
            m37771c(this.f13449k.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: a */
    public final C3537d m37778a(String str) throws IOException {
        synchronized (this) {
            m37768e();
            C3536c c3536c = this.f13449k.get(str);
            if (c3536c == null) {
                return null;
            }
            if (!c3536c.f13462e) {
                return null;
            }
            for (File file : c3536c.f13460c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f13450l++;
            this.f13448j.append((CharSequence) "READ");
            this.f13448j.append(' ');
            this.f13448j.append((CharSequence) str);
            this.f13448j.append('\n');
            if (m37770d()) {
                this.f13439a.submit(this.f13452n);
            }
            return new C3537d(str, c3536c.f13464g, c3536c.f13460c, c3536c.f13459b);
        }
    }

    /* renamed from: b */
    public final C3535b m37774b(String str) throws IOException {
        synchronized (this) {
            m37768e();
            C3536c c3536c = this.f13449k.get(str);
            if (c3536c == null) {
                c3536c = new C3536c(str);
                this.f13449k.put(str, c3536c);
            } else if (c3536c.f13463f != null) {
                return null;
            }
            C3535b c3535b = new C3535b(c3536c);
            c3536c.f13463f = c3535b;
            this.f13448j.append((CharSequence) "DIRTY");
            this.f13448j.append(' ');
            this.f13448j.append((CharSequence) str);
            this.f13448j.append('\n');
            m37775b(this.f13448j);
            return c3535b;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f13448j == null) {
                return;
            }
            Iterator it2 = new ArrayList(this.f13449k.values()).iterator();
            while (it2.hasNext()) {
                C3536c c3536c = (C3536c) it2.next();
                if (c3536c.f13463f != null) {
                    c3536c.f13463f.m37761b();
                }
            }
            m37766f();
            m37779a(this.f13448j);
            this.f13448j = null;
        }
    }
}

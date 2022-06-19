package com.bumptech.glide.p206k;

import android.annotation.TargetApi;
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
/* renamed from: com.bumptech.glide.k.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/a.class */
public final class C3975a implements Closeable {

    /* renamed from: d */
    private final File f12519d;

    /* renamed from: e */
    private final File f12520e;

    /* renamed from: f */
    private final File f12521f;

    /* renamed from: g */
    private final File f12522g;

    /* renamed from: h */
    private final int f12523h;

    /* renamed from: i */
    private long f12524i;

    /* renamed from: j */
    private final int f12525j;

    /* renamed from: l */
    private Writer f12527l;

    /* renamed from: n */
    private int f12529n;

    /* renamed from: k */
    private long f12526k = 0;

    /* renamed from: m */
    private final LinkedHashMap<String, C3979d> f12528m = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: o */
    private long f12530o = 0;

    /* renamed from: p */
    final ThreadPoolExecutor f12531p = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC3977b(null));

    /* renamed from: q */
    private final Callable<Void> f12532q = new CallableC3976a();

    /* renamed from: com.bumptech.glide.k.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/a$a.class */
    public class CallableC3976a implements Callable<Void> {
        CallableC3976a() {
            C3975a.this = r4;
        }

        /* renamed from: a */
        public Void call() {
            synchronized (C3975a.this) {
                if (C3975a.this.f12527l == null) {
                    return null;
                }
                C3975a.this.m23603d0();
                if (C3975a.this.m23612P()) {
                    C3975a.this.m23607Y();
                    C3975a.this.f12529n = 0;
                }
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.k.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/a$b.class */
    public static final class ThreadFactoryC3977b implements ThreadFactory {
        private ThreadFactoryC3977b() {
        }

        /* synthetic */ ThreadFactoryC3977b(CallableC3976a callableC3976a) {
            this();
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

    /* renamed from: com.bumptech.glide.k.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/a$c.class */
    public final class C3978c {

        /* renamed from: a */
        private final C3979d f12534a;

        /* renamed from: b */
        private final boolean[] f12535b;

        /* renamed from: c */
        private boolean f12536c;

        private C3978c(C3979d c3979d) {
            C3975a.this = r4;
            this.f12534a = c3979d;
            this.f12535b = c3979d.f12542e ? null : new boolean[r4.f12525j];
        }

        /* synthetic */ C3978c(C3975a c3975a, C3979d c3979d, CallableC3976a callableC3976a) {
            this(c3979d);
        }

        /* renamed from: a */
        public void m23592a() {
            C3975a.this.m23619A(this, false);
        }

        /* renamed from: b */
        public void m23591b() {
            if (!this.f12536c) {
                try {
                    m23592a();
                } catch (IOException e) {
                }
            }
        }

        /* renamed from: e */
        public void m23588e() {
            C3975a.this.m23619A(this, true);
            this.f12536c = true;
        }

        /* renamed from: f */
        public File m23587f(int i) {
            File m23576k;
            synchronized (C3975a.this) {
                if (this.f12534a.f12543f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f12534a.f12542e) {
                    this.f12535b[i] = true;
                }
                m23576k = this.f12534a.m23576k(i);
                C3975a.this.f12519d.mkdirs();
            }
            return m23576k;
        }
    }

    /* renamed from: com.bumptech.glide.k.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/a$d.class */
    public final class C3979d {

        /* renamed from: a */
        private final String f12538a;

        /* renamed from: b */
        private final long[] f12539b;

        /* renamed from: c */
        File[] f12540c;

        /* renamed from: d */
        File[] f12541d;

        /* renamed from: e */
        private boolean f12542e;

        /* renamed from: f */
        private C3978c f12543f;

        /* renamed from: g */
        private long f12544g;

        private C3979d(String str) {
            C3975a.this = r8;
            this.f12538a = str;
            this.f12539b = new long[r8.f12525j];
            this.f12540c = new File[r8.f12525j];
            this.f12541d = new File[r8.f12525j];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < r8.f12525j; i++) {
                sb.append(i);
                this.f12540c[i] = new File(r8.f12519d, sb.toString());
                sb.append(".tmp");
                this.f12541d[i] = new File(r8.f12519d, sb.toString());
                sb.setLength(length);
            }
        }

        /* synthetic */ C3979d(C3975a c3975a, String str, CallableC3976a callableC3976a) {
            this(str);
        }

        /* renamed from: m */
        private IOException m23574m(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: n */
        public void m23573n(String[] strArr) {
            if (strArr.length == C3975a.this.f12525j) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f12539b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw m23574m(strArr);
                    }
                }
                return;
            }
            throw m23574m(strArr);
        }

        /* renamed from: j */
        public File m23577j(int i) {
            return this.f12540c[i];
        }

        /* renamed from: k */
        public File m23576k(int i) {
            return this.f12541d[i];
        }

        /* renamed from: l */
        public String m23575l() {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f12539b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: com.bumptech.glide.k.a$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/a$e.class */
    public final class C3980e {

        /* renamed from: a */
        private final String f12546a;

        /* renamed from: b */
        private final long f12547b;

        /* renamed from: c */
        private final long[] f12548c;

        /* renamed from: d */
        private final File[] f12549d;

        private C3980e(String str, long j, File[] fileArr, long[] jArr) {
            C3975a.this = r5;
            this.f12546a = str;
            this.f12547b = j;
            this.f12549d = fileArr;
            this.f12548c = jArr;
        }

        /* synthetic */ C3980e(C3975a c3975a, String str, long j, File[] fileArr, long[] jArr, CallableC3976a callableC3976a) {
            this(str, j, fileArr, jArr);
        }

        /* renamed from: a */
        public File m23572a(int i) {
            return this.f12549d[i];
        }
    }

    private C3975a(File file, int i, int i2, long j) {
        this.f12519d = file;
        this.f12523h = i;
        this.f12520e = new File(file, "journal");
        this.f12521f = new File(file, "journal.tmp");
        this.f12522g = new File(file, "journal.bkp");
        this.f12525j = i2;
        this.f12524i = j;
    }

    /* renamed from: A */
    public void m23619A(C3978c c3978c, boolean z) {
        synchronized (this) {
            C3979d c3979d = c3978c.f12534a;
            if (c3979d.f12543f == c3978c) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c3979d.f12542e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f12525j) {
                                break;
                            } else if (!c3978c.f12535b[i2]) {
                                c3978c.m23592a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!c3979d.m23576k(i2).exists()) {
                                c3978c.m23592a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f12525j) {
                    File m23576k = c3979d.m23576k(i);
                    if (!z) {
                        m23617D(m23576k);
                    } else if (m23576k.exists()) {
                        File m23577j = c3979d.m23577j(i);
                        m23576k.renameTo(m23577j);
                        long j = c3979d.f12539b[i];
                        long length = m23577j.length();
                        c3979d.f12539b[i] = length;
                        this.f12526k = (this.f12526k - j) + length;
                    }
                    i++;
                }
                this.f12529n++;
                c3979d.f12543f = null;
                if (c3979d.f12542e || z) {
                    c3979d.f12542e = true;
                    this.f12527l.append((CharSequence) "CLEAN");
                    this.f12527l.append(' ');
                    this.f12527l.append((CharSequence) c3979d.f12538a);
                    this.f12527l.append((CharSequence) c3979d.m23575l());
                    this.f12527l.append('\n');
                    if (z) {
                        long j2 = this.f12530o;
                        this.f12530o = 1 + j2;
                        c3979d.f12544g = j2;
                    }
                } else {
                    this.f12528m.remove(c3979d.f12538a);
                    this.f12527l.append((CharSequence) "REMOVE");
                    this.f12527l.append(' ');
                    this.f12527l.append((CharSequence) c3979d.f12538a);
                    this.f12527l.append('\n');
                }
                m23614L(this.f12527l);
                if (this.f12526k > this.f12524i || m23612P()) {
                    this.f12531p.submit(this.f12532q);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: D */
    private static void m23617D(File file) {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: I */
    private C3978c m23615I(String str, long j) {
        synchronized (this) {
            m23595y();
            C3979d c3979d = this.f12528m.get(str);
            if (j == -1 || (c3979d != null && c3979d.f12544g == j)) {
                if (c3979d == null) {
                    c3979d = new C3979d(this, str, null);
                    this.f12528m.put(str, c3979d);
                } else if (c3979d.f12543f != null) {
                    return null;
                }
                C3978c c3978c = new C3978c(this, c3979d, null);
                c3979d.f12543f = c3978c;
                this.f12527l.append((CharSequence) "DIRTY");
                this.f12527l.append(' ');
                this.f12527l.append((CharSequence) str);
                this.f12527l.append('\n');
                m23614L(this.f12527l);
                return c3978c;
            }
            return null;
        }
    }

    @TargetApi(26)
    /* renamed from: L */
    private static void m23614L(Writer writer) {
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

    /* renamed from: P */
    public boolean m23612P() {
        int i = this.f12529n;
        return i >= 2000 && i >= this.f12528m.size();
    }

    /* renamed from: Q */
    public static C3975a m23611Q(File file, int i, int i2, long j) {
        if (j > 0) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("valueCount <= 0");
            }
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m23604a0(file2, file3, false);
                }
            }
            C3975a c3975a = new C3975a(file, i, i2, j);
            if (c3975a.f12520e.exists()) {
                try {
                    c3975a.m23609U();
                    c3975a.m23610R();
                    return c3975a;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    c3975a.m23618C();
                }
            }
            file.mkdirs();
            C3975a c3975a2 = new C3975a(file, i, i2, j);
            c3975a2.m23607Y();
            return c3975a2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: R */
    private void m23610R() {
        m23617D(this.f12521f);
        Iterator<C3979d> it = this.f12528m.values().iterator();
        while (it.hasNext()) {
            C3979d next = it.next();
            if (next.f12543f == null) {
                for (int i = 0; i < this.f12525j; i++) {
                    this.f12526k += next.f12539b[i];
                }
            } else {
                next.f12543f = null;
                for (int i2 = 0; i2 < this.f12525j; i2++) {
                    m23617D(next.m23577j(i2));
                    m23617D(next.m23576k(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: U */
    private void m23609U() {
        C3981b c3981b = new C3981b(new FileInputStream(this.f12520e), C3983c.f12557a);
        try {
            String m23568g = c3981b.m23568g();
            String m23568g2 = c3981b.m23568g();
            String m23568g3 = c3981b.m23568g();
            String m23568g4 = c3981b.m23568g();
            String m23568g5 = c3981b.m23568g();
            if (!"libcore.io.DiskLruCache".equals(m23568g) || !"1".equals(m23568g2) || !Integer.toString(this.f12523h).equals(m23568g3) || !Integer.toString(this.f12525j).equals(m23568g4) || !"".equals(m23568g5)) {
                throw new IOException("unexpected journal header: [" + m23568g + ", " + m23568g2 + ", " + m23568g4 + ", " + m23568g5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m23608W(c3981b.m23568g());
                    i++;
                } catch (EOFException e) {
                    this.f12529n = i - this.f12528m.size();
                    if (c3981b.m23569f()) {
                        m23607Y();
                    } else {
                        this.f12527l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f12520e, true), C3983c.f12557a));
                    }
                    C3983c.m23567a(c3981b);
                    return;
                }
            }
        } catch (Throwable th) {
            C3983c.m23567a(c3981b);
            throw th;
        }
    }

    /* renamed from: W */
    private void m23608W(String str) {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring = str.substring(i);
            str2 = substring;
            if (indexOf == 6) {
                str2 = substring;
                if (str.startsWith("REMOVE")) {
                    this.f12528m.remove(substring);
                    return;
                }
            }
        } else {
            str2 = str.substring(i, indexOf2);
        }
        C3979d c3979d = this.f12528m.get(str2);
        C3979d c3979d2 = c3979d;
        if (c3979d == null) {
            c3979d2 = new C3979d(this, str2, null);
            this.f12528m.put(str2, c3979d2);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c3979d2.f12542e = true;
            c3979d2.f12543f = null;
            c3979d2.m23573n(split);
        } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            c3979d2.f12543f = new C3978c(this, c3979d2, null);
        } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: Y */
    public void m23607Y() {
        synchronized (this) {
            Writer writer = this.f12527l;
            if (writer != null) {
                m23594z(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f12521f), C3983c.f12557a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f12523h));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f12525j));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C3979d c3979d : this.f12528m.values()) {
                if (c3979d.f12543f != null) {
                    bufferedWriter.write("DIRTY " + c3979d.f12538a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c3979d.f12538a + c3979d.m23575l() + '\n');
                }
            }
            m23594z(bufferedWriter);
            if (this.f12520e.exists()) {
                m23604a0(this.f12520e, this.f12522g, true);
            }
            m23604a0(this.f12521f, this.f12520e, false);
            this.f12522g.delete();
            this.f12527l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f12520e, true), C3983c.f12557a));
        }
    }

    /* renamed from: a0 */
    private static void m23604a0(File file, File file2, boolean z) {
        if (z) {
            m23617D(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: d0 */
    public void m23603d0() {
        while (this.f12526k > this.f12524i) {
            m23606Z(this.f12528m.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: y */
    private void m23595y() {
        if (this.f12527l != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    @TargetApi(26)
    /* renamed from: z */
    private static void m23594z(Writer writer) {
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

    /* renamed from: C */
    public void m23618C() {
        close();
        C3983c.m23566b(this.f12519d);
    }

    /* renamed from: E */
    public C3978c m23616E(String str) {
        return m23615I(str, -1L);
    }

    /* renamed from: N */
    public C3980e m23613N(String str) {
        synchronized (this) {
            m23595y();
            C3979d c3979d = this.f12528m.get(str);
            if (c3979d == null) {
                return null;
            }
            if (!c3979d.f12542e) {
                return null;
            }
            for (File file : c3979d.f12540c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f12529n++;
            this.f12527l.append((CharSequence) "READ");
            this.f12527l.append(' ');
            this.f12527l.append((CharSequence) str);
            this.f12527l.append('\n');
            if (m23612P()) {
                this.f12531p.submit(this.f12532q);
            }
            return new C3980e(this, str, c3979d.f12544g, c3979d.f12540c, c3979d.f12539b, null);
        }
    }

    /* renamed from: Z */
    public boolean m23606Z(String str) {
        synchronized (this) {
            m23595y();
            C3979d c3979d = this.f12528m.get(str);
            if (c3979d != null && c3979d.f12543f == null) {
                for (int i = 0; i < this.f12525j; i++) {
                    File m23577j = c3979d.m23577j(i);
                    if (m23577j.exists() && !m23577j.delete()) {
                        throw new IOException("failed to delete " + m23577j);
                    }
                    this.f12526k -= c3979d.f12539b[i];
                    c3979d.f12539b[i] = 0;
                }
                this.f12529n++;
                this.f12527l.append((CharSequence) "REMOVE");
                this.f12527l.append(' ');
                this.f12527l.append((CharSequence) str);
                this.f12527l.append('\n');
                this.f12528m.remove(str);
                if (m23612P()) {
                    this.f12531p.submit(this.f12532q);
                }
                return true;
            }
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f12527l == null) {
                return;
            }
            Iterator it = new ArrayList(this.f12528m.values()).iterator();
            while (it.hasNext()) {
                C3979d c3979d = (C3979d) it.next();
                if (c3979d.f12543f != null) {
                    c3979d.f12543f.m23592a();
                }
            }
            m23603d0();
            m23594z(this.f12527l);
            this.f12527l = null;
        }
    }
}

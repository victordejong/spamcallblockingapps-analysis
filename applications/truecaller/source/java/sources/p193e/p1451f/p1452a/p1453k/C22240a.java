package p193e.p1451f.p1452a.p1453k;

import android.os.Build;
import android.os.StrictMode;
import com.tenor.android.core.constant.StringConstant;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.k.a */
/* loaded from: classes-dex2jar.jar:e/f/a/k/a.class */
public final class C22240a implements Closeable {

    /* renamed from: a */
    public final File f61791a;

    /* renamed from: b */
    public final File f61792b;

    /* renamed from: c */
    public final File f61793c;

    /* renamed from: d */
    public final File f61794d;

    /* renamed from: e */
    public final int f61795e;

    /* renamed from: f */
    public long f61796f;

    /* renamed from: g */
    public final int f61797g;

    /* renamed from: i */
    public Writer f61799i;

    /* renamed from: k */
    public int f61801k;

    /* renamed from: h */
    public long f61798h = 0;

    /* renamed from: j */
    public final LinkedHashMap<String, C22244d> f61800j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l */
    public long f61802l = 0;

    /* renamed from: m */
    public final ThreadPoolExecutor f61803m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC22242b(null));

    /* renamed from: n */
    public final Callable<Void> f61804n = new CallableC22241a();

    /* renamed from: e.f.a.k.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/k/a$a.class */
    public class CallableC22241a implements Callable<Void> {
        public CallableC22241a() {
            C22240a.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (C22240a.this) {
                C22240a c22240a = C22240a.this;
                if (c22240a.f61799i == null) {
                    return null;
                }
                c22240a.m8394W();
                if (C22240a.this.m8401E()) {
                    C22240a.this.m8396Q();
                    C22240a.this.f61801k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: e.f.a.k.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/k/a$b.class */
    public static final class ThreadFactoryC22242b implements ThreadFactory {
        public ThreadFactoryC22242b(CallableC22241a callableC22241a) {
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

    /* renamed from: e.f.a.k.a$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/k/a$c.class */
    public final class C22243c {

        /* renamed from: a */
        public final C22244d f61806a;

        /* renamed from: b */
        public final boolean[] f61807b;

        /* renamed from: c */
        public boolean f61808c;

        public C22243c(C22244d c22244d, CallableC22241a callableC22241a) {
            C22240a.this = r4;
            this.f61806a = c22244d;
            this.f61807b = c22244d.f61814e ? null : new boolean[r4.f61797g];
        }

        /* renamed from: a */
        public void m8386a() throws IOException {
            C22240a.m8393b(C22240a.this, this, false);
        }

        /* renamed from: b */
        public File m8385b(int i) throws IOException {
            File file;
            synchronized (C22240a.this) {
                C22244d c22244d = this.f61806a;
                if (c22244d.f61815f != this) {
                    throw new IllegalStateException();
                }
                if (!c22244d.f61814e) {
                    this.f61807b[i] = true;
                }
                file = c22244d.f61813d[i];
                if (!C22240a.this.f61791a.exists()) {
                    C22240a.this.f61791a.mkdirs();
                }
            }
            return file;
        }
    }

    /* renamed from: e.f.a.k.a$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/k/a$d.class */
    public final class C22244d {

        /* renamed from: a */
        public final String f61810a;

        /* renamed from: b */
        public final long[] f61811b;

        /* renamed from: c */
        public File[] f61812c;

        /* renamed from: d */
        public File[] f61813d;

        /* renamed from: e */
        public boolean f61814e;

        /* renamed from: f */
        public C22243c f61815f;

        /* renamed from: g */
        public long f61816g;

        public C22244d(String str, CallableC22241a callableC22241a) {
            C22240a.this = r8;
            this.f61810a = str;
            int i = r8.f61797g;
            this.f61811b = new long[i];
            this.f61812c = new File[i];
            this.f61813d = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < r8.f61797g; i2++) {
                sb.append(i2);
                this.f61812c[i2] = new File(r8.f61791a, sb.toString());
                sb.append(".tmp");
                this.f61813d[i2] = new File(r8.f61791a, sb.toString());
                sb.setLength(length);
            }
        }

        /* renamed from: a */
        public String m8384a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f61811b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: b */
        public final IOException m8383b(String[] strArr) throws IOException {
            StringBuilder m8728C = C22128a.m8728C("unexpected journal line: ");
            m8728C.append(Arrays.toString(strArr));
            throw new IOException(m8728C.toString());
        }
    }

    /* renamed from: e.f.a.k.a$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/k/a$e.class */
    public final class C22245e {

        /* renamed from: a */
        public final File[] f61818a;

        public C22245e(C22240a c22240a, String str, long j, File[] fileArr, long[] jArr, CallableC22241a callableC22241a) {
            this.f61818a = fileArr;
        }
    }

    public C22240a(File file, int i, int i2, long j) {
        this.f61791a = file;
        this.f61795e = i;
        this.f61792b = new File(file, "journal");
        this.f61793c = new File(file, "journal.tmp");
        this.f61794d = new File(file, "journal.bkp");
        this.f61797g = i2;
        this.f61796f = j;
    }

    /* renamed from: I */
    public static C22240a m8400I(File file, int i, int i2, long j) throws IOException {
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
                    m8395S(file2, file3, false);
                }
            }
            C22240a c22240a = new C22240a(file, i, i2, j);
            if (c22240a.f61792b.exists()) {
                try {
                    c22240a.m8398K();
                    c22240a.m8399J();
                    return c22240a;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    c22240a.close();
                    C22248c.m8380a(c22240a.f61791a);
                }
            }
            file.mkdirs();
            C22240a c22240a2 = new C22240a(file, i, i2, j);
            c22240a2.m8396Q();
            return c22240a2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: S */
    public static void m8395S(File file, File file2, boolean z) throws IOException {
        if (z) {
            m8390k(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: b */
    public static void m8393b(C22240a c22240a, C22243c c22243c, boolean z) throws IOException {
        synchronized (c22240a) {
            C22244d c22244d = c22243c.f61806a;
            if (c22244d.f61815f == c22243c) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c22244d.f61814e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= c22240a.f61797g) {
                                break;
                            } else if (!c22243c.f61807b[i2]) {
                                c22243c.m8386a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!c22244d.f61813d[i2].exists()) {
                                c22243c.m8386a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < c22240a.f61797g) {
                    File file = c22244d.f61813d[i];
                    if (!z) {
                        m8390k(file);
                    } else if (file.exists()) {
                        File file2 = c22244d.f61812c[i];
                        file.renameTo(file2);
                        long j = c22244d.f61811b[i];
                        long length = file2.length();
                        c22244d.f61811b[i] = length;
                        c22240a.f61798h = (c22240a.f61798h - j) + length;
                    }
                    i++;
                }
                c22240a.f61801k++;
                c22244d.f61815f = null;
                if (c22244d.f61814e || z) {
                    c22244d.f61814e = true;
                    c22240a.f61799i.append((CharSequence) "CLEAN");
                    c22240a.f61799i.append(' ');
                    c22240a.f61799i.append((CharSequence) c22244d.f61810a);
                    c22240a.f61799i.append((CharSequence) c22244d.m8384a());
                    c22240a.f61799i.append('\n');
                    if (z) {
                        long j2 = c22240a.f61802l;
                        c22240a.f61802l = 1 + j2;
                        c22244d.f61816g = j2;
                    }
                } else {
                    c22240a.f61800j.remove(c22244d.f61810a);
                    c22240a.f61799i.append((CharSequence) "REMOVE");
                    c22240a.f61799i.append(' ');
                    c22240a.f61799i.append((CharSequence) c22244d.f61810a);
                    c22240a.f61799i.append('\n');
                }
                m8388q(c22240a.f61799i);
                if (c22240a.f61798h > c22240a.f61796f || c22240a.m8401E()) {
                    c22240a.f61803m.submit(c22240a.f61804n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: j */
    public static void m8391j(Writer writer) throws IOException {
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

    /* renamed from: k */
    public static void m8390k(File file) throws IOException {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: q */
    public static void m8388q(Writer writer) throws IOException {
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

    /* renamed from: E */
    public final boolean m8401E() {
        int i = this.f61801k;
        return i >= 2000 && i >= this.f61800j.size();
    }

    /* renamed from: J */
    public final void m8399J() throws IOException {
        m8390k(this.f61793c);
        Iterator<C22244d> it = this.f61800j.values().iterator();
        while (it.hasNext()) {
            C22244d next = it.next();
            if (next.f61815f == null) {
                for (int i = 0; i < this.f61797g; i++) {
                    this.f61798h += next.f61811b[i];
                }
            } else {
                next.f61815f = null;
                for (int i2 = 0; i2 < this.f61797g; i2++) {
                    m8390k(next.f61812c[i2]);
                    m8390k(next.f61813d[i2]);
                }
                it.remove();
            }
        }
    }

    /* renamed from: K */
    public final void m8398K() throws IOException {
        C22246b c22246b = new C22246b(new FileInputStream(this.f61792b), C22248c.f61825a);
        try {
            String m8381d = c22246b.m8381d();
            String m8381d2 = c22246b.m8381d();
            String m8381d3 = c22246b.m8381d();
            String m8381d4 = c22246b.m8381d();
            String m8381d5 = c22246b.m8381d();
            if (!"libcore.io.DiskLruCache".equals(m8381d) || !"1".equals(m8381d2) || !Integer.toString(this.f61795e).equals(m8381d3) || !Integer.toString(this.f61797g).equals(m8381d4) || !"".equals(m8381d5)) {
                throw new IOException("unexpected journal header: [" + m8381d + ", " + m8381d2 + ", " + m8381d4 + ", " + m8381d5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m8397P(c22246b.m8381d());
                    i++;
                } catch (EOFException e) {
                    this.f61801k = i - this.f61800j.size();
                    boolean z = false;
                    if (c22246b.f61823e == -1) {
                        z = true;
                    }
                    if (z) {
                        m8396Q();
                    } else {
                        this.f61799i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f61792b, true), C22248c.f61825a));
                    }
                    try {
                        c22246b.close();
                        return;
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception e3) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                c22246b.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception e5) {
            }
            throw th;
        }
    }

    /* renamed from: P */
    public final void m8397P(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                String substring = str.substring(i);
                str2 = substring;
                if (indexOf == 6) {
                    str2 = substring;
                    if (str.startsWith("REMOVE")) {
                        this.f61800j.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C22244d c22244d = this.f61800j.get(str2);
            C22244d c22244d2 = c22244d;
            if (c22244d == null) {
                c22244d2 = new C22244d(str2, null);
                this.f61800j.put(str2, c22244d2);
            }
            if (indexOf2 == -1 || indexOf != 5 || !str.startsWith("CLEAN")) {
                if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                    c22244d2.f61815f = new C22243c(c22244d2, null);
                    return;
                } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException(C22128a.m8543z2("unexpected journal line: ", str));
                } else {
                    return;
                }
            }
            String[] split = str.substring(indexOf2 + 1).split(StringConstant.SPACE);
            c22244d2.f61814e = true;
            c22244d2.f61815f = null;
            if (split.length != C22240a.this.f61797g) {
                c22244d2.m8383b(split);
                throw null;
            }
            for (int i2 = 0; i2 < split.length; i2++) {
                try {
                    c22244d2.f61811b[i2] = Long.parseLong(split[i2]);
                } catch (NumberFormatException e) {
                    c22244d2.m8383b(split);
                    throw null;
                }
            }
            return;
        }
        throw new IOException(C22128a.m8543z2("unexpected journal line: ", str));
    }

    /* renamed from: Q */
    public final void m8396Q() throws IOException {
        synchronized (this) {
            Writer writer = this.f61799i;
            if (writer != null) {
                m8391j(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f61793c), C22248c.f61825a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write("1");
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(Integer.toString(this.f61795e));
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(Integer.toString(this.f61797g));
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(StringConstant.NEW_LINE);
            for (C22244d c22244d : this.f61800j.values()) {
                if (c22244d.f61815f != null) {
                    bufferedWriter.write("DIRTY " + c22244d.f61810a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c22244d.f61810a + c22244d.m8384a() + '\n');
                }
            }
            m8391j(bufferedWriter);
            if (this.f61792b.exists()) {
                m8395S(this.f61792b, this.f61794d, true);
            }
            m8395S(this.f61793c, this.f61792b, false);
            this.f61794d.delete();
            this.f61799i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f61792b, true), C22248c.f61825a));
        }
    }

    /* renamed from: W */
    public final void m8394W() throws IOException {
        while (this.f61798h > this.f61796f) {
            String key = this.f61800j.entrySet().iterator().next().getKey();
            synchronized (this) {
                m8392d();
                C22244d c22244d = this.f61800j.get(key);
                if (c22244d != null && c22244d.f61815f == null) {
                    for (int i = 0; i < this.f61797g; i++) {
                        File file = c22244d.f61812c[i];
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        long j = this.f61798h;
                        long[] jArr = c22244d.f61811b;
                        this.f61798h = j - jArr[i];
                        jArr[i] = 0;
                    }
                    this.f61801k++;
                    this.f61799i.append((CharSequence) "REMOVE");
                    this.f61799i.append(' ');
                    this.f61799i.append((CharSequence) key);
                    this.f61799i.append('\n');
                    this.f61800j.remove(key);
                    if (m8401E()) {
                        this.f61803m.submit(this.f61804n);
                    }
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f61799i == null) {
                return;
            }
            Iterator it = new ArrayList(this.f61800j.values()).iterator();
            while (it.hasNext()) {
                C22243c c22243c = ((C22244d) it.next()).f61815f;
                if (c22243c != null) {
                    c22243c.m8386a();
                }
            }
            m8394W();
            m8391j(this.f61799i);
            this.f61799i = null;
        }
    }

    /* renamed from: d */
    public final void m8392d() {
        if (this.f61799i != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* renamed from: l */
    public C22243c m8389l(String str) throws IOException {
        C22243c c22243c;
        synchronized (this) {
            m8392d();
            C22244d c22244d = this.f61800j.get(str);
            if (c22244d == null) {
                c22244d = new C22244d(str, null);
                this.f61800j.put(str, c22244d);
            } else if (c22244d.f61815f != null) {
                c22243c = null;
            }
            C22243c c22243c2 = new C22243c(c22244d, null);
            c22244d.f61815f = c22243c2;
            this.f61799i.append((CharSequence) "DIRTY");
            this.f61799i.append(' ');
            this.f61799i.append((CharSequence) str);
            this.f61799i.append('\n');
            m8388q(this.f61799i);
            c22243c = c22243c2;
        }
        return c22243c;
    }

    /* renamed from: s */
    public C22245e m8387s(String str) throws IOException {
        synchronized (this) {
            m8392d();
            C22244d c22244d = this.f61800j.get(str);
            if (c22244d == null) {
                return null;
            }
            if (!c22244d.f61814e) {
                return null;
            }
            for (File file : c22244d.f61812c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f61801k++;
            this.f61799i.append((CharSequence) "READ");
            this.f61799i.append(' ');
            this.f61799i.append((CharSequence) str);
            this.f61799i.append('\n');
            if (m8401E()) {
                this.f61803m.submit(this.f61804n);
            }
            return new C22245e(this, str, c22244d.f61816g, c22244d.f61812c, c22244d.f61811b, null);
        }
    }
}

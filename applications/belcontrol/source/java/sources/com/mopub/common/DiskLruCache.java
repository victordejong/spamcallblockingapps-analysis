package com.mopub.common;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: q */
    public static final Pattern f4202q = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: r */
    public static final OutputStream f4203r = new C1005b();

    /* renamed from: a */
    public final File f4204a;

    /* renamed from: b */
    public final File f4205b;

    /* renamed from: c */
    public final File f4206c;

    /* renamed from: d */
    public final File f4207d;

    /* renamed from: f */
    public final int f4208f;

    /* renamed from: g */
    public long f4209g;

    /* renamed from: h */
    public final int f4210h;

    /* renamed from: k */
    public Writer f4212k;

    /* renamed from: m */
    public int f4214m;

    /* renamed from: j */
    public long f4211j = 0;

    /* renamed from: l */
    public final LinkedHashMap<String, C1006c> f4213l = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: n */
    public long f4215n = 0;

    /* renamed from: o */
    public final ThreadPoolExecutor f4216o = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: p */
    public final Callable<Void> f4217p = new CallableC1004a();

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: a */
        public final C1006c f4218a;

        /* renamed from: b */
        public final boolean[] f4219b;

        /* renamed from: c */
        public boolean f4220c;

        /* renamed from: d */
        public boolean f4221d;

        /* renamed from: com.mopub.common.DiskLruCache$Editor$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$Editor$a.class */
        public class C1003a extends FilterOutputStream {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1003a(OutputStream outputStream) {
                super(outputStream);
                Editor.this = r4;
            }

            public /* synthetic */ C1003a(Editor editor, OutputStream outputStream, CallableC1004a callableC1004a) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    Editor.this.f4220c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    Editor.this.f4220c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    Editor.this.f4220c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.f4220c = true;
                }
            }
        }

        public Editor(C1006c c1006c) {
            DiskLruCache.this = r4;
            this.f4218a = c1006c;
            this.f4219b = c1006c.f4232c ? null : new boolean[r4.f4210h];
        }

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C1006c c1006c, CallableC1004a callableC1004a) {
            this(c1006c);
        }

        public void abort() {
            DiskLruCache.this.m4002D(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.f4221d) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public void commit() {
            if (this.f4220c) {
                DiskLruCache.this.m4002D(this, false);
                DiskLruCache.this.remove(this.f4218a.f4230a);
            } else {
                DiskLruCache.this.m4002D(this, true);
            }
            this.f4221d = true;
        }

        public String getString(int i) {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.m3999G(newInputStream) : null;
        }

        public InputStream newInputStream(int i) {
            synchronized (DiskLruCache.this) {
                if (this.f4218a.f4233d == this) {
                    if (!this.f4218a.f4232c) {
                        return null;
                    }
                    try {
                        return new FileInputStream(this.f4218a.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
                throw new IllegalStateException();
            }
        }

        public OutputStream newOutputStream(int i) {
            FileOutputStream fileOutputStream;
            C1003a c1003a;
            synchronized (DiskLruCache.this) {
                if (this.f4218a.f4233d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f4218a.f4232c) {
                    this.f4219b[i] = true;
                }
                File dirtyFile = this.f4218a.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.f4204a.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        return DiskLruCache.f4203r;
                    }
                }
                c1003a = new C1003a(this, fileOutputStream, null);
            }
            return c1003a;
        }

        public void set(int i, String str) {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f4237b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.m3967a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.m3967a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {

        /* renamed from: a */
        public final String f4224a;

        /* renamed from: b */
        public final long f4225b;

        /* renamed from: c */
        public final InputStream[] f4226c;

        /* renamed from: d */
        public final long[] f4227d;

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            DiskLruCache.this = r5;
            this.f4224a = str;
            this.f4225b = j;
            this.f4226c = inputStreamArr;
            this.f4227d = jArr;
        }

        public /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC1004a callableC1004a) {
            this(str, j, inputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f4226c) {
                DiskLruCacheUtil.m3967a(inputStream);
            }
        }

        public Editor edit() {
            return DiskLruCache.this.m4000F(this.f4224a, this.f4225b);
        }

        public InputStream getInputStream(int i) {
            return this.f4226c[i];
        }

        public long getLength(int i) {
            return this.f4227d[i];
        }

        public String getString(int i) {
            return DiskLruCache.m3999G(getInputStream(i));
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$a.class */
    public class CallableC1004a implements Callable<Void> {
        public CallableC1004a() {
            DiskLruCache.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f4212k == null) {
                    return null;
                }
                DiskLruCache.this.m3992N();
                if (DiskLruCache.this.m3998H()) {
                    DiskLruCache.this.m3994L();
                    DiskLruCache.this.f4214m = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$b.class */
    public static final class C1005b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) {
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$c.class */
    public final class C1006c {

        /* renamed from: a */
        public final String f4230a;

        /* renamed from: b */
        public final long[] f4231b;

        /* renamed from: c */
        public boolean f4232c;

        /* renamed from: d */
        public Editor f4233d;

        /* renamed from: e */
        public long f4234e;

        public C1006c(String str) {
            DiskLruCache.this = r4;
            this.f4230a = str;
            this.f4231b = new long[r4.f4210h];
        }

        public /* synthetic */ C1006c(DiskLruCache diskLruCache, String str, CallableC1004a callableC1004a) {
            this(str);
        }

        public File getCleanFile(int i) {
            File file = DiskLruCache.this.f4204a;
            return new File(file, this.f4230a + "." + i);
        }

        public File getDirtyFile(int i) {
            File file = DiskLruCache.this.f4204a;
            return new File(file, this.f4230a + "." + i + ".tmp");
        }

        public String getLengths() {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4231b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: j */
        public final IOException m3969j(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: k */
        public final void m3968k(String[] strArr) {
            if (strArr.length != DiskLruCache.this.f4210h) {
                m3969j(strArr);
                throw null;
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f4231b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    m3969j(strArr);
                    throw null;
                }
            }
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f4204a = file;
        this.f4208f = i;
        this.f4205b = new File(file, "journal");
        this.f4206c = new File(file, "journal.tmp");
        this.f4207d = new File(file, "journal.bkp");
        this.f4210h = i2;
        this.f4209g = j;
    }

    /* renamed from: E */
    public static void m4001E(File file) {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: G */
    public static String m3999G(InputStream inputStream) {
        return DiskLruCacheUtil.m3965c(new InputStreamReader(inputStream, DiskLruCacheUtil.f4237b));
    }

    /* renamed from: M */
    public static void m3993M(File file, File file2, boolean z) {
        if (z) {
            m4001E(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    public static DiskLruCache open(File file, int i, int i2, long j) {
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
                    m3993M(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f4205b.exists()) {
                try {
                    diskLruCache.m3996J();
                    diskLruCache.m3997I();
                    diskLruCache.f4212k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f4205b, true), DiskLruCacheUtil.f4236a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.m3994L();
            return diskLruCache2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: C */
    public final void m4003C() {
        if (this.f4212k != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* renamed from: D */
    public final void m4002D(Editor editor, boolean z) {
        synchronized (this) {
            C1006c c1006c = editor.f4218a;
            if (c1006c.f4233d == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c1006c.f4232c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f4210h) {
                                break;
                            } else if (!editor.f4219b[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!c1006c.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f4210h) {
                    File dirtyFile = c1006c.getDirtyFile(i);
                    if (!z) {
                        m4001E(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = c1006c.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = c1006c.f4231b[i];
                        long length = cleanFile.length();
                        c1006c.f4231b[i] = length;
                        this.f4211j = (this.f4211j - j) + length;
                    }
                    i++;
                }
                this.f4214m++;
                c1006c.f4233d = null;
                if (c1006c.f4232c || z) {
                    c1006c.f4232c = true;
                    this.f4212k.write("CLEAN " + c1006c.f4230a + c1006c.getLengths() + '\n');
                    if (z) {
                        long j2 = this.f4215n;
                        this.f4215n = 1 + j2;
                        c1006c.f4234e = j2;
                    }
                } else {
                    this.f4213l.remove(c1006c.f4230a);
                    this.f4212k.write("REMOVE " + c1006c.f4230a + '\n');
                }
                this.f4212k.flush();
                if (this.f4211j > this.f4209g || m3998H()) {
                    this.f4216o.submit(this.f4217p);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: F */
    public final Editor m4000F(String str, long j) {
        synchronized (this) {
            m4003C();
            m3991O(str);
            C1006c c1006c = this.f4213l.get(str);
            if (j == -1 || (c1006c != null && c1006c.f4234e == j)) {
                if (c1006c == null) {
                    c1006c = new C1006c(this, str, null);
                    this.f4213l.put(str, c1006c);
                } else if (c1006c.f4233d != null) {
                    return null;
                }
                Editor editor = new Editor(this, c1006c, null);
                c1006c.f4233d = editor;
                Writer writer = this.f4212k;
                writer.write("DIRTY " + str + '\n');
                this.f4212k.flush();
                return editor;
            }
            return null;
        }
    }

    /* renamed from: H */
    public final boolean m3998H() {
        int i = this.f4214m;
        return i >= 2000 && i >= this.f4213l.size();
    }

    /* renamed from: I */
    public final void m3997I() {
        m4001E(this.f4206c);
        Iterator<C1006c> it = this.f4213l.values().iterator();
        while (it.hasNext()) {
            C1006c next = it.next();
            if (next.f4233d == null) {
                for (int i = 0; i < this.f4210h; i++) {
                    this.f4211j += next.f4231b[i];
                }
            } else {
                next.f4233d = null;
                for (int i2 = 0; i2 < this.f4210h; i2++) {
                    m4001E(next.getCleanFile(i2));
                    m4001E(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: J */
    public final void m3996J() {
        zf1 zf1Var = new zf1(new FileInputStream(this.f4205b), DiskLruCacheUtil.f4236a);
        try {
            String readLine = zf1Var.readLine();
            String readLine2 = zf1Var.readLine();
            String readLine3 = zf1Var.readLine();
            String readLine4 = zf1Var.readLine();
            String readLine5 = zf1Var.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f4208f).equals(readLine3) || !Integer.toString(this.f4210h).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m3995K(zf1Var.readLine());
                    i++;
                } catch (EOFException e) {
                    this.f4214m = i - this.f4213l.size();
                    DiskLruCacheUtil.m3967a(zf1Var);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.m3967a(zf1Var);
            throw th;
        }
    }

    /* renamed from: K */
    public final void m3995K(String str) {
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
                    this.f4213l.remove(substring);
                    return;
                }
            }
        } else {
            str2 = str.substring(i, indexOf2);
        }
        C1006c c1006c = this.f4213l.get(str2);
        C1006c c1006c2 = c1006c;
        if (c1006c == null) {
            c1006c2 = new C1006c(this, str2, null);
            this.f4213l.put(str2, c1006c2);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c1006c2.f4232c = true;
            c1006c2.f4233d = null;
            c1006c2.m3968k(split);
        } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            c1006c2.f4233d = new Editor(this, c1006c2, null);
        } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: L */
    public final void m3994L() {
        synchronized (this) {
            Writer writer = this.f4212k;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4206c), DiskLruCacheUtil.f4236a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4208f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4210h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C1006c c1006c : this.f4213l.values()) {
                bufferedWriter.write(c1006c.f4233d != null ? "DIRTY " + c1006c.f4230a + '\n' : "CLEAN " + c1006c.f4230a + c1006c.getLengths() + '\n');
            }
            bufferedWriter.close();
            if (this.f4205b.exists()) {
                m3993M(this.f4205b, this.f4207d, true);
            }
            m3993M(this.f4206c, this.f4205b, false);
            this.f4207d.delete();
            this.f4212k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4205b, true), DiskLruCacheUtil.f4236a));
        }
    }

    /* renamed from: N */
    public final void m3992N() {
        while (this.f4211j > this.f4209g) {
            remove(this.f4213l.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: O */
    public final void m3991O(String str) {
        if (f4202q.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f4212k == null) {
                return;
            }
            Iterator it = new ArrayList(this.f4213l.values()).iterator();
            while (it.hasNext()) {
                C1006c c1006c = (C1006c) it.next();
                if (c1006c.f4233d != null) {
                    c1006c.f4233d.abort();
                }
            }
            m3992N();
            this.f4212k.close();
            this.f4212k = null;
        }
    }

    public void delete() {
        close();
        DiskLruCacheUtil.m3966b(this.f4204a);
    }

    public Editor edit(String str) {
        return m4000F(str, -1L);
    }

    public void flush() {
        synchronized (this) {
            m4003C();
            m3992N();
            this.f4212k.flush();
        }
    }

    public Snapshot get(String str) {
        synchronized (this) {
            m4003C();
            m3991O(str);
            C1006c c1006c = this.f4213l.get(str);
            if (c1006c == null) {
                return null;
            }
            if (!c1006c.f4232c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f4210h];
            for (int i = 0; i < this.f4210h; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(c1006c.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f4210h && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.m3967a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f4214m++;
            this.f4212k.append((CharSequence) ("READ " + str + '\n'));
            if (m3998H()) {
                this.f4216o.submit(this.f4217p);
            }
            return new Snapshot(this, str, c1006c.f4234e, inputStreamArr, c1006c.f4231b, null);
        }
    }

    public File getDirectory() {
        return this.f4204a;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.f4209g;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f4212k == null;
        }
        return z;
    }

    public boolean remove(String str) {
        synchronized (this) {
            m4003C();
            m3991O(str);
            C1006c c1006c = this.f4213l.get(str);
            if (c1006c != null && c1006c.f4233d == null) {
                for (int i = 0; i < this.f4210h; i++) {
                    File cleanFile = c1006c.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.f4211j -= c1006c.f4231b[i];
                    c1006c.f4231b[i] = 0;
                }
                this.f4214m++;
                this.f4212k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f4213l.remove(str);
                if (m3998H()) {
                    this.f4216o.submit(this.f4217p);
                }
                return true;
            }
            return false;
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.f4209g = j;
            this.f4216o.submit(this.f4217p);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.f4211j;
        }
        return j;
    }
}

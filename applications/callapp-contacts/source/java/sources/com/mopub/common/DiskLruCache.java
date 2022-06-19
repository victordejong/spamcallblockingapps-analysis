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
import java.io.Reader;
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
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: a */
    static final Pattern f58701a = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: p */
    private static final OutputStream f58702p = new OutputStream() { // from class: com.mopub.common.DiskLruCache.2
        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
        }
    };

    /* renamed from: c */
    private final File f58704c;

    /* renamed from: d */
    private final File f58705d;

    /* renamed from: e */
    private final File f58706e;

    /* renamed from: f */
    private final File f58707f;

    /* renamed from: g */
    private final int f58708g;

    /* renamed from: h */
    private long f58709h;

    /* renamed from: i */
    private final int f58710i;

    /* renamed from: k */
    private Writer f58712k;

    /* renamed from: m */
    private int f58714m;

    /* renamed from: j */
    private long f58711j = 0;

    /* renamed from: l */
    private final LinkedHashMap<String, C16679a> f58713l = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: n */
    private long f58715n = 0;

    /* renamed from: b */
    final ThreadPoolExecutor f58703b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: o */
    private final Callable<Void> f58716o = new Callable<Void>() { // from class: com.mopub.common.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public final Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f58712k == null) {
                    return null;
                }
                DiskLruCache.this.m6754g();
                if (DiskLruCache.this.m6758e()) {
                    DiskLruCache.this.m6760d();
                    DiskLruCache.this.f58714m = 0;
                }
                return null;
            }
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: b */
        private final C16679a f58719b;

        /* renamed from: c */
        private final boolean[] f58720c;

        /* renamed from: d */
        private boolean f58721d;

        /* renamed from: e */
        private boolean f58722e;

        /* renamed from: com.mopub.common.DiskLruCache$Editor$a */
        /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$Editor$a.class */
        public final class C16678a extends FilterOutputStream {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            private C16678a(OutputStream outputStream) {
                super(outputStream);
                Editor.this = r4;
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.f58721d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.f58721d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.f58721d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.f58721d = true;
                }
            }
        }

        private Editor(C16679a c16679a) {
            DiskLruCache.this = r4;
            this.f58719b = c16679a;
            this.f58720c = c16679a.f58731c ? null : new boolean[r4.f58710i];
        }

        public final void abort() throws IOException {
            DiskLruCache.this.m6773a(this, false);
        }

        public final void abortUnlessCommitted() {
            if (!this.f58722e) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public final void commit() throws IOException {
            if (this.f58721d) {
                DiskLruCache.this.m6773a(this, false);
                DiskLruCache.this.remove(this.f58719b.f58729a);
            } else {
                DiskLruCache.this.m6773a(this, true);
            }
            this.f58722e = true;
        }

        public final String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            if (newInputStream != null) {
                return DiskLruCache.m6767a(newInputStream);
            }
            return null;
        }

        public final InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f58719b.f58732d == this) {
                    if (!this.f58719b.f58731c) {
                        return null;
                    }
                    try {
                        return new FileInputStream(this.f58719b.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
                throw new IllegalStateException();
            }
        }

        public final OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C16678a c16678a;
            synchronized (DiskLruCache.this) {
                if (this.f58719b.f58732d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f58719b.f58731c) {
                    this.f58720c[i] = true;
                }
                File dirtyFile = this.f58719b.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.f58704c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        return DiskLruCache.f58702p;
                    }
                }
                c16678a = new C16678a(fileOutputStream);
            }
            return c16678a;
        }

        public final void set(int i, String str) throws IOException {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f58736b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.m6747a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.m6747a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {

        /* renamed from: b */
        private final String f58725b;

        /* renamed from: c */
        private final long f58726c;

        /* renamed from: d */
        private final InputStream[] f58727d;

        /* renamed from: e */
        private final long[] f58728e;

        private Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            DiskLruCache.this = r5;
            this.f58725b = str;
            this.f58726c = j;
            this.f58727d = inputStreamArr;
            this.f58728e = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.f58727d) {
                DiskLruCacheUtil.m6747a(inputStream);
            }
        }

        public final Editor edit() throws IOException {
            return DiskLruCache.this.m6765a(this.f58725b, this.f58726c);
        }

        public final InputStream getInputStream(int i) {
            return this.f58727d[i];
        }

        public final long getLength(int i) {
            return this.f58728e[i];
        }

        public final String getString(int i) throws IOException {
            return DiskLruCache.m6767a(getInputStream(i));
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$a.class */
    public final class C16679a {

        /* renamed from: a */
        final String f58729a;

        /* renamed from: b */
        final long[] f58730b;

        /* renamed from: c */
        boolean f58731c;

        /* renamed from: d */
        Editor f58732d;

        /* renamed from: e */
        long f58733e;

        private C16679a(String str) {
            DiskLruCache.this = r4;
            this.f58729a = str;
            this.f58730b = new long[r4.f58710i];
        }

        /* renamed from: b */
        private static IOException m6748b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        final void m6749a(String[] strArr) throws IOException {
            if (strArr.length == DiskLruCache.this.f58710i) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f58730b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw m6748b(strArr);
                    }
                }
                return;
            }
            throw m6748b(strArr);
        }

        public final File getCleanFile(int i) {
            File file = DiskLruCache.this.f58704c;
            return new File(file, this.f58729a + "." + i);
        }

        public final File getDirtyFile(int i) {
            File file = DiskLruCache.this.f58704c;
            return new File(file, this.f58729a + "." + i + ".tmp");
        }

        public final String getLengths() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f58730b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    private DiskLruCache(File file, int i, int i2, long j) {
        this.f58704c = file;
        this.f58708g = i;
        this.f58705d = new File(file, "journal");
        this.f58706e = new File(file, "journal.tmp");
        this.f58707f = new File(file, "journal.bkp");
        this.f58710i = i2;
        this.f58709h = j;
    }

    /* renamed from: a */
    public Editor m6765a(String str, long j) throws IOException {
        synchronized (this) {
            m6756f();
            m6766a(str);
            C16679a c16679a = this.f58713l.get(str);
            if (j == -1 || (c16679a != null && c16679a.f58733e == j)) {
                if (c16679a == null) {
                    c16679a = new C16679a(str);
                    this.f58713l.put(str, c16679a);
                } else if (c16679a.f58732d != null) {
                    return null;
                }
                Editor editor = new Editor(c16679a);
                c16679a.f58732d = editor;
                Writer writer = this.f58712k;
                writer.write("DIRTY " + str + '\n');
                this.f58712k.flush();
                return editor;
            }
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ String m6767a(InputStream inputStream) throws IOException {
        return DiskLruCacheUtil.m6745a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.f58736b));
    }

    /* renamed from: a */
    public void m6773a(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            C16679a c16679a = editor.f58719b;
            if (c16679a.f58732d == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c16679a.f58731c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f58710i) {
                                break;
                            } else if (!editor.f58720c[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                            } else if (!c16679a.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f58710i) {
                    File dirtyFile = c16679a.getDirtyFile(i);
                    if (!z) {
                        m6769a(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = c16679a.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = c16679a.f58730b[i];
                        long length = cleanFile.length();
                        c16679a.f58730b[i] = length;
                        this.f58711j = (this.f58711j - j) + length;
                    }
                    i++;
                }
                this.f58714m++;
                c16679a.f58732d = null;
                if (c16679a.f58731c || z) {
                    c16679a.f58731c = true;
                    this.f58712k.write("CLEAN " + c16679a.f58729a + c16679a.getLengths() + '\n');
                    if (z) {
                        long j2 = this.f58715n;
                        this.f58715n = 1 + j2;
                        c16679a.f58733e = j2;
                    }
                } else {
                    this.f58713l.remove(c16679a.f58729a);
                    this.f58712k.write("REMOVE " + c16679a.f58729a + '\n');
                }
                this.f58712k.flush();
                if (this.f58711j > this.f58709h || m6758e()) {
                    this.f58703b.submit(this.f58716o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    private static void m6769a(File file) throws IOException {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: a */
    private static void m6768a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m6769a(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: a */
    private static void m6766a(String str) {
        if (f58701a.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
    }

    /* renamed from: b */
    private void m6764b() throws IOException {
        String readLine;
        String str;
        C16718c c16718c = new C16718c(new FileInputStream(this.f58705d), DiskLruCacheUtil.f58735a);
        try {
            String readLine2 = c16718c.readLine();
            String readLine3 = c16718c.readLine();
            String readLine4 = c16718c.readLine();
            String readLine5 = c16718c.readLine();
            String readLine6 = c16718c.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine2) || !"1".equals(readLine3) || !Integer.toString(this.f58708g).equals(readLine4) || !Integer.toString(this.f58710i).equals(readLine5) || !"".equals(readLine6)) {
                throw new IOException("unexpected journal header: [" + readLine2 + ", " + readLine3 + ", " + readLine5 + ", " + readLine6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readLine = c16718c.readLine();
                    int indexOf = readLine.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: ".concat(String.valueOf(readLine)));
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = readLine.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        String substring = readLine.substring(i2);
                        str = substring;
                        if (indexOf == 6) {
                            str = substring;
                            if (readLine.startsWith("REMOVE")) {
                                this.f58713l.remove(substring);
                                i++;
                            }
                        }
                    } else {
                        str = readLine.substring(i2, indexOf2);
                    }
                    C16679a c16679a = this.f58713l.get(str);
                    C16679a c16679a2 = c16679a;
                    if (c16679a == null) {
                        c16679a2 = new C16679a(str);
                        this.f58713l.put(str, c16679a2);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && readLine.startsWith("CLEAN")) {
                        String[] split = readLine.substring(indexOf2 + 1).split(StringUtils.SPACE);
                        c16679a2.f58731c = true;
                        c16679a2.f58732d = null;
                        c16679a2.m6749a(split);
                    } else if (indexOf2 == -1 && indexOf == 5 && readLine.startsWith("DIRTY")) {
                        c16679a2.f58732d = new Editor(c16679a2);
                    } else if (indexOf2 != -1 || indexOf != 4 || !readLine.startsWith("READ")) {
                        break;
                    }
                    i++;
                } catch (EOFException e) {
                    this.f58714m = i - this.f58713l.size();
                    DiskLruCacheUtil.m6747a(c16718c);
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(String.valueOf(readLine)));
        } catch (Throwable th) {
            DiskLruCacheUtil.m6747a(c16718c);
            throw th;
        }
    }

    /* renamed from: c */
    private void m6762c() throws IOException {
        m6769a(this.f58706e);
        Iterator<C16679a> it2 = this.f58713l.values().iterator();
        while (it2.hasNext()) {
            C16679a next = it2.next();
            if (next.f58732d == null) {
                for (int i = 0; i < this.f58710i; i++) {
                    this.f58711j += next.f58730b[i];
                }
            } else {
                next.f58732d = null;
                for (int i2 = 0; i2 < this.f58710i; i2++) {
                    m6769a(next.getCleanFile(i2));
                    m6769a(next.getDirtyFile(i2));
                }
                it2.remove();
            }
        }
    }

    /* renamed from: d */
    public void m6760d() throws IOException {
        synchronized (this) {
            Writer writer = this.f58712k;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f58706e), DiskLruCacheUtil.f58735a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write("1");
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write(Integer.toString(this.f58708g));
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write(Integer.toString(this.f58710i));
            bufferedWriter.write(StringUtils.f67179LF);
            bufferedWriter.write(StringUtils.f67179LF);
            for (C16679a c16679a : this.f58713l.values()) {
                if (c16679a.f58732d != null) {
                    bufferedWriter.write("DIRTY " + c16679a.f58729a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c16679a.f58729a + c16679a.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f58705d.exists()) {
                m6768a(this.f58705d, this.f58707f, true);
            }
            m6768a(this.f58706e, this.f58705d, false);
            this.f58707f.delete();
            this.f58712k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f58705d, true), DiskLruCacheUtil.f58735a));
        }
    }

    /* renamed from: e */
    public boolean m6758e() {
        int i = this.f58714m;
        return i >= 2000 && i >= this.f58713l.size();
    }

    /* renamed from: f */
    private void m6756f() {
        if (this.f58712k != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* renamed from: g */
    public void m6754g() throws IOException {
        while (this.f58711j > this.f58709h) {
            remove(this.f58713l.entrySet().iterator().next().getKey());
        }
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
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
                    m6768a(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f58705d.exists()) {
                try {
                    diskLruCache.m6764b();
                    diskLruCache.m6762c();
                    diskLruCache.f58712k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f58705d, true), DiskLruCacheUtil.f58735a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.m6760d();
            return diskLruCache2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f58712k == null) {
                return;
            }
            Iterator it2 = new ArrayList(this.f58713l.values()).iterator();
            while (it2.hasNext()) {
                C16679a c16679a = (C16679a) it2.next();
                if (c16679a.f58732d != null) {
                    c16679a.f58732d.abort();
                }
            }
            m6754g();
            this.f58712k.close();
            this.f58712k = null;
        }
    }

    public final void delete() throws IOException {
        close();
        DiskLruCacheUtil.m6746a(this.f58704c);
    }

    public final Editor edit(String str) throws IOException {
        return m6765a(str, -1L);
    }

    public final void flush() throws IOException {
        synchronized (this) {
            m6756f();
            m6754g();
            this.f58712k.flush();
        }
    }

    public final Snapshot get(String str) throws IOException {
        synchronized (this) {
            m6756f();
            m6766a(str);
            C16679a c16679a = this.f58713l.get(str);
            if (c16679a == null) {
                return null;
            }
            if (!c16679a.f58731c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f58710i];
            for (int i = 0; i < this.f58710i; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(c16679a.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f58710i && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.m6747a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f58714m++;
            this.f58712k.append((CharSequence) ("READ " + str + '\n'));
            if (m6758e()) {
                this.f58703b.submit(this.f58716o);
            }
            return new Snapshot(str, c16679a.f58733e, inputStreamArr, c16679a.f58730b);
        }
    }

    public final File getDirectory() {
        return this.f58704c;
    }

    public final long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.f58709h;
        }
        return j;
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f58712k == null;
        }
        return z;
    }

    public final boolean remove(String str) throws IOException {
        synchronized (this) {
            m6756f();
            m6766a(str);
            C16679a c16679a = this.f58713l.get(str);
            if (c16679a != null && c16679a.f58732d == null) {
                for (int i = 0; i < this.f58710i; i++) {
                    File cleanFile = c16679a.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(cleanFile)));
                    }
                    this.f58711j -= c16679a.f58730b[i];
                    c16679a.f58730b[i] = 0;
                }
                this.f58714m++;
                this.f58712k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f58713l.remove(str);
                if (m6758e()) {
                    this.f58703b.submit(this.f58716o);
                }
                return true;
            }
            return false;
        }
    }

    public final void setMaxSize(long j) {
        synchronized (this) {
            this.f58709h = j;
            this.f58703b.submit(this.f58716o);
        }
    }

    public final long size() {
        long j;
        synchronized (this) {
            j = this.f58711j;
        }
        return j;
    }
}

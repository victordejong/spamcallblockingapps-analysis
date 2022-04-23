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

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f33799a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() { // from class: com.mopub.common.DiskLruCache.2
        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final File f33801c;

    /* renamed from: d  reason: collision with root package name */
    private final File f33802d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, a> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;

    /* renamed from: b  reason: collision with root package name */
    final ThreadPoolExecutor f33800b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new Callable<Void>() { // from class: com.mopub.common.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public final Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.k == null) {
                    return null;
                }
                DiskLruCache.this.g();
                if (DiskLruCache.this.e()) {
                    DiskLruCache.this.d();
                    DiskLruCache.this.m = 0;
                }
                return null;
            }
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: b  reason: collision with root package name */
        private final a f33805b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean[] f33806c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f33807d;
        private boolean e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$Editor$a.class */
        public final class a extends FilterOutputStream {
            private a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.f33807d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.f33807d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.f33807d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.f33807d = true;
                }
            }
        }

        private Editor(a aVar) {
            this.f33805b = aVar;
            this.f33806c = aVar.f33815c ? null : new boolean[DiskLruCache.this.i];
        }

        public final void abort() throws IOException {
            DiskLruCache.this.a(this, false);
        }

        public final void abortUnlessCommitted() {
            if (!this.e) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public final void commit() throws IOException {
            if (this.f33807d) {
                DiskLruCache.this.a(this, false);
                DiskLruCache.this.remove(this.f33805b.f33813a);
            } else {
                DiskLruCache.this.a(this, true);
            }
            this.e = true;
        }

        public final String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            if (newInputStream != null) {
                return DiskLruCache.a(newInputStream);
            }
            return null;
        }

        public final InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f33805b.f33816d != this) {
                    throw new IllegalStateException();
                } else if (!this.f33805b.f33815c) {
                    return null;
                } else {
                    try {
                        return new FileInputStream(this.f33805b.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
            }
        }

        public final OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            a aVar;
            synchronized (DiskLruCache.this) {
                if (this.f33805b.f33816d == this) {
                    if (!this.f33805b.f33815c) {
                        this.f33806c[i] = true;
                    }
                    File dirtyFile = this.f33805b.getDirtyFile(i);
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e) {
                        DiskLruCache.this.f33801c.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(dirtyFile);
                        } catch (FileNotFoundException e2) {
                            return DiskLruCache.p;
                        }
                    }
                    aVar = new a(fileOutputStream);
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }

        public final void set(int i, String str) throws IOException {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f33818b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {

        /* renamed from: b  reason: collision with root package name */
        private final String f33810b;

        /* renamed from: c  reason: collision with root package name */
        private final long f33811c;

        /* renamed from: d  reason: collision with root package name */
        private final InputStream[] f33812d;
        private final long[] e;

        private Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f33810b = str;
            this.f33811c = j;
            this.f33812d = inputStreamArr;
            this.e = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.f33812d) {
                DiskLruCacheUtil.a(inputStream);
            }
        }

        public final Editor edit() throws IOException {
            return DiskLruCache.this.a(this.f33810b, this.f33811c);
        }

        public final InputStream getInputStream(int i) {
            return this.f33812d[i];
        }

        public final long getLength(int i) {
            return this.e[i];
        }

        public final String getString(int i) throws IOException {
            return DiskLruCache.a(getInputStream(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/DiskLruCache$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f33813a;

        /* renamed from: b  reason: collision with root package name */
        final long[] f33814b;

        /* renamed from: c  reason: collision with root package name */
        boolean f33815c;

        /* renamed from: d  reason: collision with root package name */
        Editor f33816d;
        long e;

        private a(String str) {
            this.f33813a = str;
            this.f33814b = new long[DiskLruCache.this.i];
        }

        private static IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        final void a(String[] strArr) throws IOException {
            if (strArr.length == DiskLruCache.this.i) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f33814b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw b(strArr);
                    }
                }
                return;
            }
            throw b(strArr);
        }

        public final File getCleanFile(int i) {
            File file = DiskLruCache.this.f33801c;
            return new File(file, this.f33813a + "." + i);
        }

        public final File getDirtyFile(int i) {
            File file = DiskLruCache.this.f33801c;
            return new File(file, this.f33813a + "." + i + ".tmp");
        }

        public final String getLengths() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f33814b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    private DiskLruCache(File file, int i, int i2, long j) {
        this.f33801c = file;
        this.g = i;
        this.f33802d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.i = i2;
        this.h = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Editor a(String str, long j) throws IOException {
        synchronized (this) {
            f();
            a(str);
            a aVar = this.l.get(str);
            if (j != -1 && (aVar == null || aVar.e != j)) {
                return null;
            }
            if (aVar == null) {
                aVar = new a(str);
                this.l.put(str, aVar);
            } else if (aVar.f33816d != null) {
                return null;
            }
            Editor editor = new Editor(aVar);
            aVar.f33816d = editor;
            Writer writer = this.k;
            writer.write("DIRTY " + str + '\n');
            this.k.flush();
            return editor;
        }
    }

    static /* synthetic */ String a(InputStream inputStream) throws IOException {
        return DiskLruCacheUtil.a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.f33818b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            a aVar = editor.f33805b;
            if (aVar.f33816d == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!aVar.f33815c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.i) {
                                break;
                            } else if (!editor.f33806c[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                            } else if (!aVar.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.i) {
                    File dirtyFile = aVar.getDirtyFile(i);
                    if (!z) {
                        a(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = aVar.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = aVar.f33814b[i];
                        long length = cleanFile.length();
                        aVar.f33814b[i] = length;
                        this.j = (this.j - j) + length;
                    }
                    i++;
                }
                this.m++;
                aVar.f33816d = null;
                if (aVar.f33815c || z) {
                    aVar.f33815c = true;
                    this.k.write("CLEAN " + aVar.f33813a + aVar.getLengths() + '\n');
                    if (z) {
                        long j2 = this.n;
                        this.n = 1 + j2;
                        aVar.e = j2;
                    }
                } else {
                    this.l.remove(aVar.f33813a);
                    this.k.write("REMOVE " + aVar.f33813a + '\n');
                }
                this.k.flush();
                if (this.j > this.h || e()) {
                    this.f33800b.submit(this.o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private static void a(String str) {
        if (!f33799a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    private void b() throws IOException {
        String readLine;
        String str;
        c cVar = new c(new FileInputStream(this.f33802d), DiskLruCacheUtil.f33817a);
        try {
            String readLine2 = cVar.readLine();
            String readLine3 = cVar.readLine();
            String readLine4 = cVar.readLine();
            String readLine5 = cVar.readLine();
            String readLine6 = cVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine2) || !"1".equals(readLine3) || !Integer.toString(this.g).equals(readLine4) || !Integer.toString(this.i).equals(readLine5) || !"".equals(readLine6)) {
                throw new IOException("unexpected journal header: [" + readLine2 + ", " + readLine3 + ", " + readLine5 + ", " + readLine6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readLine = cVar.readLine();
                    int indexOf = readLine.indexOf(32);
                    if (indexOf != -1) {
                        int i2 = indexOf + 1;
                        int indexOf2 = readLine.indexOf(32, i2);
                        if (indexOf2 == -1) {
                            String substring = readLine.substring(i2);
                            str = substring;
                            if (indexOf == 6) {
                                str = substring;
                                if (readLine.startsWith("REMOVE")) {
                                    this.l.remove(substring);
                                    i++;
                                }
                            }
                        } else {
                            str = readLine.substring(i2, indexOf2);
                        }
                        a aVar = this.l.get(str);
                        a aVar2 = aVar;
                        if (aVar == null) {
                            aVar2 = new a(str);
                            this.l.put(str, aVar2);
                        }
                        if (indexOf2 != -1 && indexOf == 5 && readLine.startsWith("CLEAN")) {
                            String[] split = readLine.substring(indexOf2 + 1).split(StringUtils.SPACE);
                            aVar2.f33815c = true;
                            aVar2.f33816d = null;
                            aVar2.a(split);
                        } else if (indexOf2 == -1 && indexOf == 5 && readLine.startsWith("DIRTY")) {
                            aVar2.f33816d = new Editor(aVar2);
                        } else if (indexOf2 != -1 || indexOf != 4 || !readLine.startsWith("READ")) {
                            break;
                        }
                        i++;
                    } else {
                        throw new IOException("unexpected journal line: ".concat(String.valueOf(readLine)));
                    }
                } catch (EOFException e) {
                    this.m = i - this.l.size();
                    DiskLruCacheUtil.a(cVar);
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(String.valueOf(readLine)));
        } catch (Throwable th) {
            DiskLruCacheUtil.a(cVar);
            throw th;
        }
    }

    private void c() throws IOException {
        a(this.e);
        Iterator<a> it2 = this.l.values().iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (next.f33816d == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.f33814b[i];
                }
            } else {
                next.f33816d = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    a(next.getCleanFile(i2));
                    a(next.getDirtyFile(i2));
                }
                it2.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws IOException {
        synchronized (this) {
            Writer writer = this.k;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), DiskLruCacheUtil.f33817a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write("1");
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write(StringUtils.LF);
            for (a aVar : this.l.values()) {
                if (aVar.f33816d != null) {
                    bufferedWriter.write("DIRTY " + aVar.f33813a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + aVar.f33813a + aVar.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f33802d.exists()) {
                a(this.f33802d, this.f, true);
            }
            a(this.e, this.f33802d, false);
            this.f.delete();
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f33802d, true), DiskLruCacheUtil.f33817a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        int i = this.m;
        return i >= 2000 && i >= this.l.size();
    }

    private void f() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws IOException {
        while (this.j > this.h) {
            remove(this.l.entrySet().iterator().next().getKey());
        }
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    a(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f33802d.exists()) {
                try {
                    diskLruCache.b();
                    diskLruCache.c();
                    diskLruCache.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f33802d, true), DiskLruCacheUtil.f33817a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.d();
            return diskLruCache2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.k != null) {
                Iterator it2 = new ArrayList(this.l.values()).iterator();
                while (it2.hasNext()) {
                    a aVar = (a) it2.next();
                    if (aVar.f33816d != null) {
                        aVar.f33816d.abort();
                    }
                }
                g();
                this.k.close();
                this.k = null;
            }
        }
    }

    public final void delete() throws IOException {
        close();
        DiskLruCacheUtil.a(this.f33801c);
    }

    public final Editor edit(String str) throws IOException {
        return a(str, -1L);
    }

    public final void flush() throws IOException {
        synchronized (this) {
            f();
            g();
            this.k.flush();
        }
    }

    public final Snapshot get(String str) throws IOException {
        synchronized (this) {
            f();
            a(str);
            a aVar = this.l.get(str);
            if (aVar == null) {
                return null;
            }
            if (!aVar.f33815c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.i];
            for (int i = 0; i < this.i; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(aVar.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.m++;
            this.k.append((CharSequence) ("READ " + str + '\n'));
            if (e()) {
                this.f33800b.submit(this.o);
            }
            return new Snapshot(str, aVar.e, inputStreamArr, aVar.f33814b);
        }
    }

    public final File getDirectory() {
        return this.f33801c;
    }

    public final long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.h;
        }
        return j;
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.k == null;
        }
        return z;
    }

    public final boolean remove(String str) throws IOException {
        synchronized (this) {
            f();
            a(str);
            a aVar = this.l.get(str);
            if (aVar != null && aVar.f33816d == null) {
                for (int i = 0; i < this.i; i++) {
                    File cleanFile = aVar.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(cleanFile)));
                    }
                    this.j -= aVar.f33814b[i];
                    aVar.f33814b[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.l.remove(str);
                if (e()) {
                    this.f33800b.submit(this.o);
                }
                return true;
            }
            return false;
        }
    }

    public final void setMaxSize(long j) {
        synchronized (this) {
            this.h = j;
            this.f33800b.submit(this.o);
        }
    }

    public final long size() {
        long j;
        synchronized (this) {
            j = this.j;
        }
        return j;
    }
}

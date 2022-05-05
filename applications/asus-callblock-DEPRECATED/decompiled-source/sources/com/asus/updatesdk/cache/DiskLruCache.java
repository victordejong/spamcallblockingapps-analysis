package com.asus.updatesdk.cache;

import com.asus.updatesdk.BuildConfig;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f3152a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    private final File f3153b;
    private final File c;
    private final File d;
    private final int e;
    private final long f;
    private final int g;
    private Writer i;
    private int k;
    private long h = 0;
    private final LinkedHashMap<String, Entry> j = new LinkedHashMap<>(0, 0.75f, true);
    private long l = 0;
    private final ExecutorService m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> n = new Callable<Void>() { // from class: com.asus.updatesdk.cache.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public Void call() {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.i == null) {
                    return null;
                }
                DiskLruCache.this.g();
                if (DiskLruCache.this.e()) {
                    DiskLruCache.this.d();
                    DiskLruCache.this.k = 0;
                }
                return null;
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: b  reason: collision with root package name */
        private final Entry f3156b;
        private final boolean[] c;
        private boolean d;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/DiskLruCache$Editor$FaultHidingOutputStream.class */
        public class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            /* synthetic */ FaultHidingOutputStream(Editor editor, OutputStream outputStream, byte b2) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.d = true;
                }
            }
        }

        private Editor(Entry entry) {
            this.f3156b = entry;
            this.c = entry.d ? null : new boolean[DiskLruCache.this.g];
        }

        /* synthetic */ Editor(DiskLruCache diskLruCache, Entry entry, byte b2) {
            this(entry);
        }

        public final void abort() {
            DiskLruCache.this.a(this, false);
        }

        public final void commit() {
            if (this.d) {
                DiskLruCache.this.a(this, false);
                DiskLruCache.this.a(this.f3156b.f3159b);
                return;
            }
            DiskLruCache.this.a(this, true);
        }

        public final String getString(int i) {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.a(newInputStream) : null;
        }

        public final InputStream newInputStream(int i) {
            synchronized (DiskLruCache.this) {
                if (this.f3156b.e != this) {
                    throw new IllegalStateException();
                }
                return !this.f3156b.d ? null : new FileInputStream(this.f3156b.getCleanFile(i));
            }
        }

        public final OutputStream newOutputStream(int i) {
            FaultHidingOutputStream faultHidingOutputStream;
            synchronized (DiskLruCache.this) {
                if (this.f3156b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.f3156b.d) {
                    this.c[i] = true;
                }
                faultHidingOutputStream = new FaultHidingOutputStream(this, new FileOutputStream(this.f3156b.getDirtyFile(i)), (byte) 0);
            }
            return faultHidingOutputStream;
        }

        public final void set(int i, String str) {
            OutputStreamWriter outputStreamWriter;
            Throwable th;
            try {
                outputStreamWriter = new OutputStreamWriter(newOutputStream(i), DiskLruCache.f3152a);
                try {
                    outputStreamWriter.write(str);
                    DiskLruCache.b(outputStreamWriter);
                } catch (Throwable th2) {
                    th = th2;
                    DiskLruCache.b(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                outputStreamWriter = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/DiskLruCache$Entry.class */
    public final class Entry {

        /* renamed from: b  reason: collision with root package name */
        private final String f3159b;
        private final long[] c;
        private boolean d;
        private Editor e;
        private long f;

        private Entry(String str) {
            this.f3159b = str;
            this.c = new long[DiskLruCache.this.g];
        }

        /* synthetic */ Entry(DiskLruCache diskLruCache, String str, byte b2) {
            this(str);
        }

        private static IOException a(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        static /* synthetic */ void a(Entry entry, String[] strArr) {
            if (strArr.length != DiskLruCache.this.g) {
                throw a(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    entry.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw a(strArr);
                }
            }
        }

        public final File getCleanFile(int i) {
            return new File(DiskLruCache.this.f3153b, this.f3159b + "." + i);
        }

        public final File getDirtyFile(int i) {
            return new File(DiskLruCache.this.f3153b, this.f3159b + "." + i + ".tmp");
        }

        public final String getLengths() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {

        /* renamed from: b  reason: collision with root package name */
        private final String f3161b;
        private final long c;
        private final InputStream[] d;

        private Snapshot(String str, long j, InputStream[] inputStreamArr) {
            this.f3161b = str;
            this.c = j;
            this.d = inputStreamArr;
        }

        /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, InputStream[] inputStreamArr, byte b2) {
            this(str, j, inputStreamArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.d) {
                DiskLruCache.b((Closeable) inputStream);
            }
        }

        public final Editor edit() {
            return DiskLruCache.this.a(this.f3161b, this.c);
        }

        public final InputStream getInputStream(int i) {
            return this.d[i];
        }

        public final String getString(int i) {
            return DiskLruCache.a(getInputStream(i));
        }
    }

    private DiskLruCache(File file, int i, int i2, long j) {
        this.f3153b = file;
        this.e = i;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.g = i2;
        this.f = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Editor a(String str, long j) {
        Editor editor;
        synchronized (this) {
            f();
            b(str);
            Entry entry = this.j.get(str);
            if (j == -1 || (entry != null && entry.f == j)) {
                if (entry == null) {
                    entry = new Entry(this, str, (byte) 0);
                    this.j.put(str, entry);
                } else if (entry.e != null) {
                    editor = null;
                }
                Editor editor2 = new Editor(this, entry, (byte) 0);
                entry.e = editor2;
                this.i.write("DIRTY " + str + '\n');
                this.i.flush();
                editor = editor2;
            } else {
                editor = null;
            }
        }
        return editor;
    }

    static /* synthetic */ String a(InputStream inputStream) {
        return a((Reader) new InputStreamReader(inputStream, f3152a));
    }

    private static String a(Reader reader) {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, read);
            }
        } finally {
            reader.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Editor editor, boolean z) {
        synchronized (this) {
            Entry entry = editor.f3156b;
            if (entry.e != editor) {
                throw new IllegalStateException();
            }
            int i = 0;
            if (z) {
                i = 0;
                if (!entry.d) {
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= this.g) {
                            break;
                        } else if (!editor.c[i2]) {
                            editor.abort();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!entry.getDirtyFile(i2).exists()) {
                            editor.abort();
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.g) {
                File dirtyFile = entry.getDirtyFile(i);
                if (!z) {
                    b(dirtyFile);
                } else if (dirtyFile.exists()) {
                    File cleanFile = entry.getCleanFile(i);
                    dirtyFile.renameTo(cleanFile);
                    long j = entry.c[i];
                    long length = cleanFile.length();
                    entry.c[i] = length;
                    this.h = (this.h - j) + length;
                }
                i++;
            }
            this.k++;
            entry.e = null;
            if (entry.d || z) {
                entry.d = true;
                this.i.write("CLEAN " + entry.f3159b + entry.getLengths() + '\n');
                if (z) {
                    long j2 = this.l;
                    this.l = 1 + j2;
                    entry.f = j2;
                }
            } else {
                this.j.remove(entry.f3159b);
                this.i.write("REMOVE " + entry.f3159b + '\n');
            }
            if (this.h > this.f || e()) {
                this.m.submit(this.n);
            }
        }
    }

    private static void a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IllegalArgumentException("not a directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        boolean z;
        synchronized (this) {
            f();
            b(str);
            Entry entry = this.j.get(str);
            if (entry == null || entry.e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.g; i++) {
                    File cleanFile = entry.getCleanFile(i);
                    if (!cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.h -= entry.c[i];
                    entry.c[i] = 0;
                }
                this.k++;
                this.i.append((CharSequence) "REMOVE");
                this.i.append(' ');
                this.i.append((CharSequence) str);
                this.i.append('\n');
                this.j.remove(str);
                if (e()) {
                    this.m.submit(this.n);
                }
                z = true;
            }
        }
        return z;
    }

    private static String b(InputStream inputStream) {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                throw new EOFException();
            } else if (read != 10) {
                sb.append((char) read);
            } else {
                int length = sb.length();
                if (length > 0 && sb.charAt(length - 1) == '\r') {
                    sb.setLength(length - 1);
                }
                return sb.toString();
            }
        }
    }

    private void b() {
        String b2;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.c), 8192);
        try {
            String b3 = b((InputStream) bufferedInputStream);
            String b4 = b((InputStream) bufferedInputStream);
            String b5 = b((InputStream) bufferedInputStream);
            String b6 = b((InputStream) bufferedInputStream);
            String b7 = b((InputStream) bufferedInputStream);
            if (!"libcore.io.DiskLruCache".equals(b3) || !"1".equals(b4) || !Integer.toString(this.e).equals(b5) || !Integer.toString(this.g).equals(b6) || !BuildConfig.FLAVOR.equals(b7)) {
                throw new IOException("unexpected journal header: [" + b3 + ", " + b4 + ", " + b6 + ", " + b7 + "]");
            }
            while (true) {
                b2 = b((InputStream) bufferedInputStream);
                String[] split = b2.split(" ");
                if (split.length < 2) {
                    throw new IOException("unexpected journal line: " + b2);
                }
                String str = split[1];
                try {
                    if (!split[0].equals("REMOVE") || split.length != 2) {
                        Entry entry = this.j.get(str);
                        if (entry == null) {
                            entry = new Entry(this, str, (byte) 0);
                            this.j.put(str, entry);
                        }
                        if (split[0].equals("CLEAN") && split.length == this.g + 2) {
                            entry.d = true;
                            entry.e = null;
                            int length = split.length;
                            int length2 = split.length;
                            if (2 > length) {
                                throw new IllegalArgumentException();
                            } else if (2 > length2) {
                                throw new ArrayIndexOutOfBoundsException();
                            } else {
                                int i = length - 2;
                                int min = Math.min(i, length2 - 2);
                                Object[] objArr = (Object[]) Array.newInstance(split.getClass().getComponentType(), i);
                                System.arraycopy(split, 2, objArr, 0, min);
                                Entry.a(entry, (String[]) objArr);
                            }
                        } else if (split[0].equals("DIRTY") && split.length == 2) {
                            entry.e = new Editor(this, entry, (byte) 0);
                        } else if (!split[0].equals("READ") || split.length != 2) {
                            break;
                        }
                    } else {
                        this.j.remove(str);
                    }
                } catch (EOFException e) {
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + b2);
        } finally {
            b((Closeable) bufferedInputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    private static void b(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void b(String str) {
        if (str.contains(" ") || str.contains("\n") || str.contains("\r")) {
            throw new IllegalArgumentException("keys must not contain spaces or newlines: \"" + str + "\"");
        }
    }

    private void c() {
        b(this.d);
        Iterator<Entry> it = this.j.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.e == null) {
                for (int i = 0; i < this.g; i++) {
                    this.h += next.c[i];
                }
            } else {
                next.e = null;
                for (int i2 = 0; i2 < this.g; i2++) {
                    b(next.getCleanFile(i2));
                    b(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        synchronized (this) {
            if (this.i != null) {
                this.i.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.d), 8192);
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (Entry entry : this.j.values()) {
                if (entry.e != null) {
                    bufferedWriter.write("DIRTY " + entry.f3159b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + entry.f3159b + entry.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            this.d.renameTo(this.c);
            this.i = new BufferedWriter(new FileWriter(this.c, true), 8192);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.k >= 2000 && this.k >= this.j.size();
    }

    private void f() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        while (this.h > this.f) {
            a(this.j.entrySet().iterator().next().getKey());
        }
    }

    public static DiskLruCache open(File file, int i, int i2, long j) {
        DiskLruCache diskLruCache;
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            if (diskLruCache2.c.exists()) {
                try {
                    diskLruCache2.b();
                    diskLruCache2.c();
                    diskLruCache2.i = new BufferedWriter(new FileWriter(diskLruCache2.c, true), 8192);
                    diskLruCache = diskLruCache2;
                } catch (IOException e) {
                    diskLruCache2.delete();
                }
                return diskLruCache;
            }
            file.mkdirs();
            diskLruCache = new DiskLruCache(file, i, i2, j);
            diskLruCache.d();
            return diskLruCache;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (this.i != null) {
                Iterator it = new ArrayList(this.j.values()).iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (entry.e != null) {
                        entry.e.abort();
                    }
                }
                g();
                this.i.close();
                this.i = null;
            }
        }
    }

    public final void delete() {
        close();
        a(this.f3153b);
    }

    public final Editor edit(String str) {
        return a(str, -1L);
    }

    public final void flush() {
        synchronized (this) {
            f();
            g();
            this.i.flush();
        }
    }

    public final Snapshot get(String str) {
        Snapshot snapshot;
        synchronized (this) {
            f();
            b(str);
            Entry entry = this.j.get(str);
            if (entry == null) {
                snapshot = null;
            } else {
                snapshot = null;
                if (entry.d) {
                    InputStream[] inputStreamArr = new InputStream[this.g];
                    for (int i = 0; i < this.g; i++) {
                        try {
                            inputStreamArr[i] = new FileInputStream(entry.getCleanFile(i));
                        } catch (FileNotFoundException e) {
                            snapshot = null;
                        }
                    }
                    this.k++;
                    this.i.append((CharSequence) "READ");
                    this.i.append(' ');
                    this.i.append((CharSequence) str);
                    this.i.append('\n');
                    if (e()) {
                        this.m.submit(this.n);
                    }
                    snapshot = new Snapshot(this, str, entry.f, inputStreamArr, (byte) 0);
                }
            }
        }
        return snapshot;
    }

    public final File getDirectory() {
        return this.f3153b;
    }

    public final boolean isClosed() {
        return this.i == null;
    }

    public final long maxSize() {
        return this.f;
    }

    public final long size() {
        long j;
        synchronized (this) {
            j = this.h;
        }
        return j;
    }
}

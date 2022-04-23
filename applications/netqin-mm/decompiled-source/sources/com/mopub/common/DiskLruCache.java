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
import p131c.p421j.p422a.C6636e;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: o */
    public static final Pattern f33693o = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: p */
    public static final OutputStream f33694p = new C8694b();

    /* renamed from: a */
    public final File f33695a;

    /* renamed from: b */
    public final File f33696b;

    /* renamed from: c */
    public final File f33697c;

    /* renamed from: d */
    public final File f33698d;

    /* renamed from: e */
    public final int f33699e;

    /* renamed from: f */
    public long f33700f;

    /* renamed from: g */
    public final int f33701g;

    /* renamed from: i */
    public Writer f33703i;

    /* renamed from: k */
    public int f33705k;

    /* renamed from: h */
    public long f33702h = 0;

    /* renamed from: j */
    public final LinkedHashMap<String, C8695c> f33704j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l */
    public long f33706l = 0;

    /* renamed from: m */
    public final ThreadPoolExecutor f33707m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: n */
    public final Callable<Void> f33708n = new CallableC8693a();

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: a */
        public final C8695c f33709a;

        /* renamed from: b */
        public final boolean[] f33710b;

        /* renamed from: c */
        public boolean f33711c;

        /* renamed from: d */
        public boolean f33712d;

        /* renamed from: com.mopub.common.DiskLruCache$Editor$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$Editor$a.class */
        public class C8692a extends FilterOutputStream {
            public C8692a(OutputStream outputStream) {
                super(outputStream);
            }

            public /* synthetic */ C8692a(Editor editor, OutputStream outputStream, CallableC8693a aVar) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    Editor.this.f33711c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    Editor.this.f33711c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    Editor.this.f33711c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.f33711c = true;
                }
            }
        }

        public Editor(C8695c cVar) {
            this.f33709a = cVar;
            this.f33710b = cVar.f33723c ? null : new boolean[DiskLruCache.this.f33701g];
        }

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C8695c cVar, CallableC8693a aVar) {
            this(cVar);
        }

        public void abort() throws IOException {
            DiskLruCache.this.m4691a(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.f33712d) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public void commit() throws IOException {
            if (this.f33711c) {
                DiskLruCache.this.m4691a(this, false);
                DiskLruCache.this.remove(this.f33709a.f33721a);
            } else {
                DiskLruCache.this.m4691a(this, true);
            }
            this.f33712d = true;
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.m4679b(newInputStream) : null;
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f33709a.f33724d != this) {
                    throw new IllegalStateException();
                } else if (!this.f33709a.f33723c) {
                    return null;
                } else {
                    try {
                        return new FileInputStream(this.f33709a.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
            }
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C8692a aVar;
            synchronized (DiskLruCache.this) {
                if (this.f33709a.f33724d == this) {
                    if (!this.f33709a.f33723c) {
                        this.f33710b[i] = true;
                    }
                    File dirtyFile = this.f33709a.getDirtyFile(i);
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e) {
                        DiskLruCache.this.f33695a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(dirtyFile);
                        } catch (FileNotFoundException e2) {
                            return DiskLruCache.f33694p;
                        }
                    }
                    aVar = new C8692a(this, fileOutputStream, null);
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }

        public void set(int i, String str) throws IOException {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f33728b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.m4654a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.m4654a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {

        /* renamed from: a */
        public final String f33715a;

        /* renamed from: b */
        public final long f33716b;

        /* renamed from: c */
        public final InputStream[] f33717c;

        /* renamed from: d */
        public final long[] f33718d;

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f33715a = str;
            this.f33716b = j;
            this.f33717c = inputStreamArr;
            this.f33718d = jArr;
        }

        public /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC8693a aVar) {
            this(str, j, inputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f33717c) {
                DiskLruCacheUtil.m4654a(inputStream);
            }
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.m4682a(this.f33715a, this.f33716b);
        }

        public InputStream getInputStream(int i) {
            return this.f33717c[i];
        }

        public long getLength(int i) {
            return this.f33718d[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.m4679b(getInputStream(i));
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$a.class */
    public class CallableC8693a implements Callable<Void> {
        public CallableC8693a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f33703i == null) {
                    return null;
                }
                DiskLruCache.this.m4671f();
                if (DiskLruCache.this.m4681b()) {
                    DiskLruCache.this.m4673e();
                    DiskLruCache.this.f33705k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$b.class */
    public static final class C8694b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$c.class */
    public final class C8695c {

        /* renamed from: a */
        public final String f33721a;

        /* renamed from: b */
        public final long[] f33722b;

        /* renamed from: c */
        public boolean f33723c;

        /* renamed from: d */
        public Editor f33724d;

        /* renamed from: e */
        public long f33725e;

        public C8695c(String str) {
            this.f33721a = str;
            this.f33722b = new long[DiskLruCache.this.f33701g];
        }

        public /* synthetic */ C8695c(DiskLruCache diskLruCache, String str, CallableC8693a aVar) {
            this(str);
        }

        /* renamed from: a */
        public final IOException m4660a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: b */
        public final void m4658b(String[] strArr) throws IOException {
            if (strArr.length == DiskLruCache.this.f33701g) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f33722b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m4660a(strArr);
                        throw null;
                    }
                }
                return;
            }
            m4660a(strArr);
            throw null;
        }

        public File getCleanFile(int i) {
            File file = DiskLruCache.this.f33695a;
            return new File(file, this.f33721a + "." + i);
        }

        public File getDirtyFile(int i) {
            File file = DiskLruCache.this.f33695a;
            return new File(file, this.f33721a + "." + i + ".tmp");
        }

        public String getLengths() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f33722b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f33695a = file;
        this.f33699e = i;
        this.f33696b = new File(file, "journal");
        this.f33697c = new File(file, "journal.tmp");
        this.f33698d = new File(file, "journal.bkp");
        this.f33701g = i2;
        this.f33700f = j;
    }

    /* renamed from: a */
    public static void m4686a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m4685a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m4686a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: b */
    public static String m4679b(InputStream inputStream) throws IOException {
        return DiskLruCacheUtil.m4652a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.f33728b));
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
                    m4685a(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f33696b.exists()) {
                try {
                    diskLruCache.m4675d();
                    diskLruCache.m4677c();
                    diskLruCache.f33703i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f33696b, true), DiskLruCacheUtil.f33727a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.m4673e();
            return diskLruCache2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: a */
    public final Editor m4682a(String str, long j) throws IOException {
        synchronized (this) {
            m4692a();
            m4678b(str);
            C8695c cVar = this.f33704j.get(str);
            if (j != -1 && (cVar == null || cVar.f33725e != j)) {
                return null;
            }
            if (cVar == null) {
                cVar = new C8695c(this, str, null);
                this.f33704j.put(str, cVar);
            } else if (cVar.f33724d != null) {
                return null;
            }
            Editor editor = new Editor(this, cVar, null);
            cVar.f33724d = editor;
            Writer writer = this.f33703i;
            writer.write("DIRTY " + str + '\n');
            this.f33703i.flush();
            return editor;
        }
    }

    /* renamed from: a */
    public final void m4692a() {
        if (this.f33703i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: a */
    public final void m4691a(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            C8695c cVar = editor.f33709a;
            if (cVar.f33724d == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!cVar.f33723c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f33701g) {
                                break;
                            } else if (!editor.f33710b[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!cVar.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f33701g) {
                    File dirtyFile = cVar.getDirtyFile(i);
                    if (!z) {
                        m4686a(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = cVar.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = cVar.f33722b[i];
                        long length = cleanFile.length();
                        cVar.f33722b[i] = length;
                        this.f33702h = (this.f33702h - j) + length;
                    }
                    i++;
                }
                this.f33705k++;
                cVar.f33724d = null;
                if (cVar.f33723c || z) {
                    cVar.f33723c = true;
                    this.f33703i.write("CLEAN " + cVar.f33721a + cVar.getLengths() + '\n');
                    if (z) {
                        long j2 = this.f33706l;
                        this.f33706l = 1 + j2;
                        cVar.f33725e = j2;
                    }
                } else {
                    this.f33704j.remove(cVar.f33721a);
                    this.f33703i.write("REMOVE " + cVar.f33721a + '\n');
                }
                this.f33703i.flush();
                if (this.f33702h > this.f33700f || m4681b()) {
                    this.f33707m.submit(this.f33708n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final void m4683a(String str) throws IOException {
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
                        this.f33704j.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C8695c cVar = this.f33704j.get(str2);
            C8695c cVar2 = cVar;
            if (cVar == null) {
                cVar2 = new C8695c(this, str2, null);
                this.f33704j.put(str2, cVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                cVar2.f33723c = true;
                cVar2.f33724d = null;
                cVar2.m4658b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                cVar2.f33724d = new Editor(this, cVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: b */
    public final void m4678b(String str) {
        if (!f33693o.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* renamed from: b */
    public final boolean m4681b() {
        int i = this.f33705k;
        return i >= 2000 && i >= this.f33704j.size();
    }

    /* renamed from: c */
    public final void m4677c() throws IOException {
        m4686a(this.f33697c);
        Iterator<C8695c> it = this.f33704j.values().iterator();
        while (it.hasNext()) {
            C8695c next = it.next();
            if (next.f33724d == null) {
                for (int i = 0; i < this.f33701g; i++) {
                    this.f33702h += next.f33722b[i];
                }
            } else {
                next.f33724d = null;
                for (int i2 = 0; i2 < this.f33701g; i2++) {
                    m4686a(next.getCleanFile(i2));
                    m4686a(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f33703i != null) {
                Iterator it = new ArrayList(this.f33704j.values()).iterator();
                while (it.hasNext()) {
                    C8695c cVar = (C8695c) it.next();
                    if (cVar.f33724d != null) {
                        cVar.f33724d.abort();
                    }
                }
                m4671f();
                this.f33703i.close();
                this.f33703i = null;
            }
        }
    }

    /* renamed from: d */
    public final void m4675d() throws IOException {
        C6636e eVar = new C6636e(new FileInputStream(this.f33696b), DiskLruCacheUtil.f33727a);
        try {
            String readLine = eVar.readLine();
            String readLine2 = eVar.readLine();
            String readLine3 = eVar.readLine();
            String readLine4 = eVar.readLine();
            String readLine5 = eVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f33699e).equals(readLine3) || !Integer.toString(this.f33701g).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m4683a(eVar.readLine());
                    i++;
                } catch (EOFException e) {
                    this.f33705k = i - this.f33704j.size();
                    DiskLruCacheUtil.m4654a(eVar);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.m4654a(eVar);
            throw th;
        }
    }

    public void delete() throws IOException {
        close();
        DiskLruCacheUtil.m4653a(this.f33695a);
    }

    /* renamed from: e */
    public final void m4673e() throws IOException {
        synchronized (this) {
            if (this.f33703i != null) {
                this.f33703i.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f33697c), DiskLruCacheUtil.f33727a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f33699e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f33701g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C8695c cVar : this.f33704j.values()) {
                if (cVar.f33724d != null) {
                    bufferedWriter.write("DIRTY " + cVar.f33721a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cVar.f33721a + cVar.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f33696b.exists()) {
                m4685a(this.f33696b, this.f33698d, true);
            }
            m4685a(this.f33697c, this.f33696b, false);
            this.f33698d.delete();
            this.f33703i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f33696b, true), DiskLruCacheUtil.f33727a));
        }
    }

    public Editor edit(String str) throws IOException {
        return m4682a(str, -1L);
    }

    /* renamed from: f */
    public final void m4671f() throws IOException {
        while (this.f33702h > this.f33700f) {
            remove(this.f33704j.entrySet().iterator().next().getKey());
        }
    }

    public void flush() throws IOException {
        synchronized (this) {
            m4692a();
            m4671f();
            this.f33703i.flush();
        }
    }

    public Snapshot get(String str) throws IOException {
        synchronized (this) {
            m4692a();
            m4678b(str);
            C8695c cVar = this.f33704j.get(str);
            if (cVar == null) {
                return null;
            }
            if (!cVar.f33723c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f33701g];
            for (int i = 0; i < this.f33701g; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(cVar.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f33701g && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.m4654a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f33705k++;
            this.f33703i.append((CharSequence) ("READ " + str + '\n'));
            if (m4681b()) {
                this.f33707m.submit(this.f33708n);
            }
            return new Snapshot(this, str, cVar.f33725e, inputStreamArr, cVar.f33722b, null);
        }
    }

    public File getDirectory() {
        return this.f33695a;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.f33700f;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f33703i == null;
        }
        return z;
    }

    public boolean remove(String str) throws IOException {
        synchronized (this) {
            m4692a();
            m4678b(str);
            C8695c cVar = this.f33704j.get(str);
            if (cVar != null && cVar.f33724d == null) {
                for (int i = 0; i < this.f33701g; i++) {
                    File cleanFile = cVar.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.f33702h -= cVar.f33722b[i];
                    cVar.f33722b[i] = 0;
                }
                this.f33705k++;
                this.f33703i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f33704j.remove(str);
                if (m4681b()) {
                    this.f33707m.submit(this.f33708n);
                }
                return true;
            }
            return false;
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.f33700f = j;
            this.f33707m.submit(this.f33708n);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.f33702h;
        }
        return j;
    }
}

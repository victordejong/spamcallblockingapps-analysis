package com.aotter.net.trek.common;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: a */
    public static final String f1462a = "journal";

    /* renamed from: b */
    public static final String f1463b = "journal.tmp";

    /* renamed from: c */
    public static final String f1464c = "journal.bkp";

    /* renamed from: d */
    public static final String f1465d = "libcore.io.DiskLruCache";

    /* renamed from: e */
    public static final String f1466e = "1";

    /* renamed from: f */
    public static final long f1467f = -1;

    /* renamed from: i */
    public static final String f1469i = "CLEAN";

    /* renamed from: j */
    public static final String f1470j = "DIRTY";

    /* renamed from: k */
    public static final String f1471k = "REMOVE";

    /* renamed from: l */
    public static final String f1472l = "READ";

    /* renamed from: m */
    public final File f1475m;

    /* renamed from: n */
    public final File f1476n;

    /* renamed from: o */
    public final File f1477o;

    /* renamed from: p */
    public final File f1478p;

    /* renamed from: q */
    public final int f1479q;

    /* renamed from: r */
    public long f1480r;

    /* renamed from: s */
    public final int f1481s;

    /* renamed from: u */
    public Writer f1483u;

    /* renamed from: w */
    public int f1485w;

    /* renamed from: g */
    public static final Pattern f1468g = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: z */
    public static final OutputStream f1473z = new C1744d();

    /* renamed from: t */
    public long f1482t = 0;

    /* renamed from: v */
    public final LinkedHashMap<String, C1746f> f1484v = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: x */
    public long f1486x = 0;

    /* renamed from: h */
    public final ThreadPoolExecutor f1474h = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: y */
    public final Callable<Void> f1487y = new CallableC1743c(this);

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: b */
        public final C1746f f1489b;

        /* renamed from: c */
        public final boolean[] f1490c;

        /* renamed from: d */
        public boolean f1491d;

        /* renamed from: e */
        public boolean f1492e;

        public Editor(C1746f fVar) {
            this.f1489b = fVar;
            this.f1490c = C1746f.m36351d(fVar) ? null : new boolean[DiskLruCache.this.f1481s];
        }

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C1746f fVar, CallableC1743c cVar) {
            this(fVar);
        }

        public void abort() {
            DiskLruCache.this.m36408a(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.f1492e) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public void commit() {
            if (this.f1491d) {
                DiskLruCache.this.m36408a(this, false);
                DiskLruCache.this.remove(C1746f.m36352c(this.f1489b));
            } else {
                DiskLruCache.this.m36408a(this, true);
            }
            this.f1492e = true;
        }

        public String getString(int i) {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.m36396b(newInputStream) : null;
        }

        public InputStream newInputStream(int i) {
            synchronized (DiskLruCache.this) {
                if (C1746f.m36360a(this.f1489b) != this) {
                    throw new IllegalStateException();
                } else if (!C1746f.m36351d(this.f1489b)) {
                    return null;
                } else {
                    try {
                        return new FileInputStream(this.f1489b.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
            }
        }

        public OutputStream newOutputStream(int i) {
            FileOutputStream fileOutputStream;
            C1745e eVar;
            synchronized (DiskLruCache.this) {
                if (C1746f.m36360a(this.f1489b) == this) {
                    if (!C1746f.m36351d(this.f1489b)) {
                        this.f1490c[i] = true;
                    }
                    File dirtyFile = this.f1489b.getDirtyFile(i);
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e) {
                        DiskLruCache.this.f1475m.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(dirtyFile);
                        } catch (FileNotFoundException e2) {
                            return DiskLruCache.f1473z;
                        }
                    }
                    eVar = new C1745e(this, fileOutputStream, null);
                } else {
                    throw new IllegalStateException();
                }
            }
            return eVar;
        }

        public void set(int i, String str) {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f1499b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.m36382a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.m36382a(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {

        /* renamed from: b */
        public final String f1494b;

        /* renamed from: c */
        public final long f1495c;

        /* renamed from: d */
        public final InputStream[] f1496d;

        /* renamed from: e */
        public final long[] f1497e;

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f1494b = str;
            this.f1495c = j;
            this.f1496d = inputStreamArr;
            this.f1497e = jArr;
        }

        public /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC1743c cVar) {
            this(str, j, inputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f1496d) {
                DiskLruCacheUtil.m36382a(inputStream);
            }
        }

        public Editor edit() {
            return DiskLruCache.this.m36399a(this.f1494b, this.f1495c);
        }

        public InputStream getInputStream(int i) {
            return this.f1496d[i];
        }

        public long getLength(int i) {
            return this.f1497e[i];
        }

        public String getString(int i) {
            return DiskLruCache.m36396b(getInputStream(i));
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f1475m = file;
        this.f1479q = i;
        this.f1476n = new File(file, f1462a);
        this.f1477o = new File(file, f1463b);
        this.f1478p = new File(file, f1464c);
        this.f1481s = i2;
        this.f1480r = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Editor m36399a(String str, long j) {
        synchronized (this) {
            m36388f();
            m36395b(str);
            C1746f fVar = this.f1484v.get(str);
            if (j != -1 && (fVar == null || C1746f.m36350e(fVar) != j)) {
                return null;
            }
            if (fVar == null) {
                fVar = new C1746f(this, str, null);
                this.f1484v.put(str, fVar);
            } else if (C1746f.m36360a(fVar) != null) {
                return null;
            }
            Editor editor = new Editor(this, fVar, null);
            C1746f.m36358a(fVar, editor);
            Writer writer = this.f1483u;
            writer.write("DIRTY " + str + '\n');
            this.f1483u.flush();
            return editor;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36408a(Editor editor, boolean z) {
        synchronized (this) {
            C1746f fVar = editor.f1489b;
            if (C1746f.m36360a(fVar) == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!C1746f.m36351d(fVar)) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f1481s) {
                                break;
                            } else if (!editor.f1490c[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!fVar.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f1481s) {
                    File dirtyFile = fVar.getDirtyFile(i);
                    if (!z) {
                        m36403a(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = fVar.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = C1746f.m36354b(fVar)[i];
                        long length = cleanFile.length();
                        C1746f.m36354b(fVar)[i] = length;
                        this.f1482t = (this.f1482t - j) + length;
                    }
                    i++;
                }
                this.f1485w++;
                C1746f.m36358a(fVar, (Editor) null);
                if (C1746f.m36351d(fVar) || z) {
                    C1746f.m36357a(fVar, true);
                    this.f1483u.write("CLEAN " + C1746f.m36352c(fVar) + fVar.getLengths() + '\n');
                    if (z) {
                        long j2 = this.f1486x;
                        this.f1486x = 1 + j2;
                        C1746f.m36359a(fVar, j2);
                    }
                } else {
                    this.f1484v.remove(C1746f.m36352c(fVar));
                    this.f1483u.write("REMOVE " + C1746f.m36352c(fVar) + '\n');
                }
                this.f1483u.flush();
                if (this.f1482t > this.f1480r || m36390e()) {
                    this.f1474h.submit(this.f1487y);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public static void m36403a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m36402a(File file, File file2, boolean z) {
        if (z) {
            m36403a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    private void m36400a(String str) {
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
                    if (str.startsWith(f1471k)) {
                        this.f1484v.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C1746f fVar = this.f1484v.get(str2);
            C1746f fVar2 = fVar;
            if (fVar == null) {
                fVar2 = new C1746f(this, str2, null);
                this.f1484v.put(str2, fVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(f1469i)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                C1746f.m36357a(fVar2, true);
                C1746f.m36358a(fVar2, (Editor) null);
                C1746f.m36356a(fVar2, split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(f1470j)) {
                C1746f.m36358a(fVar2, new Editor(this, fVar2, null));
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith(f1472l)) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: b */
    public static String m36396b(InputStream inputStream) {
        return DiskLruCacheUtil.m36380a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.f1499b));
    }

    /* renamed from: b */
    private void m36398b() {
        C1747g gVar = new C1747g(new FileInputStream(this.f1476n), DiskLruCacheUtil.f1498a);
        try {
            String readLine = gVar.readLine();
            String readLine2 = gVar.readLine();
            String readLine3 = gVar.readLine();
            String readLine4 = gVar.readLine();
            String readLine5 = gVar.readLine();
            if (!f1465d.equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f1479q).equals(readLine3) || !Integer.toString(this.f1481s).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + UserProfile.CARD_CATE_SEPARATOR + readLine2 + UserProfile.CARD_CATE_SEPARATOR + readLine4 + UserProfile.CARD_CATE_SEPARATOR + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m36400a(gVar.readLine());
                    i++;
                } catch (EOFException e) {
                    this.f1485w = i - this.f1484v.size();
                    DiskLruCacheUtil.m36382a(gVar);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.m36382a(gVar);
            throw th;
        }
    }

    /* renamed from: b */
    private void m36395b(String str) {
        if (!f1468g.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* renamed from: c */
    private void m36394c() {
        m36403a(this.f1477o);
        Iterator<C1746f> it = this.f1484v.values().iterator();
        while (it.hasNext()) {
            C1746f next = it.next();
            if (C1746f.m36360a(next) == null) {
                for (int i = 0; i < this.f1481s; i++) {
                    this.f1482t += C1746f.m36354b(next)[i];
                }
            } else {
                C1746f.m36358a(next, (Editor) null);
                for (int i2 = 0; i2 < this.f1481s; i2++) {
                    m36403a(next.getCleanFile(i2));
                    m36403a(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m36392d() {
        synchronized (this) {
            if (this.f1483u != null) {
                this.f1483u.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1477o), DiskLruCacheUtil.f1498a));
            bufferedWriter.write(f1465d);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f1479q));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f1481s));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C1746f fVar : this.f1484v.values()) {
                bufferedWriter.write(C1746f.m36360a(fVar) != null ? "DIRTY " + C1746f.m36352c(fVar) + '\n' : "CLEAN " + C1746f.m36352c(fVar) + fVar.getLengths() + '\n');
            }
            bufferedWriter.close();
            if (this.f1476n.exists()) {
                m36402a(this.f1476n, this.f1478p, true);
            }
            m36402a(this.f1477o, this.f1476n, false);
            this.f1478p.delete();
            this.f1483u = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1476n, true), DiskLruCacheUtil.f1498a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public boolean m36390e() {
        int i = this.f1485w;
        return i >= 2000 && i >= this.f1484v.size();
    }

    /* renamed from: f */
    private void m36388f() {
        if (this.f1483u == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m36386g() {
        while (this.f1482t > this.f1480r) {
            remove(this.f1484v.entrySet().iterator().next().getKey());
        }
    }

    public static DiskLruCache open(File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, f1464c);
            if (file2.exists()) {
                File file3 = new File(file, f1462a);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m36402a(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f1476n.exists()) {
                try {
                    diskLruCache.m36398b();
                    diskLruCache.m36394c();
                    diskLruCache.f1483u = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f1476n, true), DiskLruCacheUtil.f1498a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.m36392d();
            return diskLruCache2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f1483u != null) {
                Iterator it = new ArrayList(this.f1484v.values()).iterator();
                while (it.hasNext()) {
                    C1746f fVar = (C1746f) it.next();
                    if (C1746f.m36360a(fVar) != null) {
                        C1746f.m36360a(fVar).abort();
                    }
                }
                m36386g();
                this.f1483u.close();
                this.f1483u = null;
            }
        }
    }

    public void delete() {
        close();
        DiskLruCacheUtil.m36381a(this.f1475m);
    }

    public Editor edit(String str) {
        return m36399a(str, -1L);
    }

    public void flush() {
        synchronized (this) {
            m36388f();
            m36386g();
            this.f1483u.flush();
        }
    }

    public Snapshot get(String str) {
        synchronized (this) {
            m36388f();
            m36395b(str);
            C1746f fVar = this.f1484v.get(str);
            if (fVar == null) {
                return null;
            }
            if (!C1746f.m36351d(fVar)) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f1481s];
            for (int i = 0; i < this.f1481s; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(fVar.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f1481s && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.m36382a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f1485w++;
            this.f1483u.append((CharSequence) ("READ " + str + '\n'));
            if (m36390e()) {
                this.f1474h.submit(this.f1487y);
            }
            return new Snapshot(this, str, C1746f.m36350e(fVar), inputStreamArr, C1746f.m36354b(fVar), null);
        }
    }

    public File getDirectory() {
        return this.f1475m;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.f1480r;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f1483u == null;
        }
        return z;
    }

    public boolean remove(String str) {
        synchronized (this) {
            m36388f();
            m36395b(str);
            C1746f fVar = this.f1484v.get(str);
            if (fVar != null && C1746f.m36360a(fVar) == null) {
                for (int i = 0; i < this.f1481s; i++) {
                    File cleanFile = fVar.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.f1482t -= C1746f.m36354b(fVar)[i];
                    C1746f.m36354b(fVar)[i] = 0;
                }
                this.f1485w++;
                this.f1483u.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f1484v.remove(str);
                if (m36390e()) {
                    this.f1474h.submit(this.f1487y);
                }
                return true;
            }
            return false;
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.f1480r = j;
            this.f1474h.submit(this.f1487y);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.f1482t;
        }
        return j;
    }
}

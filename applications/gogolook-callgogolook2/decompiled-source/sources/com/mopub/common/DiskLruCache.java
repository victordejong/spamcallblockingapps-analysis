package com.mopub.common;

import androidx.annotation.NonNull;
import androidx.media2.session.MediaSessionImplBase;
import gogolook.callgogolook2.gson.UserProfile;
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
import p081h.p430l.p431a.C10687e;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: o */
    public static final Pattern f8044o = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: p */
    public static final OutputStream f8045p = new C3755b();

    /* renamed from: a */
    public final File f8046a;

    /* renamed from: b */
    public final File f8047b;

    /* renamed from: c */
    public final File f8048c;

    /* renamed from: d */
    public final File f8049d;

    /* renamed from: e */
    public final int f8050e;

    /* renamed from: f */
    public long f8051f;

    /* renamed from: g */
    public final int f8052g;

    /* renamed from: i */
    public Writer f8054i;

    /* renamed from: k */
    public int f8056k;

    /* renamed from: h */
    public long f8053h = 0;

    /* renamed from: j */
    public final LinkedHashMap<String, C3756c> f8055j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l */
    public long f8057l = 0;

    /* renamed from: m */
    public final ThreadPoolExecutor f8058m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: n */
    public final Callable<Void> f8059n = new CallableC3754a();

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: a */
        public final C3756c f8060a;

        /* renamed from: b */
        public final boolean[] f8061b;

        /* renamed from: c */
        public boolean f8062c;

        /* renamed from: d */
        public boolean f8063d;

        /* renamed from: com.mopub.common.DiskLruCache$Editor$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$Editor$a.class */
        public class C3753a extends FilterOutputStream {
            public C3753a(OutputStream outputStream) {
                super(outputStream);
            }

            public /* synthetic */ C3753a(Editor editor, OutputStream outputStream, CallableC3754a aVar) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    Editor.this.f8062c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    Editor.this.f8062c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    Editor.this.f8062c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(@NonNull byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.f8062c = true;
                }
            }
        }

        public Editor(C3756c cVar) {
            this.f8060a = cVar;
            this.f8061b = cVar.f8074c ? null : new boolean[DiskLruCache.this.f8052g];
        }

        public /* synthetic */ Editor(DiskLruCache diskLruCache, C3756c cVar, CallableC3754a aVar) {
            this(cVar);
        }

        public void abort() throws IOException {
            DiskLruCache.this.m30845a(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.f8063d) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public void commit() throws IOException {
            if (this.f8062c) {
                DiskLruCache.this.m30845a(this, false);
                DiskLruCache.this.remove(this.f8060a.f8072a);
            } else {
                DiskLruCache.this.m30845a(this, true);
            }
            this.f8063d = true;
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.m30833b(newInputStream) : null;
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.f8060a.f8075d != this) {
                    throw new IllegalStateException();
                } else if (!this.f8060a.f8074c) {
                    return null;
                } else {
                    try {
                        return new FileInputStream(this.f8060a.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
            }
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C3753a aVar;
            synchronized (DiskLruCache.this) {
                if (this.f8060a.f8075d == this) {
                    if (!this.f8060a.f8074c) {
                        this.f8061b[i] = true;
                    }
                    File dirtyFile = this.f8060a.getDirtyFile(i);
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e) {
                        DiskLruCache.this.f8046a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(dirtyFile);
                        } catch (FileNotFoundException e2) {
                            return DiskLruCache.f8045p;
                        }
                    }
                    aVar = new C3753a(this, fileOutputStream, null);
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
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f8079b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.m30808a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.m30808a(outputStreamWriter);
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
        public final String f8066a;

        /* renamed from: b */
        public final long f8067b;

        /* renamed from: c */
        public final InputStream[] f8068c;

        /* renamed from: d */
        public final long[] f8069d;

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f8066a = str;
            this.f8067b = j;
            this.f8068c = inputStreamArr;
            this.f8069d = jArr;
        }

        public /* synthetic */ Snapshot(DiskLruCache diskLruCache, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC3754a aVar) {
            this(str, j, inputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f8068c) {
                DiskLruCacheUtil.m30808a(inputStream);
            }
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.m30836a(this.f8066a, this.f8067b);
        }

        public InputStream getInputStream(int i) {
            return this.f8068c[i];
        }

        public long getLength(int i) {
            return this.f8069d[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.m30833b(getInputStream(i));
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$a.class */
    public class CallableC3754a implements Callable<Void> {
        public CallableC3754a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.f8054i == null) {
                    return null;
                }
                DiskLruCache.this.m30825f();
                if (DiskLruCache.this.m30835b()) {
                    DiskLruCache.this.m30827e();
                    DiskLruCache.this.f8056k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$b.class */
    public static final class C3755b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/DiskLruCache$c.class */
    public final class C3756c {

        /* renamed from: a */
        public final String f8072a;

        /* renamed from: b */
        public final long[] f8073b;

        /* renamed from: c */
        public boolean f8074c;

        /* renamed from: d */
        public Editor f8075d;

        /* renamed from: e */
        public long f8076e;

        public C3756c(String str) {
            this.f8072a = str;
            this.f8073b = new long[DiskLruCache.this.f8052g];
        }

        public /* synthetic */ C3756c(DiskLruCache diskLruCache, String str, CallableC3754a aVar) {
            this(str);
        }

        /* renamed from: a */
        public final IOException m30814a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: b */
        public final void m30812b(String[] strArr) throws IOException {
            if (strArr.length == DiskLruCache.this.f8052g) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f8073b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m30814a(strArr);
                        throw null;
                    }
                }
                return;
            }
            m30814a(strArr);
            throw null;
        }

        public File getCleanFile(int i) {
            File file = DiskLruCache.this.f8046a;
            return new File(file, this.f8072a + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i);
        }

        public File getDirtyFile(int i) {
            File file = DiskLruCache.this.f8046a;
            return new File(file, this.f8072a + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i + ".tmp");
        }

        public String getLengths() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f8073b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f8046a = file;
        this.f8050e = i;
        this.f8047b = new File(file, com.aotter.net.trek.common.DiskLruCache.f1462a);
        this.f8048c = new File(file, com.aotter.net.trek.common.DiskLruCache.f1463b);
        this.f8049d = new File(file, com.aotter.net.trek.common.DiskLruCache.f1464c);
        this.f8052g = i2;
        this.f8051f = j;
    }

    /* renamed from: a */
    public static void m30840a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m30839a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m30840a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: b */
    public static String m30833b(InputStream inputStream) throws IOException {
        return DiskLruCacheUtil.m30806a((Reader) new InputStreamReader(inputStream, DiskLruCacheUtil.f8079b));
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, com.aotter.net.trek.common.DiskLruCache.f1464c);
            if (file2.exists()) {
                File file3 = new File(file, com.aotter.net.trek.common.DiskLruCache.f1462a);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m30839a(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f8047b.exists()) {
                try {
                    diskLruCache.m30829d();
                    diskLruCache.m30831c();
                    diskLruCache.f8054i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f8047b, true), DiskLruCacheUtil.f8078a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.m30827e();
            return diskLruCache2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: a */
    public final Editor m30836a(String str, long j) throws IOException {
        synchronized (this) {
            m30846a();
            m30832b(str);
            C3756c cVar = this.f8055j.get(str);
            if (j != -1 && (cVar == null || cVar.f8076e != j)) {
                return null;
            }
            if (cVar == null) {
                cVar = new C3756c(this, str, null);
                this.f8055j.put(str, cVar);
            } else if (cVar.f8075d != null) {
                return null;
            }
            Editor editor = new Editor(this, cVar, null);
            cVar.f8075d = editor;
            Writer writer = this.f8054i;
            writer.write("DIRTY " + str + '\n');
            this.f8054i.flush();
            return editor;
        }
    }

    /* renamed from: a */
    public final void m30846a() {
        if (this.f8054i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: a */
    public final void m30845a(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            C3756c cVar = editor.f8060a;
            if (cVar.f8075d == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!cVar.f8074c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f8052g) {
                                break;
                            } else if (!editor.f8061b[i2]) {
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
                while (i < this.f8052g) {
                    File dirtyFile = cVar.getDirtyFile(i);
                    if (!z) {
                        m30840a(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = cVar.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = cVar.f8073b[i];
                        long length = cleanFile.length();
                        cVar.f8073b[i] = length;
                        this.f8053h = (this.f8053h - j) + length;
                    }
                    i++;
                }
                this.f8056k++;
                cVar.f8075d = null;
                if (cVar.f8074c || z) {
                    cVar.f8074c = true;
                    this.f8054i.write("CLEAN " + cVar.f8072a + cVar.getLengths() + '\n');
                    if (z) {
                        long j2 = this.f8057l;
                        this.f8057l = 1 + j2;
                        cVar.f8076e = j2;
                    }
                } else {
                    this.f8055j.remove(cVar.f8072a);
                    this.f8054i.write("REMOVE " + cVar.f8072a + '\n');
                }
                this.f8054i.flush();
                if (this.f8053h > this.f8051f || m30835b()) {
                    this.f8058m.submit(this.f8059n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final void m30837a(String str) throws IOException {
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
                    if (str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1471k)) {
                        this.f8055j.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C3756c cVar = this.f8055j.get(str2);
            C3756c cVar2 = cVar;
            if (cVar == null) {
                cVar2 = new C3756c(this, str2, null);
                this.f8055j.put(str2, cVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1469i)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                cVar2.f8074c = true;
                cVar2.f8075d = null;
                cVar2.m30812b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1470j)) {
                cVar2.f8075d = new Editor(this, cVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith(com.aotter.net.trek.common.DiskLruCache.f1472l)) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: b */
    public final void m30832b(String str) {
        if (!f8044o.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* renamed from: b */
    public final boolean m30835b() {
        int i = this.f8056k;
        return i >= 2000 && i >= this.f8055j.size();
    }

    /* renamed from: c */
    public final void m30831c() throws IOException {
        m30840a(this.f8048c);
        Iterator<C3756c> it = this.f8055j.values().iterator();
        while (it.hasNext()) {
            C3756c next = it.next();
            if (next.f8075d == null) {
                for (int i = 0; i < this.f8052g; i++) {
                    this.f8053h += next.f8073b[i];
                }
            } else {
                next.f8075d = null;
                for (int i2 = 0; i2 < this.f8052g; i2++) {
                    m30840a(next.getCleanFile(i2));
                    m30840a(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f8054i != null) {
                Iterator it = new ArrayList(this.f8055j.values()).iterator();
                while (it.hasNext()) {
                    C3756c cVar = (C3756c) it.next();
                    if (cVar.f8075d != null) {
                        cVar.f8075d.abort();
                    }
                }
                m30825f();
                this.f8054i.close();
                this.f8054i = null;
            }
        }
    }

    /* renamed from: d */
    public final void m30829d() throws IOException {
        C10687e eVar = new C10687e(new FileInputStream(this.f8047b), DiskLruCacheUtil.f8078a);
        try {
            String readLine = eVar.readLine();
            String readLine2 = eVar.readLine();
            String readLine3 = eVar.readLine();
            String readLine4 = eVar.readLine();
            String readLine5 = eVar.readLine();
            if (!com.aotter.net.trek.common.DiskLruCache.f1465d.equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f8050e).equals(readLine3) || !Integer.toString(this.f8052g).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + UserProfile.CARD_CATE_SEPARATOR + readLine2 + UserProfile.CARD_CATE_SEPARATOR + readLine4 + UserProfile.CARD_CATE_SEPARATOR + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m30837a(eVar.readLine());
                    i++;
                } catch (EOFException e) {
                    this.f8056k = i - this.f8055j.size();
                    DiskLruCacheUtil.m30808a(eVar);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.m30808a(eVar);
            throw th;
        }
    }

    public void delete() throws IOException {
        close();
        DiskLruCacheUtil.m30807a(this.f8046a);
    }

    /* renamed from: e */
    public final void m30827e() throws IOException {
        synchronized (this) {
            if (this.f8054i != null) {
                this.f8054i.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f8048c), DiskLruCacheUtil.f8078a));
            bufferedWriter.write(com.aotter.net.trek.common.DiskLruCache.f1465d);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f8050e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f8052g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C3756c cVar : this.f8055j.values()) {
                if (cVar.f8075d != null) {
                    bufferedWriter.write("DIRTY " + cVar.f8072a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cVar.f8072a + cVar.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f8047b.exists()) {
                m30839a(this.f8047b, this.f8049d, true);
            }
            m30839a(this.f8048c, this.f8047b, false);
            this.f8049d.delete();
            this.f8054i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f8047b, true), DiskLruCacheUtil.f8078a));
        }
    }

    public Editor edit(String str) throws IOException {
        return m30836a(str, -1L);
    }

    /* renamed from: f */
    public final void m30825f() throws IOException {
        while (this.f8053h > this.f8051f) {
            remove(this.f8055j.entrySet().iterator().next().getKey());
        }
    }

    public void flush() throws IOException {
        synchronized (this) {
            m30846a();
            m30825f();
            this.f8054i.flush();
        }
    }

    public Snapshot get(String str) throws IOException {
        synchronized (this) {
            m30846a();
            m30832b(str);
            C3756c cVar = this.f8055j.get(str);
            if (cVar == null) {
                return null;
            }
            if (!cVar.f8074c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f8052g];
            for (int i = 0; i < this.f8052g; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(cVar.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f8052g && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.m30808a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f8056k++;
            this.f8054i.append((CharSequence) ("READ " + str + '\n'));
            if (m30835b()) {
                this.f8058m.submit(this.f8059n);
            }
            return new Snapshot(this, str, cVar.f8076e, inputStreamArr, cVar.f8073b, null);
        }
    }

    public File getDirectory() {
        return this.f8046a;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.f8051f;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f8054i == null;
        }
        return z;
    }

    public boolean remove(String str) throws IOException {
        synchronized (this) {
            m30846a();
            m30832b(str);
            C3756c cVar = this.f8055j.get(str);
            if (cVar != null && cVar.f8075d == null) {
                for (int i = 0; i < this.f8052g; i++) {
                    File cleanFile = cVar.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    this.f8053h -= cVar.f8073b[i];
                    cVar.f8073b[i] = 0;
                }
                this.f8056k++;
                this.f8054i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f8055j.remove(str);
                if (m30835b()) {
                    this.f8058m.submit(this.f8059n);
                }
                return true;
            }
            return false;
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.f8051f = j;
            this.f8058m.submit(this.f8059n);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.f8053h;
        }
        return j;
    }
}

package com.mopub.common;

import com.tenor.android.core.constant.StringConstant;
import e.n.a.d;
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
import java.io.StringWriter;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache.class */
public final class DiskLruCache implements Closeable {

    /* renamed from: o */
    public static final Pattern f8465o = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: p */
    public static final OutputStream f8466p = new C2635b();

    /* renamed from: a */
    public final File f8467a;

    /* renamed from: b */
    public final File f8468b;

    /* renamed from: c */
    public final File f8469c;

    /* renamed from: d */
    public final File f8470d;

    /* renamed from: e */
    public final int f8471e;

    /* renamed from: f */
    public long f8472f;

    /* renamed from: g */
    public final int f8473g;

    /* renamed from: i */
    public Writer f8475i;

    /* renamed from: k */
    public int f8477k;

    /* renamed from: h */
    public long f8474h = 0;

    /* renamed from: j */
    public final LinkedHashMap<String, C2636c> f8476j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l */
    public long f8478l = 0;

    /* renamed from: m */
    public final ThreadPoolExecutor f8479m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: n */
    public final Callable<Void> f8480n = new CallableC2634a();

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$Editor.class */
    public final class Editor {

        /* renamed from: a */
        public final C2636c f8481a;

        /* renamed from: b */
        public final boolean[] f8482b;

        /* renamed from: c */
        public boolean f8483c;

        /* renamed from: d */
        public boolean f8484d;

        /* renamed from: com.mopub.common.DiskLruCache$Editor$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$Editor$a.class */
        public class C2633a extends FilterOutputStream {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C2633a(OutputStream outputStream, CallableC2634a callableC2634a) {
                super(outputStream);
                Editor.this = r4;
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    Editor.this.f8483c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    Editor.this.f8483c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    Editor.this.f8483c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.f8483c = true;
                }
            }
        }

        public Editor(C2636c c2636c, CallableC2634a callableC2634a) {
            DiskLruCache.this = r4;
            this.f8481a = c2636c;
            this.f8482b = c2636c.f8495c ? null : new boolean[r4.f8473g];
        }

        public void abort() throws IOException {
            DiskLruCache.m36321d(DiskLruCache.this, this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.f8484d) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public void commit() throws IOException {
            if (this.f8483c) {
                DiskLruCache.m36321d(DiskLruCache.this, this, false);
                DiskLruCache.this.remove(this.f8481a.f8493a);
            } else {
                DiskLruCache.m36321d(DiskLruCache.this, this, true);
            }
            this.f8484d = true;
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.m36322b(newInputStream) : null;
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                C2636c c2636c = this.f8481a;
                if (c2636c.f8496d == this) {
                    if (!c2636c.f8495c) {
                        return null;
                    }
                    try {
                        return new FileInputStream(this.f8481a.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
                throw new IllegalStateException();
            }
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C2633a c2633a;
            synchronized (DiskLruCache.this) {
                C2636c c2636c = this.f8481a;
                if (c2636c.f8496d != this) {
                    throw new IllegalStateException();
                }
                if (!c2636c.f8495c) {
                    this.f8482b[i] = true;
                }
                File dirtyFile = c2636c.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.f8467a.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        return DiskLruCache.f8466p;
                    }
                }
                c2633a = new C2633a(fileOutputStream, null);
            }
            return c2633a;
        }

        public void set(int i, String str) throws IOException {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), DiskLruCacheUtil.f8500b);
                try {
                    outputStreamWriter2.write(str);
                    DiskLruCacheUtil.m36314a(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    DiskLruCacheUtil.m36314a(outputStreamWriter);
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
        public final String f8487a;

        /* renamed from: b */
        public final long f8488b;

        /* renamed from: c */
        public final InputStream[] f8489c;

        /* renamed from: d */
        public final long[] f8490d;

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC2634a callableC2634a) {
            DiskLruCache.this = r5;
            this.f8487a = str;
            this.f8488b = j;
            this.f8489c = inputStreamArr;
            this.f8490d = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f8489c) {
                DiskLruCacheUtil.m36314a(inputStream);
            }
        }

        public Editor edit() throws IOException {
            DiskLruCache diskLruCache = DiskLruCache.this;
            String str = this.f8487a;
            long j = this.f8488b;
            Pattern pattern = DiskLruCache.f8465o;
            return diskLruCache.m36318l(str, j);
        }

        public InputStream getInputStream(int i) {
            return this.f8489c[i];
        }

        public long getLength(int i) {
            return this.f8490d[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.m36322b(getInputStream(i));
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$a.class */
    public class CallableC2634a implements Callable<Void> {
        public CallableC2634a() {
            DiskLruCache.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (diskLruCache.f8475i == null) {
                    return null;
                }
                diskLruCache.m36324P();
                if (DiskLruCache.this.m36317q()) {
                    DiskLruCache.this.m36326J();
                    DiskLruCache.this.f8477k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$b.class */
    public static final class C2635b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: com.mopub.common.DiskLruCache$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCache$c.class */
    public final class C2636c {

        /* renamed from: a */
        public final String f8493a;

        /* renamed from: b */
        public final long[] f8494b;

        /* renamed from: c */
        public boolean f8495c;

        /* renamed from: d */
        public Editor f8496d;

        /* renamed from: e */
        public long f8497e;

        public C2636c(String str, CallableC2634a callableC2634a) {
            DiskLruCache.this = r4;
            this.f8493a = str;
            this.f8494b = new long[r4.f8473g];
        }

        /* renamed from: a */
        public final IOException m36315a(String[] strArr) throws IOException {
            StringBuilder m8728C = C22128a.m8728C("unexpected journal line: ");
            m8728C.append(Arrays.toString(strArr));
            throw new IOException(m8728C.toString());
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.f8467a, C22128a.m8614i(new StringBuilder(), this.f8493a, StringConstant.DOT, i));
        }

        public File getDirtyFile(int i) {
            File file = DiskLruCache.this.f8467a;
            return new File(file, this.f8493a + StringConstant.DOT + i + ".tmp");
        }

        public String getLengths() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f8494b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f8467a = file;
        this.f8471e = i;
        this.f8468b = new File(file, "journal");
        this.f8469c = new File(file, "journal.tmp");
        this.f8470d = new File(file, "journal.bkp");
        this.f8473g = i2;
        this.f8472f = j;
    }

    /* renamed from: K */
    public static void m36325K(File file, File file2, boolean z) throws IOException {
        if (z) {
            m36319k(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: b */
    public static String m36322b(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, DiskLruCacheUtil.f8500b);
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (read == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, read);
            }
        } finally {
            inputStreamReader.close();
        }
    }

    /* renamed from: d */
    public static void m36321d(DiskLruCache diskLruCache, Editor editor, boolean z) throws IOException {
        synchronized (diskLruCache) {
            C2636c c2636c = editor.f8481a;
            if (c2636c.f8496d == editor) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c2636c.f8495c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= diskLruCache.f8473g) {
                                break;
                            } else if (!editor.f8482b[i2]) {
                                editor.abort();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!c2636c.getDirtyFile(i2).exists()) {
                                editor.abort();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < diskLruCache.f8473g) {
                    File dirtyFile = c2636c.getDirtyFile(i);
                    if (!z) {
                        m36319k(dirtyFile);
                    } else if (dirtyFile.exists()) {
                        File cleanFile = c2636c.getCleanFile(i);
                        dirtyFile.renameTo(cleanFile);
                        long j = c2636c.f8494b[i];
                        long length = cleanFile.length();
                        c2636c.f8494b[i] = length;
                        diskLruCache.f8474h = (diskLruCache.f8474h - j) + length;
                    }
                    i++;
                }
                diskLruCache.f8477k++;
                c2636c.f8496d = null;
                if (c2636c.f8495c || z) {
                    c2636c.f8495c = true;
                    diskLruCache.f8475i.write("CLEAN " + c2636c.f8493a + c2636c.getLengths() + '\n');
                    if (z) {
                        long j2 = diskLruCache.f8478l;
                        diskLruCache.f8478l = 1 + j2;
                        c2636c.f8497e = j2;
                    }
                } else {
                    diskLruCache.f8476j.remove(c2636c.f8493a);
                    diskLruCache.f8475i.write("REMOVE " + c2636c.f8493a + '\n');
                }
                diskLruCache.f8475i.flush();
                if (diskLruCache.f8474h > diskLruCache.f8472f || diskLruCache.m36317q()) {
                    diskLruCache.f8479m.submit(diskLruCache.f8480n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: k */
    public static void m36319k(File file) throws IOException {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
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
                    m36325K(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.f8468b.exists()) {
                try {
                    diskLruCache.m36328E();
                    diskLruCache.m36316s();
                    diskLruCache.f8475i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.f8468b, true), DiskLruCacheUtil.f8499a));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.m36326J();
            return diskLruCache2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: E */
    public final void m36328E() throws IOException {
        d dVar = new d(new FileInputStream(this.f8468b), DiskLruCacheUtil.f8499a);
        try {
            String readLine = dVar.readLine();
            String readLine2 = dVar.readLine();
            String readLine3 = dVar.readLine();
            String readLine4 = dVar.readLine();
            String readLine5 = dVar.readLine();
            if (!"libcore.io.DiskLruCache".equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.f8471e).equals(readLine3) || !Integer.toString(this.f8473g).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m36327I(dVar.readLine());
                    i++;
                } catch (EOFException e) {
                    this.f8477k = i - this.f8476j.size();
                    DiskLruCacheUtil.m36314a(dVar);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.m36314a(dVar);
            throw th;
        }
    }

    /* renamed from: I */
    public final void m36327I(String str) throws IOException {
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
                        this.f8476j.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C2636c c2636c = this.f8476j.get(str2);
            C2636c c2636c2 = c2636c;
            if (c2636c == null) {
                c2636c2 = new C2636c(str2, null);
                this.f8476j.put(str2, c2636c2);
            }
            if (indexOf2 == -1 || indexOf != 5 || !str.startsWith("CLEAN")) {
                if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                    c2636c2.f8496d = new Editor(c2636c2, null);
                    return;
                } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException(C22128a.m8543z2("unexpected journal line: ", str));
                } else {
                    return;
                }
            }
            String[] split = str.substring(indexOf2 + 1).split(StringConstant.SPACE);
            c2636c2.f8495c = true;
            c2636c2.f8496d = null;
            if (split.length != DiskLruCache.this.f8473g) {
                c2636c2.m36315a(split);
                throw null;
            }
            for (int i2 = 0; i2 < split.length; i2++) {
                try {
                    c2636c2.f8494b[i2] = Long.parseLong(split[i2]);
                } catch (NumberFormatException e) {
                    c2636c2.m36315a(split);
                    throw null;
                }
            }
            return;
        }
        throw new IOException(C22128a.m8543z2("unexpected journal line: ", str));
    }

    /* renamed from: J */
    public final void m36326J() throws IOException {
        synchronized (this) {
            Writer writer = this.f8475i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f8469c), DiskLruCacheUtil.f8499a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write("1");
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(Integer.toString(this.f8471e));
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(Integer.toString(this.f8473g));
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(StringConstant.NEW_LINE);
            for (C2636c c2636c : this.f8476j.values()) {
                if (c2636c.f8496d != null) {
                    bufferedWriter.write("DIRTY " + c2636c.f8493a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c2636c.f8493a + c2636c.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f8468b.exists()) {
                m36325K(this.f8468b, this.f8470d, true);
            }
            m36325K(this.f8469c, this.f8468b, false);
            this.f8470d.delete();
            this.f8475i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f8468b, true), DiskLruCacheUtil.f8499a));
        }
    }

    /* renamed from: P */
    public final void m36324P() throws IOException {
        while (this.f8474h > this.f8472f) {
            remove(this.f8476j.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: Q */
    public final void m36323Q(String str) {
        if (f8465o.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException(C22128a.m8725C2("keys must match regex [a-z0-9_-]{1,64}: \"", str, "\""));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f8475i == null) {
                return;
            }
            Iterator it = new ArrayList(this.f8476j.values()).iterator();
            while (it.hasNext()) {
                Editor editor = ((C2636c) it.next()).f8496d;
                if (editor != null) {
                    editor.abort();
                }
            }
            m36324P();
            this.f8475i.close();
            this.f8475i = null;
        }
    }

    public void delete() throws IOException {
        close();
        DiskLruCacheUtil.m36313b(this.f8467a);
    }

    public Editor edit(String str) throws IOException {
        return m36318l(str, -1L);
    }

    public void flush() throws IOException {
        synchronized (this) {
            m36320j();
            m36324P();
            this.f8475i.flush();
        }
    }

    public Snapshot get(String str) throws IOException {
        synchronized (this) {
            m36320j();
            m36323Q(str);
            C2636c c2636c = this.f8476j.get(str);
            if (c2636c == null) {
                return null;
            }
            if (!c2636c.f8495c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f8473g];
            for (int i = 0; i < this.f8473g; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(c2636c.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f8473g && inputStreamArr[i2] != null; i2++) {
                        DiskLruCacheUtil.m36314a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f8477k++;
            this.f8475i.append((CharSequence) ("READ " + str + '\n'));
            if (m36317q()) {
                this.f8479m.submit(this.f8480n);
            }
            return new Snapshot(str, c2636c.f8497e, inputStreamArr, c2636c.f8494b, null);
        }
    }

    public File getDirectory() {
        return this.f8467a;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.f8472f;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f8475i == null;
        }
        return z;
    }

    /* renamed from: j */
    public final void m36320j() {
        if (this.f8475i != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* renamed from: l */
    public final Editor m36318l(String str, long j) throws IOException {
        synchronized (this) {
            m36320j();
            m36323Q(str);
            C2636c c2636c = this.f8476j.get(str);
            if (j == -1 || (c2636c != null && c2636c.f8497e == j)) {
                if (c2636c == null) {
                    c2636c = new C2636c(str, null);
                    this.f8476j.put(str, c2636c);
                } else if (c2636c.f8496d != null) {
                    return null;
                }
                Editor editor = new Editor(c2636c, null);
                c2636c.f8496d = editor;
                Writer writer = this.f8475i;
                writer.write("DIRTY " + str + '\n');
                this.f8475i.flush();
                return editor;
            }
            return null;
        }
    }

    /* renamed from: q */
    public final boolean m36317q() {
        int i = this.f8477k;
        return i >= 2000 && i >= this.f8476j.size();
    }

    public boolean remove(String str) throws IOException {
        synchronized (this) {
            m36320j();
            m36323Q(str);
            C2636c c2636c = this.f8476j.get(str);
            if (c2636c != null && c2636c.f8496d == null) {
                for (int i = 0; i < this.f8473g; i++) {
                    File cleanFile = c2636c.getCleanFile(i);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    long j = this.f8474h;
                    long[] jArr = c2636c.f8494b;
                    this.f8474h = j - jArr[i];
                    jArr[i] = 0;
                }
                this.f8477k++;
                this.f8475i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f8476j.remove(str);
                if (m36317q()) {
                    this.f8479m.submit(this.f8480n);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: s */
    public final void m36316s() throws IOException {
        m36319k(this.f8469c);
        Iterator<C2636c> it = this.f8476j.values().iterator();
        while (it.hasNext()) {
            C2636c next = it.next();
            if (next.f8496d == null) {
                for (int i = 0; i < this.f8473g; i++) {
                    this.f8474h += next.f8494b[i];
                }
            } else {
                next.f8496d = null;
                for (int i2 = 0; i2 < this.f8473g; i2++) {
                    m36319k(next.getCleanFile(i2));
                    m36319k(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.f8472f = j;
            this.f8479m.submit(this.f8480n);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.f8474h;
        }
        return j;
    }
}

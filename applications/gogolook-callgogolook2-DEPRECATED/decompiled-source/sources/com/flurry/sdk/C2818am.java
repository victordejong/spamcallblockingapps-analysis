package com.flurry.sdk;

import androidx.media2.session.MediaSessionImplBase;
import com.aotter.net.trek.common.DiskLruCache;
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
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.am */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/am.class */
public final class C2818am implements Closeable {

    /* renamed from: a */
    public static final Pattern f4005a = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: c */
    public static final OutputStream f4006c = new OutputStream() { // from class: com.flurry.sdk.am.1
        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
        }
    };

    /* renamed from: d */
    public final File f4008d;

    /* renamed from: e */
    public final File f4009e;

    /* renamed from: f */
    public final File f4010f;

    /* renamed from: g */
    public final File f4011g;

    /* renamed from: k */
    public long f4015k;

    /* renamed from: m */
    public Writer f4017m;

    /* renamed from: n */
    public int f4018n;

    /* renamed from: b */
    public final ThreadPoolExecutor f4007b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: j */
    public final Map<String, C2823b> f4014j = new LinkedHashMap(0, 0.75f, true);

    /* renamed from: l */
    public long f4016l = 0;

    /* renamed from: o */
    public final Callable<Void> f4019o = new Callable<Void>() { // from class: com.flurry.sdk.am.2
        /* renamed from: a */
        public final Void call() throws Exception {
            synchronized (C2818am.this) {
                if (C2818am.this.f4017m == null) {
                    return null;
                }
                C2818am.this.m33601e();
                if (C2818am.this.m33597g()) {
                    C2818am.this.m33604d();
                    C2818am.this.f4018n = 0;
                }
                return null;
            }
        }
    };

    /* renamed from: p */
    public long f4020p = 0;

    /* renamed from: h */
    public final int f4012h = 1;

    /* renamed from: i */
    public final int f4013i = 1;

    /* renamed from: com.flurry.sdk.am$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/am$a.class */
    public final class C2821a {

        /* renamed from: a */
        public final C2823b f4022a;

        /* renamed from: b */
        public final boolean[] f4023b;

        /* renamed from: c */
        public boolean f4024c;

        /* renamed from: d */
        public boolean f4025d;

        /* renamed from: com.flurry.sdk.am$a$a */
        /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/am$a$a.class */
        public final class C2822a extends FilterOutputStream {
            public C2822a(OutputStream outputStream) {
                super(outputStream);
            }

            public /* synthetic */ C2822a(C2821a aVar, OutputStream outputStream, byte b) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    C2821a.this.f4024c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    C2821a.this.f4024c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    C2821a.this.f4024c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    C2821a.this.f4024c = true;
                }
            }
        }

        public C2821a(C2823b bVar) {
            this.f4022a = bVar;
            this.f4023b = bVar.f4030c ? null : new boolean[C2818am.this.f4013i];
        }

        public /* synthetic */ C2821a(C2818am amVar, C2823b bVar, byte b) {
            this(bVar);
        }

        /* renamed from: a */
        public final OutputStream m33594a() throws IOException {
            FileOutputStream fileOutputStream;
            C2822a aVar;
            synchronized (C2818am.this) {
                if (this.f4022a.f4031d == this) {
                    if (!this.f4022a.f4030c) {
                        this.f4023b[0] = true;
                    }
                    File b = this.f4022a.m33589b(0);
                    try {
                        fileOutputStream = new FileOutputStream(b);
                    } catch (FileNotFoundException e) {
                        C2818am.this.f4008d.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(b);
                        } catch (FileNotFoundException e2) {
                            return C2818am.f4006c;
                        }
                    }
                    aVar = new C2822a(this, fileOutputStream, (byte) 0);
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }

        /* renamed from: b */
        public final void m33593b() throws IOException {
            C2818am.this.m33617a(this, false);
        }
    }

    /* renamed from: com.flurry.sdk.am$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/am$b.class */
    public final class C2823b {

        /* renamed from: a */
        public final String f4028a;

        /* renamed from: b */
        public final long[] f4029b;

        /* renamed from: c */
        public boolean f4030c;

        /* renamed from: d */
        public C2821a f4031d;

        /* renamed from: e */
        public long f4032e;

        public C2823b(String str) {
            this.f4028a = str;
            this.f4029b = new long[C2818am.this.f4013i];
        }

        public /* synthetic */ C2823b(C2818am amVar, String str, byte b) {
            this(str);
        }

        /* renamed from: b */
        public static IOException m33588b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public final File m33591a(int i) {
            File file = C2818am.this.f4008d;
            return new File(file, this.f4028a + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i);
        }

        /* renamed from: a */
        public final String m33592a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4029b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: a */
        public final void m33590a(String[] strArr) throws IOException {
            if (strArr.length == C2818am.this.f4013i) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f4029b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m33588b(strArr);
                        throw null;
                    }
                }
                return;
            }
            m33588b(strArr);
            throw null;
        }

        /* renamed from: b */
        public final File m33589b(int i) {
            File file = C2818am.this.f4008d;
            return new File(file, this.f4028a + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i + ".tmp");
        }
    }

    /* renamed from: com.flurry.sdk.am$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/am$c.class */
    public final class C2824c implements Closeable {

        /* renamed from: a */
        public final InputStream[] f4034a;

        public C2824c(C2818am amVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f4034a = inputStreamArr;
        }

        public /* synthetic */ C2824c(C2818am amVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, byte b) {
            this(amVar, str, j, inputStreamArr, jArr);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.f4034a) {
                C2827ao.m33585a(inputStream);
            }
        }
    }

    public C2818am(File file, long j) {
        this.f4008d = file;
        this.f4009e = new File(file, DiskLruCache.f1462a);
        this.f4010f = new File(file, DiskLruCache.f1463b);
        this.f4011g = new File(file, DiskLruCache.f1464c);
        this.f4015k = j;
    }

    /* renamed from: a */
    public static C2818am m33613a(File file, long j) throws IOException {
        if (j > 0) {
            File file2 = new File(file, DiskLruCache.f1464c);
            if (file2.exists()) {
                File file3 = new File(file, DiskLruCache.f1462a);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m33612a(file2, file3, false);
                }
            }
            C2818am amVar = new C2818am(file, j);
            if (amVar.f4009e.exists()) {
                try {
                    amVar.m33610b();
                    amVar.m33607c();
                    amVar.f4017m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(amVar.f4009e, true), C2827ao.f4041a));
                    return amVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    amVar.close();
                    C2827ao.m33584a(amVar.f4008d);
                }
            }
            file.mkdirs();
            C2818am amVar2 = new C2818am(file, j);
            amVar2.m33604d();
            return amVar2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    public static void m33614a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m33612a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m33614a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: d */
    public static void m33602d(String str) {
        if (!f4005a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* renamed from: a */
    public final void m33617a(C2821a aVar, boolean z) throws IOException {
        synchronized (this) {
            C2823b bVar = aVar.f4022a;
            if (bVar.f4031d == aVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!bVar.f4030c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f4013i) {
                                break;
                            } else if (!aVar.f4023b[i2]) {
                                aVar.m33593b();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!bVar.m33589b(i2).exists()) {
                                aVar.m33593b();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f4013i) {
                    File b = bVar.m33589b(i);
                    if (!z) {
                        m33614a(b);
                    } else if (b.exists()) {
                        File a = bVar.m33591a(i);
                        b.renameTo(a);
                        long j = bVar.f4029b[i];
                        long length = a.length();
                        bVar.f4029b[i] = length;
                        this.f4016l = (this.f4016l - j) + length;
                    }
                    i++;
                }
                this.f4018n++;
                bVar.f4031d = null;
                if (bVar.f4030c || z) {
                    bVar.f4030c = true;
                    this.f4017m.write("CLEAN " + bVar.f4028a + bVar.m33592a() + '\n');
                    if (z) {
                        long j2 = this.f4020p;
                        this.f4020p = 1 + j2;
                        bVar.f4032e = j2;
                    }
                } else {
                    this.f4014j.remove(bVar.f4028a);
                    this.f4017m.write("REMOVE " + bVar.f4028a + '\n');
                }
                this.f4017m.flush();
                if (this.f4016l > this.f4015k || m33597g()) {
                    this.f4007b.submit(this.f4019o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final boolean m33611a(String str) throws IOException {
        synchronized (this) {
            m33599f();
            m33602d(str);
            C2823b bVar = this.f4014j.get(str);
            if (bVar != null && bVar.f4031d == null) {
                for (int i = 0; i < this.f4013i; i++) {
                    File a = bVar.m33591a(i);
                    if (a.exists() && !a.delete()) {
                        throw new IOException("failed to delete " + a);
                    }
                    this.f4016l -= bVar.f4029b[i];
                    bVar.f4029b[i] = 0;
                }
                this.f4018n++;
                this.f4017m.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f4014j.remove(str);
                if (m33597g()) {
                    this.f4007b.submit(this.f4019o);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: b */
    public final C2824c m33608b(String str) throws IOException {
        synchronized (this) {
            m33599f();
            m33602d(str);
            C2823b bVar = this.f4014j.get(str);
            if (bVar == null) {
                return null;
            }
            if (!bVar.f4030c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f4013i];
            for (int i = 0; i < this.f4013i; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(bVar.m33591a(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f4013i && inputStreamArr[i2] != null; i2++) {
                        C2827ao.m33585a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f4018n++;
            this.f4017m.append((CharSequence) ("READ " + str + '\n'));
            if (m33597g()) {
                this.f4007b.submit(this.f4019o);
            }
            return new C2824c(this, str, bVar.f4032e, inputStreamArr, bVar.f4029b, (byte) 0);
        }
    }

    /* renamed from: b */
    public final void m33610b() throws IOException {
        String a;
        String str;
        C2825an anVar = new C2825an(new FileInputStream(this.f4009e), C2827ao.f4041a);
        try {
            String a2 = anVar.m33587a();
            String a3 = anVar.m33587a();
            String a4 = anVar.m33587a();
            String a5 = anVar.m33587a();
            String a6 = anVar.m33587a();
            if (!DiskLruCache.f1465d.equals(a2) || !"1".equals(a3) || !Integer.toString(this.f4012h).equals(a4) || !Integer.toString(this.f4013i).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + UserProfile.CARD_CATE_SEPARATOR + a3 + UserProfile.CARD_CATE_SEPARATOR + a5 + UserProfile.CARD_CATE_SEPARATOR + a6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    a = anVar.m33587a();
                    int indexOf = a.indexOf(32);
                    if (indexOf != -1) {
                        int i2 = indexOf + 1;
                        int indexOf2 = a.indexOf(32, i2);
                        if (indexOf2 == -1) {
                            String substring = a.substring(i2);
                            str = substring;
                            if (indexOf == 6) {
                                str = substring;
                                if (a.startsWith(DiskLruCache.f1471k)) {
                                    this.f4014j.remove(substring);
                                    i++;
                                }
                            }
                        } else {
                            str = a.substring(i2, indexOf2);
                        }
                        C2823b bVar = this.f4014j.get(str);
                        C2823b bVar2 = bVar;
                        if (bVar == null) {
                            bVar2 = new C2823b(this, str, (byte) 0);
                            this.f4014j.put(str, bVar2);
                        }
                        if (indexOf2 != -1 && indexOf == 5 && a.startsWith(DiskLruCache.f1469i)) {
                            String[] split = a.substring(indexOf2 + 1).split(" ");
                            bVar2.f4030c = true;
                            bVar2.f4031d = null;
                            bVar2.m33590a(split);
                        } else if (indexOf2 == -1 && indexOf == 5 && a.startsWith(DiskLruCache.f1470j)) {
                            bVar2.f4031d = new C2821a(this, bVar2, (byte) 0);
                        } else if (indexOf2 != -1 || indexOf != 4 || !a.startsWith(DiskLruCache.f1472l)) {
                            break;
                        }
                        i++;
                    } else {
                        throw new IOException("unexpected journal line: " + a);
                    }
                } catch (EOFException e) {
                    this.f4018n = i - this.f4014j.size();
                    C2827ao.m33585a(anVar);
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + a);
        } catch (Throwable th) {
            C2827ao.m33585a(anVar);
            throw th;
        }
    }

    /* renamed from: c */
    public final C2821a m33605c(String str) throws IOException {
        synchronized (this) {
            m33599f();
            m33602d(str);
            C2823b bVar = this.f4014j.get(str);
            if (bVar == null) {
                bVar = new C2823b(this, str, (byte) 0);
                this.f4014j.put(str, bVar);
            } else if (bVar.f4031d != null) {
                return null;
            }
            C2821a aVar = new C2821a(this, bVar, (byte) 0);
            bVar.f4031d = aVar;
            Writer writer = this.f4017m;
            writer.write("DIRTY " + str + '\n');
            this.f4017m.flush();
            return aVar;
        }
    }

    /* renamed from: c */
    public final void m33607c() throws IOException {
        m33614a(this.f4010f);
        Iterator<C2823b> it = this.f4014j.values().iterator();
        while (it.hasNext()) {
            C2823b next = it.next();
            if (next.f4031d == null) {
                for (int i = 0; i < this.f4013i; i++) {
                    this.f4016l += next.f4029b[i];
                }
            } else {
                next.f4031d = null;
                for (int i2 = 0; i2 < this.f4013i; i2++) {
                    m33614a(next.m33591a(i2));
                    m33614a(next.m33589b(i2));
                }
                it.remove();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f4017m != null) {
                Iterator it = new ArrayList(this.f4014j.values()).iterator();
                while (it.hasNext()) {
                    C2823b bVar = (C2823b) it.next();
                    if (bVar.f4031d != null) {
                        bVar.f4031d.m33593b();
                    }
                }
                m33601e();
                this.f4017m.close();
                this.f4017m = null;
            }
        }
    }

    /* renamed from: d */
    public final void m33604d() throws IOException {
        synchronized (this) {
            if (this.f4017m != null) {
                this.f4017m.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4010f), C2827ao.f4041a));
            bufferedWriter.write(DiskLruCache.f1465d);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4012h));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4013i));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C2823b bVar : this.f4014j.values()) {
                if (bVar.f4031d != null) {
                    bufferedWriter.write("DIRTY " + bVar.f4028a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + bVar.f4028a + bVar.m33592a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f4009e.exists()) {
                m33612a(this.f4009e, this.f4011g, true);
            }
            m33612a(this.f4010f, this.f4009e, false);
            this.f4011g.delete();
            this.f4017m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4009e, true), C2827ao.f4041a));
        }
    }

    /* renamed from: e */
    public final void m33601e() throws IOException {
        while (this.f4016l > this.f4015k) {
            m33611a(this.f4014j.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: f */
    public final void m33599f() {
        if (this.f4017m == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: g */
    public final boolean m33597g() {
        int i = this.f4018n;
        return i >= 2000 && i >= this.f4014j.size();
    }
}

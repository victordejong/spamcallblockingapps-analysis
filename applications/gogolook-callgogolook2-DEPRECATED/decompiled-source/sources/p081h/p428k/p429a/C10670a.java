package p081h.p428k.p429a;

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
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* renamed from: h.k.a.a */
/* loaded from: classes2-dex2jar.jar:h/k/a/a.class */
public final class C10670a implements Closeable {

    /* renamed from: o */
    public static final Pattern f24276o = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: p */
    public static final OutputStream f24277p = new C10672b();

    /* renamed from: a */
    public final File f24278a;

    /* renamed from: b */
    public final File f24279b;

    /* renamed from: c */
    public final File f24280c;

    /* renamed from: d */
    public final File f24281d;

    /* renamed from: e */
    public final int f24282e;

    /* renamed from: f */
    public long f24283f;

    /* renamed from: g */
    public final int f24284g;

    /* renamed from: i */
    public Writer f24286i;

    /* renamed from: k */
    public int f24288k;

    /* renamed from: h */
    public long f24285h = 0;

    /* renamed from: j */
    public final LinkedHashMap<String, C10675d> f24287j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l */
    public long f24289l = 0;

    /* renamed from: m */
    public final ThreadPoolExecutor f24290m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: n */
    public final Callable<Void> f24291n = new CallableC10671a();

    /* renamed from: h.k.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/k/a/a$a.class */
    public class CallableC10671a implements Callable<Void> {
        public CallableC10671a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (C10670a.this) {
                if (C10670a.this.f24286i == null) {
                    return null;
                }
                C10670a.this.m10981h();
                if (C10670a.this.m10990d()) {
                    C10670a.this.m10982g();
                    C10670a.this.f24288k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: h.k.a.a$b */
    /* loaded from: classes2-dex2jar.jar:h/k/a/a$b.class */
    public static final class C10672b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: h.k.a.a$c */
    /* loaded from: classes2-dex2jar.jar:h/k/a/a$c.class */
    public final class C10673c {

        /* renamed from: a */
        public final C10675d f24293a;

        /* renamed from: b */
        public final boolean[] f24294b;

        /* renamed from: c */
        public boolean f24295c;

        /* renamed from: h.k.a.a$c$a */
        /* loaded from: classes2-dex2jar.jar:h/k/a/a$c$a.class */
        public class C10674a extends FilterOutputStream {
            public C10674a(OutputStream outputStream) {
                super(outputStream);
            }

            public /* synthetic */ C10674a(C10673c cVar, OutputStream outputStream, CallableC10671a aVar) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    C10673c.this.f24295c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    C10673c.this.f24295c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    C10673c.this.f24295c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    C10673c.this.f24295c = true;
                }
            }
        }

        public C10673c(C10675d dVar) {
            this.f24293a = dVar;
            this.f24294b = dVar.f24300c ? null : new boolean[C10670a.this.f24284g];
        }

        public /* synthetic */ C10673c(C10670a aVar, C10675d dVar, CallableC10671a aVar2) {
            this(dVar);
        }

        /* renamed from: a */
        public OutputStream m10978a(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C10674a aVar;
            synchronized (C10670a.this) {
                if (this.f24293a.f24301d == this) {
                    if (!this.f24293a.f24300c) {
                        this.f24294b[i] = true;
                    }
                    File b = this.f24293a.m10965b(i);
                    try {
                        fileOutputStream = new FileOutputStream(b);
                    } catch (FileNotFoundException e) {
                        C10670a.this.f24278a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(b);
                        } catch (FileNotFoundException e2) {
                            return C10670a.f24277p;
                        }
                    }
                    aVar = new C10674a(this, fileOutputStream, null);
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }

        /* renamed from: a */
        public void m10979a() throws IOException {
            C10670a.this.m11005a(this, false);
        }

        /* renamed from: b */
        public void m10975b() throws IOException {
            if (this.f24295c) {
                C10670a.this.m11005a(this, false);
                C10670a.this.m10988d(this.f24293a.f24298a);
                return;
            }
            C10670a.this.m11005a(this, true);
        }
    }

    /* renamed from: h.k.a.a$d */
    /* loaded from: classes2-dex2jar.jar:h/k/a/a$d.class */
    public final class C10675d {

        /* renamed from: a */
        public final String f24298a;

        /* renamed from: b */
        public final long[] f24299b;

        /* renamed from: c */
        public boolean f24300c;

        /* renamed from: d */
        public C10673c f24301d;

        /* renamed from: e */
        public long f24302e;

        public C10675d(String str) {
            this.f24298a = str;
            this.f24299b = new long[C10670a.this.f24284g];
        }

        public /* synthetic */ C10675d(C10670a aVar, String str, CallableC10671a aVar2) {
            this(str);
        }

        /* renamed from: a */
        public File m10972a(int i) {
            File file = C10670a.this.f24278a;
            return new File(file, this.f24298a + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i);
        }

        /* renamed from: a */
        public final IOException m10966a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public String m10973a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f24299b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: b */
        public File m10965b(int i) {
            File file = C10670a.this.f24278a;
            return new File(file, this.f24298a + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + i + ".tmp");
        }

        /* renamed from: b */
        public final void m10963b(String[] strArr) throws IOException {
            if (strArr.length == C10670a.this.f24284g) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f24299b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m10966a(strArr);
                        throw null;
                    }
                }
                return;
            }
            m10966a(strArr);
            throw null;
        }
    }

    /* renamed from: h.k.a.a$e */
    /* loaded from: classes2-dex2jar.jar:h/k/a/a$e.class */
    public final class C10676e implements Closeable {

        /* renamed from: a */
        public final InputStream[] f24304a;

        /* renamed from: b */
        public final long[] f24305b;

        public C10676e(C10670a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f24304a = inputStreamArr;
            this.f24305b = jArr;
        }

        public /* synthetic */ C10676e(C10670a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC10671a aVar2) {
            this(aVar, str, j, inputStreamArr, jArr);
        }

        /* renamed from: a */
        public InputStream m10959a(int i) {
            return this.f24304a[i];
        }

        /* renamed from: b */
        public long m10958b(int i) {
            return this.f24305b[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f24304a) {
                C10679c.m10954a(inputStream);
            }
        }
    }

    public C10670a(File file, int i, int i2, long j) {
        this.f24278a = file;
        this.f24282e = i;
        this.f24279b = new File(file, DiskLruCache.f1462a);
        this.f24280c = new File(file, DiskLruCache.f1463b);
        this.f24281d = new File(file, DiskLruCache.f1464c);
        this.f24284g = i2;
        this.f24283f = j;
    }

    /* renamed from: a */
    public static C10670a m11000a(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, DiskLruCache.f1464c);
            if (file2.exists()) {
                File file3 = new File(file, DiskLruCache.f1462a);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m10999a(file2, file3, false);
                }
            }
            C10670a aVar = new C10670a(file, i, i2, j);
            if (aVar.f24279b.exists()) {
                try {
                    aVar.m10985f();
                    aVar.m10987e();
                    aVar.f24286i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aVar.f24279b, true), C10679c.f24312a));
                    return aVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    aVar.m10996b();
                }
            }
            file.mkdirs();
            C10670a aVar2 = new C10670a(file, i, i2, j);
            aVar2.m10982g();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: a */
    public static void m11001a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m10999a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m11001a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public C10673c m10998a(String str) throws IOException {
        return m10997a(str, -1L);
    }

    /* renamed from: a */
    public final C10673c m10997a(String str, long j) throws IOException {
        synchronized (this) {
            m11006a();
            m10983f(str);
            C10675d dVar = this.f24287j.get(str);
            if (j != -1 && (dVar == null || dVar.f24302e != j)) {
                return null;
            }
            if (dVar == null) {
                dVar = new C10675d(this, str, null);
                this.f24287j.put(str, dVar);
            } else if (dVar.f24301d != null) {
                return null;
            }
            C10673c cVar = new C10673c(this, dVar, null);
            dVar.f24301d = cVar;
            Writer writer = this.f24286i;
            writer.write("DIRTY " + str + '\n');
            this.f24286i.flush();
            return cVar;
        }
    }

    /* renamed from: a */
    public final void m11006a() {
        if (this.f24286i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: a */
    public final void m11005a(C10673c cVar, boolean z) throws IOException {
        synchronized (this) {
            C10675d dVar = cVar.f24293a;
            if (dVar.f24301d == cVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!dVar.f24300c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f24284g) {
                                break;
                            } else if (!cVar.f24294b[i2]) {
                                cVar.m10979a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!dVar.m10965b(i2).exists()) {
                                cVar.m10979a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f24284g) {
                    File b = dVar.m10965b(i);
                    if (!z) {
                        m11001a(b);
                    } else if (b.exists()) {
                        File a = dVar.m10972a(i);
                        b.renameTo(a);
                        long j = dVar.f24299b[i];
                        long length = a.length();
                        dVar.f24299b[i] = length;
                        this.f24285h = (this.f24285h - j) + length;
                    }
                    i++;
                }
                this.f24288k++;
                dVar.f24301d = null;
                if (dVar.f24300c || z) {
                    dVar.f24300c = true;
                    this.f24286i.write("CLEAN " + dVar.f24298a + dVar.m10973a() + '\n');
                    if (z) {
                        long j2 = this.f24289l;
                        this.f24289l = 1 + j2;
                        dVar.f24302e = j2;
                    }
                } else {
                    this.f24287j.remove(dVar.f24298a);
                    this.f24286i.write("REMOVE " + dVar.f24298a + '\n');
                }
                this.f24286i.flush();
                if (this.f24285h > this.f24283f || m10990d()) {
                    this.f24290m.submit(this.f24291n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public C10676e m10994b(String str) throws IOException {
        synchronized (this) {
            m11006a();
            m10983f(str);
            C10675d dVar = this.f24287j.get(str);
            if (dVar == null) {
                return null;
            }
            if (!dVar.f24300c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f24284g];
            for (int i = 0; i < this.f24284g; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(dVar.m10972a(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f24284g && inputStreamArr[i2] != null; i2++) {
                        C10679c.m10954a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f24288k++;
            this.f24286i.append((CharSequence) ("READ " + str + '\n'));
            if (m10990d()) {
                this.f24290m.submit(this.f24291n);
            }
            return new C10676e(this, str, dVar.f24302e, inputStreamArr, dVar.f24299b, null);
        }
    }

    /* renamed from: b */
    public void m10996b() throws IOException {
        close();
        C10679c.m10953a(this.f24278a);
    }

    /* renamed from: c */
    public File m10993c() {
        return this.f24278a;
    }

    /* renamed from: c */
    public final void m10991c(String str) throws IOException {
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
                    if (str.startsWith(DiskLruCache.f1471k)) {
                        this.f24287j.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C10675d dVar = this.f24287j.get(str2);
            C10675d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C10675d(this, str2, null);
                this.f24287j.put(str2, dVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(DiskLruCache.f1469i)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar2.f24300c = true;
                dVar2.f24301d = null;
                dVar2.m10963b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(DiskLruCache.f1470j)) {
                dVar2.f24301d = new C10673c(this, dVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith(DiskLruCache.f1472l)) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f24286i != null) {
                Iterator it = new ArrayList(this.f24287j.values()).iterator();
                while (it.hasNext()) {
                    C10675d dVar = (C10675d) it.next();
                    if (dVar.f24301d != null) {
                        dVar.f24301d.m10979a();
                    }
                }
                m10981h();
                this.f24286i.close();
                this.f24286i = null;
            }
        }
    }

    /* renamed from: d */
    public final boolean m10990d() {
        int i = this.f24288k;
        return i >= 2000 && i >= this.f24287j.size();
    }

    /* renamed from: d */
    public boolean m10988d(String str) throws IOException {
        synchronized (this) {
            m11006a();
            m10983f(str);
            C10675d dVar = this.f24287j.get(str);
            if (dVar != null && dVar.f24301d == null) {
                for (int i = 0; i < this.f24284g; i++) {
                    File a = dVar.m10972a(i);
                    if (a.exists() && !a.delete()) {
                        throw new IOException("failed to delete " + a);
                    }
                    this.f24285h -= dVar.f24299b[i];
                    dVar.f24299b[i] = 0;
                }
                this.f24288k++;
                this.f24286i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f24287j.remove(str);
                if (m10990d()) {
                    this.f24290m.submit(this.f24291n);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: e */
    public final void m10987e() throws IOException {
        m11001a(this.f24280c);
        Iterator<C10675d> it = this.f24287j.values().iterator();
        while (it.hasNext()) {
            C10675d next = it.next();
            if (next.f24301d == null) {
                for (int i = 0; i < this.f24284g; i++) {
                    this.f24285h += next.f24299b[i];
                }
            } else {
                next.f24301d = null;
                for (int i2 = 0; i2 < this.f24284g; i2++) {
                    m11001a(next.m10972a(i2));
                    m11001a(next.m10965b(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: f */
    public final void m10985f() throws IOException {
        C10677b bVar = new C10677b(new FileInputStream(this.f24279b), C10679c.f24312a);
        try {
            String b = bVar.m10955b();
            String b2 = bVar.m10955b();
            String b3 = bVar.m10955b();
            String b4 = bVar.m10955b();
            String b5 = bVar.m10955b();
            if (!DiskLruCache.f1465d.equals(b) || !"1".equals(b2) || !Integer.toString(this.f24282e).equals(b3) || !Integer.toString(this.f24284g).equals(b4) || !"".equals(b5)) {
                throw new IOException("unexpected journal header: [" + b + UserProfile.CARD_CATE_SEPARATOR + b2 + UserProfile.CARD_CATE_SEPARATOR + b4 + UserProfile.CARD_CATE_SEPARATOR + b5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m10991c(bVar.m10955b());
                    i++;
                } catch (EOFException e) {
                    this.f24288k = i - this.f24287j.size();
                    C10679c.m10954a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            C10679c.m10954a(bVar);
            throw th;
        }
    }

    /* renamed from: f */
    public final void m10983f(String str) {
        if (!f24276o.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* renamed from: g */
    public final void m10982g() throws IOException {
        synchronized (this) {
            if (this.f24286i != null) {
                this.f24286i.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f24280c), C10679c.f24312a));
            bufferedWriter.write(DiskLruCache.f1465d);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f24282e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f24284g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C10675d dVar : this.f24287j.values()) {
                if (dVar.f24301d != null) {
                    bufferedWriter.write("DIRTY " + dVar.f24298a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f24298a + dVar.m10973a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f24279b.exists()) {
                m10999a(this.f24279b, this.f24281d, true);
            }
            m10999a(this.f24280c, this.f24279b, false);
            this.f24281d.delete();
            this.f24286i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f24279b, true), C10679c.f24312a));
        }
    }

    /* renamed from: h */
    public final void m10981h() throws IOException {
        while (this.f24285h > this.f24283f) {
            m10988d(this.f24287j.entrySet().iterator().next().getKey());
        }
    }
}

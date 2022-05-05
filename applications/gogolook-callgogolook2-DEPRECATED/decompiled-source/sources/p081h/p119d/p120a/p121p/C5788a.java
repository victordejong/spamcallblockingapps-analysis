package p081h.p119d.p120a.p121p;

import com.aotter.net.trek.common.DiskLruCache;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
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
/* renamed from: h.d.a.p.a */
/* loaded from: classes-dex2jar.jar:h/d/a/p/a.class */
public final class C5788a implements Closeable {

    /* renamed from: a */
    public final File f14516a;

    /* renamed from: b */
    public final File f14517b;

    /* renamed from: c */
    public final File f14518c;

    /* renamed from: d */
    public final File f14519d;

    /* renamed from: e */
    public final int f14520e;

    /* renamed from: f */
    public long f14521f;

    /* renamed from: g */
    public final int f14522g;

    /* renamed from: i */
    public Writer f14524i;

    /* renamed from: k */
    public int f14526k;

    /* renamed from: h */
    public long f14523h = 0;

    /* renamed from: j */
    public final LinkedHashMap<String, C5791c> f14525j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l */
    public long f14527l = 0;

    /* renamed from: m */
    public final ThreadPoolExecutor f14528m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: n */
    public final Callable<Void> f14529n = new CallableC5789a();

    /* renamed from: h.d.a.p.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/p/a$a.class */
    public class CallableC5789a implements Callable<Void> {
        public CallableC5789a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (C5788a.this) {
                if (C5788a.this.f14524i == null) {
                    return null;
                }
                C5788a.this.m24405g();
                if (C5788a.this.m24415c()) {
                    C5788a.this.m24407f();
                    C5788a.this.f14526k = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: h.d.a.p.a$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/p/a$b.class */
    public final class C5790b {

        /* renamed from: a */
        public final C5791c f14531a;

        /* renamed from: b */
        public final boolean[] f14532b;

        /* renamed from: c */
        public boolean f14533c;

        public C5790b(C5791c cVar) {
            this.f14531a = cVar;
            this.f14532b = cVar.f14539e ? null : new boolean[C5788a.this.f14522g];
        }

        public /* synthetic */ C5790b(C5788a aVar, C5791c cVar, CallableC5789a aVar2) {
            this(cVar);
        }

        /* renamed from: a */
        public File m24403a(int i) throws IOException {
            File b;
            synchronized (C5788a.this) {
                if (this.f14531a.f14540f == this) {
                    if (!this.f14531a.f14539e) {
                        this.f14532b[i] = true;
                    }
                    b = this.f14531a.m24390b(i);
                    if (!C5788a.this.f14516a.exists()) {
                        C5788a.this.f14516a.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return b;
        }

        /* renamed from: a */
        public void m24404a() throws IOException {
            C5788a.this.m24427a(this, false);
        }

        /* renamed from: b */
        public void m24401b() {
            if (!this.f14533c) {
                try {
                    m24404a();
                } catch (IOException e) {
                }
            }
        }

        /* renamed from: c */
        public void m24399c() throws IOException {
            C5788a.this.m24427a(this, true);
            this.f14533c = true;
        }
    }

    /* renamed from: h.d.a.p.a$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/p/a$c.class */
    public final class C5791c {

        /* renamed from: a */
        public final String f14535a;

        /* renamed from: b */
        public final long[] f14536b;

        /* renamed from: c */
        public File[] f14537c;

        /* renamed from: d */
        public File[] f14538d;

        /* renamed from: e */
        public boolean f14539e;

        /* renamed from: f */
        public C5790b f14540f;

        /* renamed from: g */
        public long f14541g;

        public C5791c(String str) {
            this.f14535a = str;
            this.f14536b = new long[C5788a.this.f14522g];
            this.f14537c = new File[C5788a.this.f14522g];
            this.f14538d = new File[C5788a.this.f14522g];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < C5788a.this.f14522g; i++) {
                sb.append(i);
                this.f14537c[i] = new File(C5788a.this.f14516a, sb.toString());
                sb.append(".tmp");
                this.f14538d[i] = new File(C5788a.this.f14516a, sb.toString());
                sb.setLength(length);
            }
        }

        public /* synthetic */ C5791c(C5788a aVar, String str, CallableC5789a aVar2) {
            this(str);
        }

        /* renamed from: a */
        public File m24397a(int i) {
            return this.f14537c[i];
        }

        /* renamed from: a */
        public final IOException m24391a(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public String m24398a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f14536b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: b */
        public File m24390b(int i) {
            return this.f14538d[i];
        }

        /* renamed from: b */
        public final void m24388b(String[] strArr) throws IOException {
            if (strArr.length == C5788a.this.f14522g) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f14536b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m24391a(strArr);
                        throw null;
                    }
                }
                return;
            }
            m24391a(strArr);
            throw null;
        }
    }

    /* renamed from: h.d.a.p.a$d */
    /* loaded from: classes-dex2jar.jar:h/d/a/p/a$d.class */
    public final class C5792d {

        /* renamed from: a */
        public final File[] f14543a;

        public C5792d(C5788a aVar, String str, long j, File[] fileArr, long[] jArr) {
            this.f14543a = fileArr;
        }

        public /* synthetic */ C5792d(C5788a aVar, String str, long j, File[] fileArr, long[] jArr, CallableC5789a aVar2) {
            this(aVar, str, j, fileArr, jArr);
        }

        /* renamed from: a */
        public File m24384a(int i) {
            return this.f14543a[i];
        }
    }

    public C5788a(File file, int i, int i2, long j) {
        this.f14516a = file;
        this.f14520e = i;
        this.f14517b = new File(file, DiskLruCache.f1462a);
        this.f14518c = new File(file, DiskLruCache.f1463b);
        this.f14519d = new File(file, DiskLruCache.f1464c);
        this.f14522g = i2;
        this.f14521f = j;
    }

    /* renamed from: a */
    public static C5788a m24422a(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, DiskLruCache.f1464c);
            if (file2.exists()) {
                File file3 = new File(file, DiskLruCache.f1462a);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m24421a(file2, file3, false);
                }
            }
            C5788a aVar = new C5788a(file, i, i2, j);
            if (aVar.f14517b.exists()) {
                try {
                    aVar.m24409e();
                    aVar.m24412d();
                    return aVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    aVar.m24418b();
                }
            }
            file.mkdirs();
            C5788a aVar2 = new C5788a(file, i, i2, j);
            aVar2.m24407f();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: a */
    public static void m24423a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public static void m24421a(File file, File file2, boolean z) throws IOException {
        if (z) {
            m24423a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    public C5790b m24420a(String str) throws IOException {
        return m24419a(str, -1L);
    }

    /* renamed from: a */
    public final C5790b m24419a(String str, long j) throws IOException {
        synchronized (this) {
            m24428a();
            C5791c cVar = this.f14525j.get(str);
            if (j != -1 && (cVar == null || cVar.f14541g != j)) {
                return null;
            }
            if (cVar == null) {
                cVar = new C5791c(this, str, null);
                this.f14525j.put(str, cVar);
            } else if (cVar.f14540f != null) {
                return null;
            }
            C5790b bVar = new C5790b(this, cVar, null);
            cVar.f14540f = bVar;
            this.f14524i.append((CharSequence) DiskLruCache.f1470j);
            this.f14524i.append(' ');
            this.f14524i.append((CharSequence) str);
            this.f14524i.append('\n');
            this.f14524i.flush();
            return bVar;
        }
    }

    /* renamed from: a */
    public final void m24428a() {
        if (this.f14524i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: a */
    public final void m24427a(C5790b bVar, boolean z) throws IOException {
        synchronized (this) {
            C5791c cVar = bVar.f14531a;
            if (cVar.f14540f == bVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!cVar.f14539e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f14522g) {
                                break;
                            } else if (!bVar.f14532b[i2]) {
                                bVar.m24404a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!cVar.m24390b(i2).exists()) {
                                bVar.m24404a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f14522g) {
                    File b = cVar.m24390b(i);
                    if (!z) {
                        m24423a(b);
                    } else if (b.exists()) {
                        File a = cVar.m24397a(i);
                        b.renameTo(a);
                        long j = cVar.f14536b[i];
                        long length = a.length();
                        cVar.f14536b[i] = length;
                        this.f14523h = (this.f14523h - j) + length;
                    }
                    i++;
                }
                this.f14526k++;
                cVar.f14540f = null;
                if (cVar.f14539e || z) {
                    cVar.f14539e = true;
                    this.f14524i.append((CharSequence) DiskLruCache.f1469i);
                    this.f14524i.append(' ');
                    this.f14524i.append((CharSequence) cVar.f14535a);
                    this.f14524i.append((CharSequence) cVar.m24398a());
                    this.f14524i.append('\n');
                    if (z) {
                        long j2 = this.f14527l;
                        this.f14527l = 1 + j2;
                        cVar.f14541g = j2;
                    }
                } else {
                    this.f14525j.remove(cVar.f14535a);
                    this.f14524i.append((CharSequence) DiskLruCache.f1471k);
                    this.f14524i.append(' ');
                    this.f14524i.append((CharSequence) cVar.f14535a);
                    this.f14524i.append('\n');
                }
                this.f14524i.flush();
                if (this.f14523h > this.f14521f || m24415c()) {
                    this.f14528m.submit(this.f14529n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public C5792d m24416b(String str) throws IOException {
        synchronized (this) {
            m24428a();
            C5791c cVar = this.f14525j.get(str);
            if (cVar == null) {
                return null;
            }
            if (!cVar.f14539e) {
                return null;
            }
            for (File file : cVar.f14537c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f14526k++;
            this.f14524i.append((CharSequence) DiskLruCache.f1472l);
            this.f14524i.append(' ');
            this.f14524i.append((CharSequence) str);
            this.f14524i.append('\n');
            if (m24415c()) {
                this.f14528m.submit(this.f14529n);
            }
            return new C5792d(this, str, cVar.f14541g, cVar.f14537c, cVar.f14536b, null);
        }
    }

    /* renamed from: b */
    public void m24418b() throws IOException {
        close();
        C5795c.m24378a(this.f14516a);
    }

    /* renamed from: c */
    public final void m24413c(String str) throws IOException {
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
                        this.f14525j.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C5791c cVar = this.f14525j.get(str2);
            C5791c cVar2 = cVar;
            if (cVar == null) {
                cVar2 = new C5791c(this, str2, null);
                this.f14525j.put(str2, cVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(DiskLruCache.f1469i)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                cVar2.f14539e = true;
                cVar2.f14540f = null;
                cVar2.m24388b(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(DiskLruCache.f1470j)) {
                cVar2.f14540f = new C5790b(this, cVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith(DiskLruCache.f1472l)) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: c */
    public final boolean m24415c() {
        int i = this.f14526k;
        return i >= 2000 && i >= this.f14525j.size();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f14524i != null) {
                Iterator it = new ArrayList(this.f14525j.values()).iterator();
                while (it.hasNext()) {
                    C5791c cVar = (C5791c) it.next();
                    if (cVar.f14540f != null) {
                        cVar.f14540f.m24404a();
                    }
                }
                m24405g();
                this.f14524i.close();
                this.f14524i = null;
            }
        }
    }

    /* renamed from: d */
    public final void m24412d() throws IOException {
        m24423a(this.f14518c);
        Iterator<C5791c> it = this.f14525j.values().iterator();
        while (it.hasNext()) {
            C5791c next = it.next();
            if (next.f14540f == null) {
                for (int i = 0; i < this.f14522g; i++) {
                    this.f14523h += next.f14536b[i];
                }
            } else {
                next.f14540f = null;
                for (int i2 = 0; i2 < this.f14522g; i2++) {
                    m24423a(next.m24397a(i2));
                    m24423a(next.m24390b(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: d */
    public boolean m24410d(String str) throws IOException {
        synchronized (this) {
            m24428a();
            C5791c cVar = this.f14525j.get(str);
            if (cVar != null && cVar.f14540f == null) {
                for (int i = 0; i < this.f14522g; i++) {
                    File a = cVar.m24397a(i);
                    if (a.exists() && !a.delete()) {
                        throw new IOException("failed to delete " + a);
                    }
                    this.f14523h -= cVar.f14536b[i];
                    cVar.f14536b[i] = 0;
                }
                this.f14526k++;
                this.f14524i.append((CharSequence) DiskLruCache.f1471k);
                this.f14524i.append(' ');
                this.f14524i.append((CharSequence) str);
                this.f14524i.append('\n');
                this.f14525j.remove(str);
                if (m24415c()) {
                    this.f14528m.submit(this.f14529n);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: e */
    public final void m24409e() throws IOException {
        C5793b bVar = new C5793b(new FileInputStream(this.f14517b), C5795c.f14550a);
        try {
            String c = bVar.m24380c();
            String c2 = bVar.m24380c();
            String c3 = bVar.m24380c();
            String c4 = bVar.m24380c();
            String c5 = bVar.m24380c();
            if (!DiskLruCache.f1465d.equals(c) || !"1".equals(c2) || !Integer.toString(this.f14520e).equals(c3) || !Integer.toString(this.f14522g).equals(c4) || !"".equals(c5)) {
                throw new IOException("unexpected journal header: [" + c + UserProfile.CARD_CATE_SEPARATOR + c2 + UserProfile.CARD_CATE_SEPARATOR + c4 + UserProfile.CARD_CATE_SEPARATOR + c5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m24413c(bVar.m24380c());
                    i++;
                } catch (EOFException e) {
                    this.f14526k = i - this.f14525j.size();
                    if (bVar.m24381b()) {
                        m24407f();
                    } else {
                        this.f14524i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f14517b, true), C5795c.f14550a));
                    }
                    C5795c.m24379a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            C5795c.m24379a(bVar);
            throw th;
        }
    }

    /* renamed from: f */
    public final void m24407f() throws IOException {
        synchronized (this) {
            if (this.f14524i != null) {
                this.f14524i.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f14518c), C5795c.f14550a));
            bufferedWriter.write(DiskLruCache.f1465d);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f14520e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f14522g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C5791c cVar : this.f14525j.values()) {
                if (cVar.f14540f != null) {
                    bufferedWriter.write("DIRTY " + cVar.f14535a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cVar.f14535a + cVar.m24398a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f14517b.exists()) {
                m24421a(this.f14517b, this.f14519d, true);
            }
            m24421a(this.f14518c, this.f14517b, false);
            this.f14519d.delete();
            this.f14524i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f14517b, true), C5795c.f14550a));
        }
    }

    /* renamed from: g */
    public final void m24405g() throws IOException {
        while (this.f14523h > this.f14521f) {
            m24410d(this.f14525j.entrySet().iterator().next().getKey());
        }
    }
}

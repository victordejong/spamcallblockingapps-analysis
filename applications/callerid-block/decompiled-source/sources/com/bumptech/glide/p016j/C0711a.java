package com.bumptech.glide.p016j;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
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
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bumptech.glide.j.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/a.class */
public final class C0711a implements Closeable {

    /* renamed from: b */
    private final File f3424b;

    /* renamed from: c */
    private final File f3425c;

    /* renamed from: d */
    private final File f3426d;

    /* renamed from: e */
    private final File f3427e;

    /* renamed from: f */
    private final int f3428f;

    /* renamed from: g */
    private long f3429g;

    /* renamed from: h */
    private final int f3430h;

    /* renamed from: j */
    private Writer f3432j;

    /* renamed from: l */
    private int f3434l;

    /* renamed from: i */
    private long f3431i = 0;

    /* renamed from: k */
    private final LinkedHashMap<String, C0715d> f3433k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: m */
    private long f3435m = 0;

    /* renamed from: n */
    final ThreadPoolExecutor f3436n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0713b(null));

    /* renamed from: o */
    private final Callable<Void> f3437o = new CallableC0712a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.j.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/a$a.class */
    public class CallableC0712a implements Callable<Void> {
        CallableC0712a() {
        }

        /* renamed from: a */
        public Void call() {
            synchronized (C0711a.this) {
                if (C0711a.this.f3432j == null) {
                    return null;
                }
                C0711a.this.m11288l0();
                if (C0711a.this.m11296d0()) {
                    C0711a.this.m11291i0();
                    C0711a.this.f3434l = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.bumptech.glide.j.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/a$b.class */
    private static final class ThreadFactoryC0713b implements ThreadFactory {
        private ThreadFactoryC0713b() {
        }

        /* synthetic */ ThreadFactoryC0713b(CallableC0712a aVar) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread;
            synchronized (this) {
                thread = new Thread(runnable, "glide-disk-lru-cache-thread");
                thread.setPriority(1);
            }
            return thread;
        }
    }

    /* renamed from: com.bumptech.glide.j.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/a$c.class */
    public final class C0714c {

        /* renamed from: a */
        private final C0715d f3439a;

        /* renamed from: b */
        private final boolean[] f3440b;

        /* renamed from: c */
        private boolean f3441c;

        private C0714c(C0715d dVar) {
            this.f3439a = dVar;
            this.f3440b = dVar.f3447e ? null : new boolean[C0711a.this.f3430h];
        }

        /* synthetic */ C0714c(C0711a aVar, C0715d dVar, CallableC0712a aVar2) {
            this(dVar);
        }

        /* renamed from: a */
        public void m11284a() {
            C0711a.this.m11304W(this, false);
        }

        /* renamed from: b */
        public void m11283b() {
            if (!this.f3441c) {
                try {
                    m11284a();
                } catch (IOException e) {
                }
            }
        }

        /* renamed from: e */
        public void m11280e() {
            C0711a.this.m11304W(this, true);
            this.f3441c = true;
        }

        /* renamed from: f */
        public File m11279f(int i) {
            File k;
            synchronized (C0711a.this) {
                if (this.f3439a.f3448f == this) {
                    if (!this.f3439a.f3447e) {
                        this.f3440b[i] = true;
                    }
                    k = this.f3439a.m11268k(i);
                    C0711a.this.f3424b.mkdirs();
                } else {
                    throw new IllegalStateException();
                }
            }
            return k;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.j.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/a$d.class */
    public final class C0715d {

        /* renamed from: a */
        private final String f3443a;

        /* renamed from: b */
        private final long[] f3444b;

        /* renamed from: c */
        File[] f3445c;

        /* renamed from: d */
        File[] f3446d;

        /* renamed from: e */
        private boolean f3447e;

        /* renamed from: f */
        private C0714c f3448f;

        /* renamed from: g */
        private long f3449g;

        private C0715d(String str) {
            this.f3443a = str;
            this.f3444b = new long[C0711a.this.f3430h];
            this.f3445c = new File[C0711a.this.f3430h];
            this.f3446d = new File[C0711a.this.f3430h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < C0711a.this.f3430h; i++) {
                sb.append(i);
                this.f3445c[i] = new File(C0711a.this.f3424b, sb.toString());
                sb.append(".tmp");
                this.f3446d[i] = new File(C0711a.this.f3424b, sb.toString());
                sb.setLength(length);
            }
        }

        /* synthetic */ C0715d(C0711a aVar, String str, CallableC0712a aVar2) {
            this(str);
        }

        /* renamed from: m */
        private IOException m11266m(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public void m11265n(String[] strArr) {
            if (strArr.length == C0711a.this.f3430h) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f3444b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m11266m(strArr);
                        throw null;
                    }
                }
                return;
            }
            m11266m(strArr);
            throw null;
        }

        /* renamed from: j */
        public File m11269j(int i) {
            return this.f3445c[i];
        }

        /* renamed from: k */
        public File m11268k(int i) {
            return this.f3446d[i];
        }

        /* renamed from: l */
        public String m11267l() {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f3444b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: com.bumptech.glide.j.a$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j/a$e.class */
    public final class C0716e {

        /* renamed from: a */
        private final File[] f3451a;

        private C0716e(C0711a aVar, String str, long j, File[] fileArr, long[] jArr) {
            this.f3451a = fileArr;
        }

        /* synthetic */ C0716e(C0711a aVar, String str, long j, File[] fileArr, long[] jArr, CallableC0712a aVar2) {
            this(aVar, str, j, fileArr, jArr);
        }

        /* renamed from: a */
        public File m11264a(int i) {
            return this.f3451a[i];
        }
    }

    private C0711a(File file, int i, int i2, long j) {
        this.f3424b = file;
        this.f3428f = i;
        this.f3425c = new File(file, "journal");
        this.f3426d = new File(file, "journal.tmp");
        this.f3427e = new File(file, "journal.bkp");
        this.f3430h = i2;
        this.f3429g = j;
    }

    /* renamed from: U */
    private void m11306U() {
        if (this.f3432j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @TargetApi(26)
    /* renamed from: V */
    private static void m11305V(Writer writer) {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public void m11304W(C0714c cVar, boolean z) {
        synchronized (this) {
            C0715d dVar = cVar.f3439a;
            if (dVar.f3448f == cVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!dVar.f3447e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f3430h) {
                                break;
                            } else if (!cVar.f3440b[i2]) {
                                cVar.m11284a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!dVar.m11268k(i2).exists()) {
                                cVar.m11284a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f3430h) {
                    File k = dVar.m11268k(i);
                    if (!z) {
                        m11302Y(k);
                    } else if (k.exists()) {
                        File j = dVar.m11269j(i);
                        k.renameTo(j);
                        long j2 = dVar.f3444b[i];
                        long length = j.length();
                        dVar.f3444b[i] = length;
                        this.f3431i = (this.f3431i - j2) + length;
                    }
                    i++;
                }
                this.f3434l++;
                dVar.f3448f = null;
                if (dVar.f3447e || z) {
                    dVar.f3447e = true;
                    this.f3432j.append((CharSequence) "CLEAN");
                    this.f3432j.append(' ');
                    this.f3432j.append((CharSequence) dVar.f3443a);
                    this.f3432j.append((CharSequence) dVar.m11267l());
                    this.f3432j.append('\n');
                    if (z) {
                        long j3 = this.f3435m;
                        this.f3435m = 1 + j3;
                        dVar.f3449g = j3;
                    }
                } else {
                    this.f3433k.remove(dVar.f3443a);
                    this.f3432j.append((CharSequence) "REMOVE");
                    this.f3432j.append(' ');
                    this.f3432j.append((CharSequence) dVar.f3443a);
                    this.f3432j.append('\n');
                }
                m11298b0(this.f3432j);
                if (this.f3431i > this.f3429g || m11296d0()) {
                    this.f3436n.submit(this.f3437o);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: Y */
    private static void m11302Y(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a0 */
    private C0714c m11299a0(String str, long j) {
        synchronized (this) {
            m11306U();
            C0715d dVar = this.f3433k.get(str);
            if (j != -1 && (dVar == null || dVar.f3449g != j)) {
                return null;
            }
            if (dVar == null) {
                dVar = new C0715d(this, str, null);
                this.f3433k.put(str, dVar);
            } else if (dVar.f3448f != null) {
                return null;
            }
            C0714c cVar = new C0714c(this, dVar, null);
            dVar.f3448f = cVar;
            this.f3432j.append((CharSequence) "DIRTY");
            this.f3432j.append(' ');
            this.f3432j.append((CharSequence) str);
            this.f3432j.append('\n');
            m11298b0(this.f3432j);
            return cVar;
        }
    }

    @TargetApi(26)
    /* renamed from: b0 */
    private static void m11298b0(Writer writer) {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d0 */
    public boolean m11296d0() {
        int i = this.f3434l;
        return i >= 2000 && i >= this.f3433k.size();
    }

    /* renamed from: e0 */
    public static C0711a m11295e0(File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m11289k0(file2, file3, false);
                }
            }
            C0711a aVar = new C0711a(file, i, i2, j);
            if (aVar.f3425c.exists()) {
                try {
                    aVar.m11293g0();
                    aVar.m11294f0();
                    return aVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    aVar.m11303X();
                }
            }
            file.mkdirs();
            C0711a aVar2 = new C0711a(file, i, i2, j);
            aVar2.m11291i0();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: f0 */
    private void m11294f0() {
        m11302Y(this.f3426d);
        Iterator<C0715d> it = this.f3433k.values().iterator();
        while (it.hasNext()) {
            C0715d next = it.next();
            if (next.f3448f == null) {
                for (int i = 0; i < this.f3430h; i++) {
                    this.f3431i += next.f3444b[i];
                }
            } else {
                next.f3448f = null;
                for (int i2 = 0; i2 < this.f3430h; i2++) {
                    m11302Y(next.m11269j(i2));
                    m11302Y(next.m11268k(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: g0 */
    private void m11293g0() {
        C0717b bVar = new C0717b(new FileInputStream(this.f3425c), C0719c.f3458a);
        try {
            String B = bVar.m11263B();
            String B2 = bVar.m11263B();
            String B3 = bVar.m11263B();
            String B4 = bVar.m11263B();
            String B5 = bVar.m11263B();
            if (!"libcore.io.DiskLruCache".equals(B) || !"1".equals(B2) || !Integer.toString(this.f3428f).equals(B3) || !Integer.toString(this.f3430h).equals(B4) || !"".equals(B5)) {
                throw new IOException("unexpected journal header: [" + B + ", " + B2 + ", " + B4 + ", " + B5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m11292h0(bVar.m11263B());
                    i++;
                } catch (EOFException e) {
                    this.f3434l = i - this.f3433k.size();
                    if (bVar.m11260x()) {
                        m11291i0();
                    } else {
                        this.f3432j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3425c, true), C0719c.f3458a));
                    }
                    C0719c.m11259a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            C0719c.m11259a(bVar);
            throw th;
        }
    }

    /* renamed from: h0 */
    private void m11292h0(String str) {
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
                        this.f3433k.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C0715d dVar = this.f3433k.get(str2);
            C0715d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C0715d(this, str2, null);
                this.f3433k.put(str2, dVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar2.f3447e = true;
                dVar2.f3448f = null;
                dVar2.m11265n(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar2.f3448f = new C0714c(this, dVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public void m11291i0() {
        synchronized (this) {
            Writer writer = this.f3432j;
            if (writer != null) {
                m11305V(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3426d), C0719c.f3458a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3428f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3430h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C0715d dVar : this.f3433k.values()) {
                bufferedWriter.write(dVar.f3448f != null ? "DIRTY " + dVar.f3443a + '\n' : "CLEAN " + dVar.f3443a + dVar.m11267l() + '\n');
            }
            m11305V(bufferedWriter);
            if (this.f3425c.exists()) {
                m11289k0(this.f3425c, this.f3427e, true);
            }
            m11289k0(this.f3426d, this.f3425c, false);
            this.f3427e.delete();
            this.f3432j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3425c, true), C0719c.f3458a));
        }
    }

    /* renamed from: k0 */
    private static void m11289k0(File file, File file2, boolean z) {
        if (z) {
            m11302Y(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public void m11288l0() {
        while (this.f3431i > this.f3429g) {
            m11290j0(this.f3433k.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: X */
    public void m11303X() {
        close();
        C0719c.m11258b(this.f3424b);
    }

    /* renamed from: Z */
    public C0714c m11301Z(String str) {
        return m11299a0(str, -1L);
    }

    /* renamed from: c0 */
    public C0716e m11297c0(String str) {
        synchronized (this) {
            m11306U();
            C0715d dVar = this.f3433k.get(str);
            if (dVar == null) {
                return null;
            }
            if (!dVar.f3447e) {
                return null;
            }
            for (File file : dVar.f3445c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f3434l++;
            this.f3432j.append((CharSequence) "READ");
            this.f3432j.append(' ');
            this.f3432j.append((CharSequence) str);
            this.f3432j.append('\n');
            if (m11296d0()) {
                this.f3436n.submit(this.f3437o);
            }
            return new C0716e(this, str, dVar.f3449g, dVar.f3445c, dVar.f3444b, null);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f3432j != null) {
                Iterator it = new ArrayList(this.f3433k.values()).iterator();
                while (it.hasNext()) {
                    C0715d dVar = (C0715d) it.next();
                    if (dVar.f3448f != null) {
                        dVar.f3448f.m11284a();
                    }
                }
                m11288l0();
                m11305V(this.f3432j);
                this.f3432j = null;
            }
        }
    }

    /* renamed from: j0 */
    public boolean m11290j0(String str) {
        synchronized (this) {
            m11306U();
            C0715d dVar = this.f3433k.get(str);
            if (dVar != null && dVar.f3448f == null) {
                for (int i = 0; i < this.f3430h; i++) {
                    File j = dVar.m11269j(i);
                    if (j.exists() && !j.delete()) {
                        throw new IOException("failed to delete " + j);
                    }
                    this.f3431i -= dVar.f3444b[i];
                    dVar.f3444b[i] = 0;
                }
                this.f3434l++;
                this.f3432j.append((CharSequence) "REMOVE");
                this.f3432j.append(' ');
                this.f3432j.append((CharSequence) str);
                this.f3432j.append('\n');
                this.f3433k.remove(str);
                if (m11296d0()) {
                    this.f3436n.submit(this.f3437o);
                }
                return true;
            }
            return false;
        }
    }
}

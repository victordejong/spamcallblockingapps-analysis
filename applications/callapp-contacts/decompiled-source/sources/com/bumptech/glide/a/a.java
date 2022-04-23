package com.bumptech.glide.a;

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
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a.class */
public final class a implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private final File f7193b;

    /* renamed from: c  reason: collision with root package name */
    private final File f7194c;

    /* renamed from: d  reason: collision with root package name */
    private final File f7195d;
    private final File e;
    private final int f;
    private long g;
    private final int h;
    private Writer j;
    private int l;
    private long i = 0;
    private final LinkedHashMap<String, c> k = new LinkedHashMap<>(0, 0.75f, true);
    private long m = 0;

    /* renamed from: a  reason: collision with root package name */
    final ThreadPoolExecutor f7192a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0136a());
    private final Callable<Void> n = new Callable<Void>() { // from class: com.bumptech.glide.a.a.1
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.j == null) {
                    return null;
                }
                a.this.f();
                if (a.this.d()) {
                    a.this.c();
                    a.this.l = 0;
                }
                return null;
            }
        }
    };

    /* renamed from: com.bumptech.glide.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$a.class */
    static final class ThreadFactoryC0136a implements ThreadFactory {
        private ThreadFactoryC0136a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread;
            synchronized (this) {
                thread = new Thread(runnable, "glide-disk-lru-cache-thread");
                thread.setPriority(1);
            }
            return thread;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final c f7197a;

        /* renamed from: b  reason: collision with root package name */
        final boolean[] f7198b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f7199c;

        private b(c cVar) {
            this.f7197a = cVar;
            this.f7198b = cVar.e ? null : new boolean[a.this.h];
        }

        public final File a() throws IOException {
            File file;
            synchronized (a.this) {
                if (this.f7197a.f == this) {
                    if (!this.f7197a.e) {
                        this.f7198b[0] = true;
                    }
                    file = this.f7197a.f7204d[0];
                    a.this.f7193b.mkdirs();
                } else {
                    throw new IllegalStateException();
                }
            }
            return file;
        }

        public final void b() throws IOException {
            a.this.a(this, false);
        }

        public final void c() {
            if (!this.f7199c) {
                try {
                    b();
                } catch (IOException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$c.class */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        final String f7201a;

        /* renamed from: b  reason: collision with root package name */
        final long[] f7202b;

        /* renamed from: c  reason: collision with root package name */
        File[] f7203c;

        /* renamed from: d  reason: collision with root package name */
        File[] f7204d;
        boolean e;
        b f;
        long g;

        private c(String str) {
            this.f7201a = str;
            this.f7202b = new long[a.this.h];
            this.f7203c = new File[a.this.h];
            this.f7204d = new File[a.this.h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < a.this.h; i++) {
                sb.append(i);
                this.f7203c[i] = new File(a.this.f7193b, sb.toString());
                sb.append(".tmp");
                this.f7204d[i] = new File(a.this.f7193b, sb.toString());
                sb.setLength(length);
            }
        }

        private static IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final String a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f7202b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        final void a(String[] strArr) throws IOException {
            if (strArr.length == a.this.h) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f7202b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw b(strArr);
                    }
                }
                return;
            }
            throw b(strArr);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$d.class */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        public final File[] f7205a;

        /* renamed from: c  reason: collision with root package name */
        private final String f7207c;

        /* renamed from: d  reason: collision with root package name */
        private final long f7208d;
        private final long[] e;

        private d(String str, long j, File[] fileArr, long[] jArr) {
            this.f7207c = str;
            this.f7208d = j;
            this.f7205a = fileArr;
            this.e = jArr;
        }
    }

    private a(File file, int i, int i2, long j) {
        this.f7193b = file;
        this.f = i;
        this.f7194c = new File(file, "journal");
        this.f7195d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.h = i2;
        this.g = j;
    }

    public static a a(File file, long j) throws IOException {
        if (j > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    a(file2, file3, false);
                }
            }
            a aVar = new a(file, 1, 1, j);
            if (aVar.f7194c.exists()) {
                try {
                    aVar.a();
                    aVar.b();
                    return aVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    aVar.close();
                    com.bumptech.glide.a.c.a(aVar.f7193b);
                }
            }
            file.mkdirs();
            a aVar2 = new a(file, 1, 1, j);
            aVar2.c();
            return aVar2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private void a() throws IOException {
        String a2;
        String str;
        com.bumptech.glide.a.b bVar = new com.bumptech.glide.a.b(new FileInputStream(this.f7194c), com.bumptech.glide.a.c.f7214a);
        try {
            String a3 = bVar.a();
            String a4 = bVar.a();
            String a5 = bVar.a();
            String a6 = bVar.a();
            String a7 = bVar.a();
            if (!"libcore.io.DiskLruCache".equals(a3) || !"1".equals(a4) || !Integer.toString(this.f).equals(a5) || !Integer.toString(this.h).equals(a6) || !"".equals(a7)) {
                throw new IOException("unexpected journal header: [" + a3 + ", " + a4 + ", " + a6 + ", " + a7 + "]");
            }
            boolean z = false;
            int i = 0;
            while (true) {
                try {
                    a2 = bVar.a();
                    int indexOf = a2.indexOf(32);
                    if (indexOf != -1) {
                        int i2 = indexOf + 1;
                        int indexOf2 = a2.indexOf(32, i2);
                        if (indexOf2 == -1) {
                            String substring = a2.substring(i2);
                            str = substring;
                            if (indexOf == 6) {
                                str = substring;
                                if (a2.startsWith("REMOVE")) {
                                    this.k.remove(substring);
                                    i++;
                                }
                            }
                        } else {
                            str = a2.substring(i2, indexOf2);
                        }
                        c cVar = this.k.get(str);
                        c cVar2 = cVar;
                        if (cVar == null) {
                            cVar2 = new c(str);
                            this.k.put(str, cVar2);
                        }
                        if (indexOf2 != -1 && indexOf == 5 && a2.startsWith("CLEAN")) {
                            String[] split = a2.substring(indexOf2 + 1).split(StringUtils.SPACE);
                            cVar2.e = true;
                            cVar2.f = null;
                            cVar2.a(split);
                        } else if (indexOf2 == -1 && indexOf == 5 && a2.startsWith("DIRTY")) {
                            cVar2.f = new b(cVar2);
                        } else if (indexOf2 != -1 || indexOf != 4 || !a2.startsWith("READ")) {
                            break;
                        }
                        i++;
                    } else {
                        throw new IOException("unexpected journal line: ".concat(String.valueOf(a2)));
                    }
                } catch (EOFException e) {
                    this.l = i - this.k.size();
                    if (bVar.f7210b == -1) {
                        z = true;
                    }
                    if (z) {
                        c();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f7194c, true), com.bumptech.glide.a.c.f7214a));
                    }
                    com.bumptech.glide.a.c.a(bVar);
                    return;
                }
            }
            throw new IOException("unexpected journal line: ".concat(String.valueOf(a2)));
        } catch (Throwable th) {
            com.bumptech.glide.a.c.a(bVar);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar, boolean z) throws IOException {
        synchronized (this) {
            c cVar = bVar.f7197a;
            if (cVar.f == bVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!cVar.e) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.h) {
                                break;
                            } else if (!bVar.f7198b[i2]) {
                                bVar.b();
                                throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i2)));
                            } else if (!cVar.f7204d[i2].exists()) {
                                bVar.b();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.h) {
                    File file = cVar.f7204d[i];
                    if (!z) {
                        a(file);
                    } else if (file.exists()) {
                        File file2 = cVar.f7203c[i];
                        file.renameTo(file2);
                        long j = cVar.f7202b[i];
                        long length = file2.length();
                        cVar.f7202b[i] = length;
                        this.i = (this.i - j) + length;
                    }
                    i++;
                }
                this.l++;
                cVar.f = null;
                if (cVar.e || z) {
                    cVar.e = true;
                    this.j.append((CharSequence) "CLEAN");
                    this.j.append(' ');
                    this.j.append((CharSequence) cVar.f7201a);
                    this.j.append((CharSequence) cVar.a());
                    this.j.append('\n');
                    if (z) {
                        long j2 = this.m;
                        this.m = 1 + j2;
                        cVar.g = j2;
                    }
                } else {
                    this.k.remove(cVar.f7201a);
                    this.j.append((CharSequence) "REMOVE");
                    this.j.append(' ');
                    this.j.append((CharSequence) cVar.f7201a);
                    this.j.append('\n');
                }
                b(this.j);
                if (this.i > this.g || d()) {
                    this.f7192a.submit(this.n);
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

    private static void a(Writer writer) throws IOException {
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

    private void b() throws IOException {
        a(this.f7195d);
        Iterator<c> it2 = this.k.values().iterator();
        while (it2.hasNext()) {
            c next = it2.next();
            if (next.f == null) {
                for (int i = 0; i < this.h; i++) {
                    this.i += next.f7202b[i];
                }
            } else {
                next.f = null;
                for (int i2 = 0; i2 < this.h; i2++) {
                    a(next.f7203c[i2]);
                    a(next.f7204d[i2]);
                }
                it2.remove();
            }
        }
    }

    private static void b(Writer writer) throws IOException {
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
    public void c() throws IOException {
        synchronized (this) {
            Writer writer = this.j;
            if (writer != null) {
                a(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f7195d), com.bumptech.glide.a.c.f7214a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write("1");
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write(Integer.toString(this.f));
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write(StringUtils.LF);
            bufferedWriter.write(StringUtils.LF);
            for (c cVar : this.k.values()) {
                if (cVar.f != null) {
                    bufferedWriter.write("DIRTY " + cVar.f7201a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cVar.f7201a + cVar.a() + '\n');
                }
            }
            a(bufferedWriter);
            if (this.f7194c.exists()) {
                a(this.f7194c, this.e, true);
            }
            a(this.f7195d, this.f7194c, false);
            this.e.delete();
            this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f7194c, true), com.bumptech.glide.a.c.f7214a));
        }
    }

    private boolean c(String str) throws IOException {
        synchronized (this) {
            e();
            c cVar = this.k.get(str);
            if (cVar != null && cVar.f == null) {
                for (int i = 0; i < this.h; i++) {
                    File file = cVar.f7203c[i];
                    if (file.exists() && !file.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(file)));
                    }
                    this.i -= cVar.f7202b[i];
                    cVar.f7202b[i] = 0;
                }
                this.l++;
                this.j.append((CharSequence) "REMOVE");
                this.j.append(' ');
                this.j.append((CharSequence) str);
                this.j.append('\n');
                this.k.remove(str);
                if (d()) {
                    this.f7192a.submit(this.n);
                }
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        int i = this.l;
        return i >= 2000 && i >= this.k.size();
    }

    private void e() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() throws IOException {
        while (this.i > this.g) {
            c(this.k.entrySet().iterator().next().getKey());
        }
    }

    public final d a(String str) throws IOException {
        synchronized (this) {
            e();
            c cVar = this.k.get(str);
            if (cVar == null) {
                return null;
            }
            if (!cVar.e) {
                return null;
            }
            for (File file : cVar.f7203c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.l++;
            this.j.append((CharSequence) "READ");
            this.j.append(' ');
            this.j.append((CharSequence) str);
            this.j.append('\n');
            if (d()) {
                this.f7192a.submit(this.n);
            }
            return new d(str, cVar.g, cVar.f7203c, cVar.f7202b);
        }
    }

    public final b b(String str) throws IOException {
        synchronized (this) {
            e();
            c cVar = this.k.get(str);
            if (cVar == null) {
                cVar = new c(str);
                this.k.put(str, cVar);
            } else if (cVar.f != null) {
                return null;
            }
            b bVar = new b(cVar);
            cVar.f = bVar;
            this.j.append((CharSequence) "DIRTY");
            this.j.append(' ');
            this.j.append((CharSequence) str);
            this.j.append('\n');
            b(this.j);
            return bVar;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.j != null) {
                Iterator it2 = new ArrayList(this.k.values()).iterator();
                while (it2.hasNext()) {
                    c cVar = (c) it2.next();
                    if (cVar.f != null) {
                        cVar.f.b();
                    }
                }
                f();
                a(this.j);
                this.j = null;
            }
        }
    }
}

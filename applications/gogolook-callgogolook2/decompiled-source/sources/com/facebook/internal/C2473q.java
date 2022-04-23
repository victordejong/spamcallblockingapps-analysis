package com.facebook.internal;

import androidx.core.app.Person;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.internal.q */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/q.class */
public final class C2473q {

    /* renamed from: g */
    public static final String f3155g = "q";

    /* renamed from: h */
    public static final AtomicLong f3156h = new AtomicLong();

    /* renamed from: a */
    public final String f3157a;

    /* renamed from: b */
    public final C2482g f3158b;

    /* renamed from: c */
    public final File f3159c;

    /* renamed from: d */
    public boolean f3160d;

    /* renamed from: f */
    public AtomicLong f3162f = new AtomicLong(0);

    /* renamed from: e */
    public final Object f3161e = new Object();

    /* renamed from: com.facebook.internal.q$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$a.class */
    public class C2474a implements AbstractC2484i {

        /* renamed from: a */
        public final /* synthetic */ long f3163a;

        /* renamed from: b */
        public final /* synthetic */ File f3164b;

        /* renamed from: c */
        public final /* synthetic */ String f3165c;

        public C2474a(long j, File file, String str) {
            this.f3163a = j;
            this.f3164b = file;
            this.f3165c = str;
        }

        @Override // com.facebook.internal.C2473q.AbstractC2484i
        public void onClose() {
            if (this.f3163a < C2473q.this.f3162f.get()) {
                this.f3164b.delete();
            } else {
                C2473q.this.m34625a(this.f3165c, this.f3164b);
            }
        }
    }

    /* renamed from: com.facebook.internal.q$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$b.class */
    public class RunnableC2475b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ File[] f3167a;

        public RunnableC2475b(C2473q qVar, File[] fileArr) {
            this.f3167a = fileArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (File file : this.f3167a) {
                file.delete();
            }
        }
    }

    /* renamed from: com.facebook.internal.q$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$c.class */
    public class RunnableC2476c implements Runnable {
        public RunnableC2476c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2473q.this.m34618c();
        }
    }

    /* renamed from: com.facebook.internal.q$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$d.class */
    public static class C2477d {

        /* renamed from: a */
        public static final FilenameFilter f3169a = new C2478a();

        /* renamed from: b */
        public static final FilenameFilter f3170b = new C2479b();

        /* renamed from: com.facebook.internal.q$d$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$d$a.class */
        public static final class C2478a implements FilenameFilter {
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return !str.startsWith("buffer");
            }
        }

        /* renamed from: com.facebook.internal.q$d$b */
        /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$d$b.class */
        public static final class C2479b implements FilenameFilter {
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.startsWith("buffer");
            }
        }

        /* renamed from: a */
        public static FilenameFilter m34616a() {
            return f3169a;
        }

        /* renamed from: a */
        public static void m34615a(File file) {
            File[] listFiles = file.listFiles(m34614b());
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    file2.delete();
                }
            }
        }

        /* renamed from: b */
        public static File m34613b(File file) {
            return new File(file, "buffer" + Long.valueOf(C2473q.f3156h.incrementAndGet()).toString());
        }

        /* renamed from: b */
        public static FilenameFilter m34614b() {
            return f3170b;
        }
    }

    /* renamed from: com.facebook.internal.q$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$e.class */
    public static class C2480e extends OutputStream {

        /* renamed from: a */
        public final OutputStream f3171a;

        /* renamed from: b */
        public final AbstractC2484i f3172b;

        public C2480e(OutputStream outputStream, AbstractC2484i iVar) {
            this.f3171a = outputStream;
            this.f3172b = iVar;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f3171a.close();
            } finally {
                this.f3172b.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.f3171a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.f3171a.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.f3171a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.f3171a.write(bArr, i, i2);
        }
    }

    /* renamed from: com.facebook.internal.q$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$f.class */
    public static final class C2481f extends InputStream {

        /* renamed from: a */
        public final InputStream f3173a;

        /* renamed from: b */
        public final OutputStream f3174b;

        public C2481f(InputStream inputStream, OutputStream outputStream) {
            this.f3173a = inputStream;
            this.f3174b = outputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f3173a.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.f3173a.close();
            } finally {
                this.f3174b.close();
            }
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.f3173a.read();
            if (read >= 0) {
                this.f3174b.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            int read = this.f3173a.read(bArr);
            if (read > 0) {
                this.f3174b.write(bArr, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = this.f3173a.read(bArr, i, i2);
            if (read > 0) {
                this.f3174b.write(bArr, i, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                throw new UnsupportedOperationException();
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            int read;
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (j2 < j && (read = read(bArr, 0, (int) Math.min(j - j2, bArr.length))) >= 0) {
                j2 += read;
            }
            return j2;
        }
    }

    /* renamed from: com.facebook.internal.q$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$g.class */
    public static final class C2482g {

        /* renamed from: b */
        public int f3176b = 1024;

        /* renamed from: a */
        public int f3175a = 1048576;

        /* renamed from: a */
        public int m34612a() {
            return this.f3175a;
        }

        /* renamed from: b */
        public int m34611b() {
            return this.f3176b;
        }
    }

    /* renamed from: com.facebook.internal.q$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$h.class */
    public static final class C2483h implements Comparable<C2483h> {

        /* renamed from: a */
        public final File f3177a;

        /* renamed from: b */
        public final long f3178b;

        public C2483h(File file) {
            this.f3177a = file;
            this.f3178b = file.lastModified();
        }

        /* renamed from: a */
        public int compareTo(C2483h hVar) {
            if (m34608b() < hVar.m34608b()) {
                return -1;
            }
            if (m34608b() > hVar.m34608b()) {
                return 1;
            }
            return m34610a().compareTo(hVar.m34610a());
        }

        /* renamed from: a */
        public File m34610a() {
            return this.f3177a;
        }

        /* renamed from: b */
        public long m34608b() {
            return this.f3178b;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C2483h) && compareTo((C2483h) obj) == 0;
        }

        public int hashCode() {
            return ((1073 + this.f3177a.hashCode()) * 37) + ((int) (this.f3178b % 2147483647L));
        }
    }

    /* renamed from: com.facebook.internal.q$i */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$i.class */
    public interface AbstractC2484i {
        void onClose();
    }

    /* renamed from: com.facebook.internal.q$j */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/q$j.class */
    public static final class C2485j {
        /* renamed from: a */
        public static JSONObject m34607a(InputStream inputStream) throws IOException {
            if (inputStream.read() != 0) {
                return null;
            }
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                int read = inputStream.read();
                if (read == -1) {
                    C2503y.m34557a(EnumC6151v.CACHE, C2473q.f3155g, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i2 = (i2 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i2];
            while (i < bArr.length) {
                int read2 = inputStream.read(bArr, i, bArr.length - i);
                if (read2 < 1) {
                    EnumC6151v vVar = EnumC6151v.CACHE;
                    String str = C2473q.f3155g;
                    C2503y.m34557a(vVar, str, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + bArr.length);
                    return null;
                }
                i += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr)).nextValue();
                if (nextValue instanceof JSONObject) {
                    return (JSONObject) nextValue;
                }
                EnumC6151v vVar2 = EnumC6151v.CACHE;
                String str2 = C2473q.f3155g;
                C2503y.m34557a(vVar2, str2, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                return null;
            } catch (JSONException e) {
                throw new IOException(e.getMessage());
            }
        }

        /* renamed from: a */
        public static void m34606a(OutputStream outputStream, JSONObject jSONObject) throws IOException {
            byte[] bytes = jSONObject.toString().getBytes();
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write((bytes.length >> 0) & 255);
            outputStream.write(bytes);
        }
    }

    public C2473q(String str, C2482g gVar) {
        this.f3157a = str;
        this.f3158b = gVar;
        this.f3159c = new File(C6135n.m23741j(), str);
        if (this.f3159c.mkdirs() || this.f3159c.isDirectory()) {
            C2477d.m34615a(this.f3159c);
        }
    }

    /* renamed from: a */
    public InputStream m34626a(String str) throws IOException {
        return m34623a(str, (String) null);
    }

    /* renamed from: a */
    public InputStream m34624a(String str, InputStream inputStream) throws IOException {
        return new C2481f(inputStream, m34620b(str));
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public InputStream m34623a(String str, String str2) throws IOException {
        File file = new File(this.f3159c, C2408g0.m34812e(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
            try {
                JSONObject a = C2485j.m34607a(bufferedInputStream);
                if (a == null) {
                    bufferedInputStream.close();
                    return null;
                }
                String optString = a.optString(Person.KEY_KEY);
                if (optString != null && optString.equals(str)) {
                    String optString2 = a.optString(NovaHomeBadger.TAG, null);
                    if ((str2 != null || optString2 == null) && (str2 == null || str2.equals(optString2))) {
                        long time = new Date().getTime();
                        EnumC6151v vVar = EnumC6151v.CACHE;
                        String str3 = f3155g;
                        C2503y.m34557a(vVar, str3, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
                        file.setLastModified(time);
                        return bufferedInputStream;
                    }
                    bufferedInputStream.close();
                    return null;
                }
                bufferedInputStream.close();
                return null;
            } catch (Throwable th) {
                bufferedInputStream.close();
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m34629a() {
        File[] listFiles = this.f3159c.listFiles(C2477d.m34616a());
        this.f3162f.set(System.currentTimeMillis());
        if (listFiles != null) {
            C6135n.m23737n().execute(new RunnableC2475b(this, listFiles));
        }
    }

    /* renamed from: a */
    public final void m34625a(String str, File file) {
        if (!file.renameTo(new File(this.f3159c, C2408g0.m34812e(str)))) {
            file.delete();
        }
        m34622b();
    }

    /* renamed from: b */
    public OutputStream m34620b(String str) throws IOException {
        return m34619b(str, null);
    }

    /* renamed from: b */
    public OutputStream m34619b(String str, String str2) throws IOException {
        File b = C2477d.m34613b(this.f3159c);
        b.delete();
        if (b.createNewFile()) {
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new C2480e(new FileOutputStream(b), new C2474a(System.currentTimeMillis(), b, str)), 8192);
                try {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(Person.KEY_KEY, str);
                        if (!C2408g0.m34816d(str2)) {
                            jSONObject.put(NovaHomeBadger.TAG, str2);
                        }
                        C2485j.m34606a(bufferedOutputStream, jSONObject);
                        return bufferedOutputStream;
                    } catch (JSONException e) {
                        EnumC6151v vVar = EnumC6151v.CACHE;
                        String str3 = f3155g;
                        C2503y.m34559a(vVar, 5, str3, "Error creating JSON header for cache file: " + e);
                        throw new IOException(e.getMessage());
                    }
                } catch (Throwable th) {
                    bufferedOutputStream.close();
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                EnumC6151v vVar2 = EnumC6151v.CACHE;
                String str4 = f3155g;
                C2503y.m34559a(vVar2, 5, str4, "Error creating buffer output stream: " + e2);
                throw new IOException(e2.getMessage());
            }
        } else {
            throw new IOException("Could not create file at " + b.getAbsolutePath());
        }
    }

    /* renamed from: b */
    public final void m34622b() {
        synchronized (this.f3161e) {
            if (!this.f3160d) {
                this.f3160d = true;
                C6135n.m23737n().execute(new RunnableC2476c());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34618c() {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C2473q.m34618c():void");
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.f3157a + " file:" + this.f3159c.getName() + CssParser.BLOCK_END;
    }
}

package com.bytedance.sdk.adnet.core;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.d.c;
import com.bytedance.sdk.adnet.face.a;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/f.class */
public class f implements com.bytedance.sdk.adnet.face.a {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f8300a;

    /* renamed from: b  reason: collision with root package name */
    private long f8301b;

    /* renamed from: c  reason: collision with root package name */
    private final File f8302c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8303d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/f$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f8304a;

        /* renamed from: b  reason: collision with root package name */
        final String f8305b;

        /* renamed from: c  reason: collision with root package name */
        final String f8306c;

        /* renamed from: d  reason: collision with root package name */
        final long f8307d;
        final long e;
        final long f;
        final long g;
        final List<Header> h;

        a(String str, a.C0159a aVar) {
            this(str, aVar.f8364c, aVar.f8365d, aVar.e, aVar.f, aVar.g, a(aVar));
        }

        private a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f8305b = str;
            this.f8306c = "".equals(str2) ? null : str2;
            this.f8307d = j;
            this.e = j2;
            this.f = j3;
            this.g = j4;
            this.h = list;
        }

        static a a(b bVar) throws Throwable {
            if (f.a((InputStream) bVar) == 538247942) {
                return new a(f.a(bVar), f.a(bVar), f.b((InputStream) bVar), f.b((InputStream) bVar), f.b((InputStream) bVar), f.b((InputStream) bVar), f.b(bVar));
            }
            throw new IOException();
        }

        private static List<Header> a(a.C0159a aVar) {
            return aVar.i != null ? aVar.i : c.b(aVar.h);
        }

        a.C0159a a(byte[] bArr) {
            a.C0159a aVar = new a.C0159a();
            aVar.f8363b = bArr;
            aVar.f8364c = this.f8306c;
            aVar.f8365d = this.f8307d;
            aVar.e = this.e;
            aVar.f = this.f;
            aVar.g = this.g;
            aVar.h = c.a(this.h);
            aVar.i = Collections.unmodifiableList(this.h);
            return aVar;
        }

        boolean a(OutputStream outputStream) {
            try {
                f.a(outputStream, 538247942);
                f.a(outputStream, this.f8305b);
                String str = this.f8306c;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                f.a(outputStream, str2);
                f.a(outputStream, this.f8307d);
                f.a(outputStream, this.e);
                f.a(outputStream, this.f);
                f.a(outputStream, this.g);
                f.a(this.h, outputStream);
                outputStream.flush();
                return true;
            } catch (Throwable th) {
                o.b("%s", th.toString());
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/f$b.class */
    public static class b extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private final long f8308a;

        /* renamed from: b  reason: collision with root package name */
        private long f8309b;

        b(InputStream inputStream, long j) {
            super(inputStream);
            this.f8308a = j;
        }

        long a() {
            return this.f8308a - this.f8309b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f8309b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f8309b += read;
            }
            return read;
        }
    }

    public f(File file) {
        this(file, 5242880);
    }

    public f(File file, int i) {
        this.f8300a = new LinkedHashMap(16, 0.75f, true);
        this.f8301b = 0L;
        this.f8302c = file;
        this.f8303d = i;
    }

    static int a(InputStream inputStream) throws Throwable {
        return (c(inputStream) << 24) | (c(inputStream) << 0) | 0 | (c(inputStream) << 8) | (c(inputStream) << 16);
    }

    static String a(b bVar) throws Throwable {
        return new String(a(bVar, b((InputStream) bVar)), "UTF-8");
    }

    static void a(OutputStream outputStream, int i) throws Throwable {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void a(OutputStream outputStream, long j) throws Throwable {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void a(OutputStream outputStream, String str) throws Throwable {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void a(String str, a aVar) {
        if (!this.f8300a.containsKey(str)) {
            this.f8301b += aVar.f8304a;
        } else {
            this.f8301b += aVar.f8304a - this.f8300a.get(str).f8304a;
        }
        this.f8300a.put(str, aVar);
    }

    static void a(List<Header> list, OutputStream outputStream) throws Throwable {
        if (list != null) {
            a(outputStream, list.size());
            for (Header header : list) {
                a(outputStream, header.getName());
                a(outputStream, header.getValue());
            }
            return;
        }
        a(outputStream, 0);
    }

    static byte[] a(b bVar, long j) throws Throwable {
        long a2 = bVar.a();
        if (j >= 0 && j <= a2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + a2);
    }

    static long b(InputStream inputStream) throws Throwable {
        return ((c(inputStream) & 255) << 0) | 0 | ((c(inputStream) & 255) << 8) | ((c(inputStream) & 255) << 16) | ((c(inputStream) & 255) << 24) | ((c(inputStream) & 255) << 32) | ((c(inputStream) & 255) << 40) | ((c(inputStream) & 255) << 48) | ((255 & c(inputStream)) << 56);
    }

    static List<Header> b(b bVar) throws Throwable {
        int a2 = a((InputStream) bVar);
        if (a2 >= 0) {
            List<Header> emptyList = a2 == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < a2; i++) {
                emptyList.add(new Header(a(bVar).intern(), a(bVar).intern()));
            }
            return emptyList;
        }
        throw new IOException("readHeaderList size=".concat(String.valueOf(a2)));
    }

    private void b() {
        int i;
        if (this.f8301b >= this.f8303d) {
            if (o.f8336a) {
                o.a("Pruning old cache entries.", new Object[0]);
            }
            long j = this.f8301b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, a>> it2 = this.f8300a.entrySet().iterator();
            int i2 = 0;
            do {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                a value = it2.next().getValue();
                if (c(value.f8305b).delete()) {
                    this.f8301b -= value.f8304a;
                } else {
                    o.b("Could not delete cache entry for key=%s, filename=%s", value.f8305b, d(value.f8305b));
                }
                it2.remove();
                i = i2 + 1;
                i2 = i;
            } while (((float) this.f8301b) >= this.f8303d * 0.9f);
            if (o.f8336a) {
                o.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f8301b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    private static int c(InputStream inputStream) throws Throwable {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private String d(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    private void e(String str) {
        a remove = this.f8300a.remove(str);
        if (remove != null) {
            this.f8301b -= remove.f8304a;
        }
    }

    @Override // com.bytedance.sdk.adnet.face.a
    public a.C0159a a(String str) {
        b bVar;
        Throwable th;
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            a aVar = this.f8300a.get(str);
            if (aVar == null) {
                return null;
            }
            File c2 = c(str);
            try {
                bVar = new b(new BufferedInputStream(a(c2)), c2.length());
                try {
                    a a2 = a.a(bVar);
                    if (!TextUtils.equals(str, a2.f8305b)) {
                        o.b("%s: key=%s, found=%s", c2.getAbsolutePath(), str, a2.f8305b);
                        e(str);
                        bVar.close();
                        try {
                            bVar.close();
                        } catch (Throwable th2) {
                        }
                        return null;
                    }
                    a.C0159a a3 = aVar.a(a(bVar, bVar.a()));
                    bVar.close();
                    try {
                        bVar.close();
                    } catch (Throwable th3) {
                    }
                    return a3;
                } catch (Throwable th4) {
                    th = th4;
                    o.b("%s: %s", c2.getAbsolutePath(), th.toString());
                    b(str);
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (Throwable th5) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th6) {
                th = th6;
                bVar = null;
            }
        }
    }

    InputStream a(File file) throws Throwable {
        return new FileInputStream(file);
    }

    @Override // com.bytedance.sdk.adnet.face.a
    public void a() {
        synchronized (this) {
            if (!this.f8302c.exists()) {
                if (!this.f8302c.mkdirs()) {
                    o.c("Unable to create cache dir %s", this.f8302c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f8302c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    long length = file.length();
                    b bVar = new b(new BufferedInputStream(a(file)), length);
                    try {
                        a a2 = a.a(bVar);
                        a2.f8304a = length;
                        a(a2.f8305b, a2);
                    } catch (Throwable th) {
                    }
                    bVar.close();
                }
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.face.a
    public void a(String str, a.C0159a aVar) {
        BufferedOutputStream bufferedOutputStream;
        synchronized (this) {
            if (this.f8301b + aVar.f8363b.length <= this.f8303d || aVar.f8363b.length <= this.f8303d * 0.9f) {
                File c2 = c(str);
                BufferedOutputStream bufferedOutputStream2 = null;
                try {
                    bufferedOutputStream = new BufferedOutputStream(b(c2));
                } catch (Throwable th) {
                }
                try {
                    a aVar2 = new a(str, aVar);
                    if (aVar2.a(bufferedOutputStream)) {
                        bufferedOutputStream.write(aVar.f8363b);
                        aVar2.f8304a = c2.length();
                        a(str, aVar2);
                        b();
                        try {
                            bufferedOutputStream.close();
                        } catch (Throwable th2) {
                        }
                    } else {
                        bufferedOutputStream.close();
                        o.b("Failed to write header for %s", c2.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (Throwable th3) {
                    bufferedOutputStream2 = bufferedOutputStream;
                    if (bufferedOutputStream2 != null) {
                        try {
                            bufferedOutputStream2.close();
                        } catch (Throwable th4) {
                        }
                    }
                    if (!c2.delete()) {
                        o.b("Could not clean up file %s", c2.getAbsolutePath());
                    }
                }
            }
        }
    }

    OutputStream b(File file) throws Throwable {
        return new FileOutputStream(file);
    }

    public void b(String str) {
        synchronized (this) {
            boolean delete = c(str).delete();
            e(str);
            if (!delete) {
                o.b("Could not delete cache entry for key=%s, filename=%s", str, d(str));
            }
        }
    }

    public File c(String str) {
        return new File(this.f8302c, d(str));
    }
}

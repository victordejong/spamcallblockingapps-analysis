package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.google.android.gms.internal.ads.jy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jy.class */
public final class C3263jy implements AbstractC2759a {

    /* renamed from: a */
    private final Map<String, C3314lv> f16832a;

    /* renamed from: b */
    private long f16833b;

    /* renamed from: c */
    private final AbstractC3364nr f16834c;

    /* renamed from: d */
    private final int f16835d;

    public C3263jy(AbstractC3364nr abstractC3364nr) {
        this(abstractC3364nr, 5242880);
    }

    private C3263jy(AbstractC3364nr abstractC3364nr, int i) {
        this.f16832a = new LinkedHashMap(16, 0.75f, true);
        this.f16833b = 0L;
        this.f16834c = abstractC3364nr;
        this.f16835d = 5242880;
    }

    public C3263jy(File file, int i) {
        this.f16832a = new LinkedHashMap(16, 0.75f, true);
        this.f16833b = 0L;
        this.f16834c = new C3338ms(this, file);
        this.f16835d = 20971520;
    }

    /* renamed from: a */
    public static int m7712a(InputStream inputStream) {
        return m7702c(inputStream) | 0 | (m7702c(inputStream) << 8) | (m7702c(inputStream) << 16) | (m7702c(inputStream) << 24);
    }

    /* renamed from: a */
    private static InputStream m7713a(File file) {
        return new FileInputStream(file);
    }

    /* renamed from: a */
    public static String m7715a(C3392os c3392os) {
        return new String(m7714a(c3392os, m7704b((InputStream) c3392os)), "UTF-8");
    }

    /* renamed from: a */
    public static void m7711a(OutputStream outputStream, int i) {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    /* renamed from: a */
    public static void m7710a(OutputStream outputStream, long j) {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: a */
    public static void m7709a(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        m7710a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    private final void m7706a(String str, C3314lv c3314lv) {
        if (!this.f16832a.containsKey(str)) {
            this.f16833b += c3314lv.f16943a;
        } else {
            this.f16833b = (c3314lv.f16943a - this.f16832a.get(str).f16943a) + this.f16833b;
        }
        this.f16832a.put(str, c3314lv);
    }

    /* renamed from: a */
    private static byte[] m7714a(C3392os c3392os, long j) {
        long m7355a = c3392os.m7355a();
        if (j < 0 || j > m7355a || ((int) j) != j) {
            throw new IOException(new StringBuilder(73).append("streamToBytes length=").append(j).append(", maxLength=").append(m7355a).toString());
        }
        byte[] bArr = new byte[(int) j];
        new DataInputStream(c3392os).readFully(bArr);
        return bArr;
    }

    /* renamed from: b */
    public static long m7704b(InputStream inputStream) {
        return 0 | (m7702c(inputStream) & 255) | ((m7702c(inputStream) & 255) << 8) | ((m7702c(inputStream) & 255) << 16) | ((m7702c(inputStream) & 255) << 24) | ((m7702c(inputStream) & 255) << 32) | ((m7702c(inputStream) & 255) << 40) | ((m7702c(inputStream) & 255) << 48) | ((m7702c(inputStream) & 255) << 56);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.List] */
    /* renamed from: b */
    public static List<dnv> m7705b(C3392os c3392os) {
        int m7712a = m7712a((InputStream) c3392os);
        if (m7712a < 0) {
            throw new IOException(new StringBuilder(31).append("readHeaderList size=").append(m7712a).toString());
        }
        ArrayList emptyList = m7712a == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < m7712a; i++) {
            emptyList.add(new dnv(m7715a(c3392os).intern(), m7715a(c3392os).intern()));
        }
        return emptyList;
    }

    /* renamed from: b */
    private final void m7703b(String str) {
        synchronized (this) {
            boolean delete = m7700d(str).delete();
            m7699e(str);
            if (!delete) {
                C3128ez.m7851b("Could not delete cache entry for key=%s, filename=%s", str, m7701c(str));
            }
        }
    }

    /* renamed from: c */
    private static int m7702c(InputStream inputStream) {
        int read = inputStream.read();
        if (read == -1) {
            throw new EOFException();
        }
        return read;
    }

    /* renamed from: c */
    private static String m7701c(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* renamed from: d */
    private final File m7700d(String str) {
        return new File(this.f16834c.mo6838a(), m7701c(str));
    }

    /* renamed from: e */
    private final void m7699e(String str) {
        C3314lv remove = this.f16832a.remove(str);
        if (remove != null) {
            this.f16833b -= remove.f16943a;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.internal.ads.AbstractC2759a
    /* renamed from: a */
    public final bzv mo7708a(String str) {
        bzv bzvVar;
        synchronized (this) {
            C3314lv c3314lv = this.f16832a.get(str);
            if (c3314lv == null) {
                bzvVar = null;
            } else {
                File m7700d = m7700d(str);
                try {
                    C3392os c3392os = new C3392os(new BufferedInputStream(m7713a(m7700d)), m7700d.length());
                    try {
                        C3314lv m7499a = C3314lv.m7499a(c3392os);
                        if (!TextUtils.equals(str, m7499a.f16944b)) {
                            C3128ez.m7851b("%s: key=%s, found=%s", m7700d.getAbsolutePath(), str, m7499a.f16944b);
                            m7699e(str);
                            c3392os.close();
                            bzvVar = null;
                        } else {
                            byte[] m7714a = m7714a(c3392os, c3392os.m7355a());
                            bzv bzvVar2 = new bzv();
                            bzvVar2.f12578a = m7714a;
                            bzvVar2.f12579b = c3314lv.f16945c;
                            bzvVar2.f12580c = c3314lv.f16946d;
                            bzvVar2.f12581d = c3314lv.f16947e;
                            bzvVar2.f12582e = c3314lv.f16948f;
                            bzvVar2.f12583f = c3314lv.f16949g;
                            List<dnv> list = c3314lv.f16950h;
                            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                            for (dnv dnvVar : list) {
                                treeMap.put(dnvVar.m9048a(), dnvVar.m9047b());
                            }
                            bzvVar2.f12584g = treeMap;
                            bzvVar2.f12585h = Collections.unmodifiableList(c3314lv.f16950h);
                            c3392os.close();
                            bzvVar = bzvVar2;
                        }
                    } catch (Throwable th) {
                        c3392os.close();
                        throw th;
                    }
                } catch (IOException e) {
                    C3128ez.m7851b("%s: %s", m7700d.getAbsolutePath(), e.toString());
                    m7703b(str);
                    bzvVar = null;
                }
            }
        }
        return bzvVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2759a
    /* renamed from: a */
    public final void mo7716a() {
        long length;
        C3392os c3392os;
        synchronized (this) {
            File mo6838a = this.f16834c.mo6838a();
            if (mo6838a.exists()) {
                File[] listFiles = mo6838a.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        try {
                            length = file.length();
                            c3392os = new C3392os(new BufferedInputStream(m7713a(file)), length);
                        } catch (IOException e) {
                            file.delete();
                        }
                        try {
                            C3314lv m7499a = C3314lv.m7499a(c3392os);
                            m7499a.f16943a = length;
                            m7706a(m7499a.f16944b, m7499a);
                            c3392os.close();
                        } catch (Throwable th) {
                            c3392os.close();
                            throw th;
                            break;
                        }
                    }
                }
            } else if (!mo6838a.mkdirs()) {
                C3128ez.m7850c("Unable to create cache dir %s", mo6838a.getAbsolutePath());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2759a
    /* renamed from: a */
    public final void mo7707a(String str, bzv bzvVar) {
        int i = 0;
        synchronized (this) {
            if (this.f16833b + bzvVar.f12578a.length <= this.f16835d || bzvVar.f12578a.length <= this.f16835d * 0.9f) {
                File m7700d = m7700d(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m7700d));
                    C3314lv c3314lv = new C3314lv(str, bzvVar);
                    if (!c3314lv.m7498a(bufferedOutputStream)) {
                        bufferedOutputStream.close();
                        C3128ez.m7851b("Failed to write header for %s", m7700d.getAbsolutePath());
                        throw new IOException();
                    }
                    bufferedOutputStream.write(bzvVar.f12578a);
                    bufferedOutputStream.close();
                    c3314lv.f16943a = m7700d.length();
                    m7706a(str, c3314lv);
                    if (this.f16833b >= this.f16835d) {
                        if (C3128ez.f16642a) {
                            C3128ez.m7853a("Pruning old cache entries.", new Object[0]);
                        }
                        long j = this.f16833b;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator<Map.Entry<String, C3314lv>> it = this.f16832a.entrySet().iterator();
                        do {
                            if (!it.hasNext()) {
                                break;
                            }
                            C3314lv value = it.next().getValue();
                            if (m7700d(value.f16944b).delete()) {
                                this.f16833b -= value.f16943a;
                            } else {
                                C3128ez.m7851b("Could not delete cache entry for key=%s, filename=%s", value.f16944b, m7701c(value.f16944b));
                            }
                            it.remove();
                            i++;
                        } while (((float) this.f16833b) >= this.f16835d * 0.9f);
                        if (C3128ez.f16642a) {
                            C3128ez.m7853a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f16833b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                        }
                    }
                } catch (IOException e) {
                    if (!m7700d.delete()) {
                        C3128ez.m7851b("Could not clean up file %s", m7700d.getAbsolutePath());
                    }
                }
            }
        }
    }
}

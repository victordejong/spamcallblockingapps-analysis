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
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wz3.class */
public final class wz3 implements py3 {

    /* renamed from: c */
    private final vz3 f31854c;

    /* renamed from: a */
    private final Map<String, tz3> f31852a = new LinkedHashMap(16, 0.75f, true);

    /* renamed from: b */
    private long f31853b = 0;

    /* renamed from: d */
    private final int f31855d = 5242880;

    public wz3(vz3 vz3Var, int i) {
        this.f31854c = vz3Var;
    }

    public wz3(File file, int i) {
        this.f31854c = new sz3(this, file);
    }

    /* renamed from: f */
    static byte[] m9406f(uz3 uz3Var, long j) {
        long m10149a = uz3Var.m10149a();
        if (j >= 0 && j <= m10149a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(uz3Var).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(m10149a);
        throw new IOException(sb.toString());
    }

    /* renamed from: g */
    static void m9405g(OutputStream outputStream, int i) {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: h */
    public static int m9404h(InputStream inputStream) {
        return (m9396p(inputStream) << 24) | m9396p(inputStream) | (m9396p(inputStream) << 8) | (m9396p(inputStream) << 16);
    }

    /* renamed from: i */
    static void m9403i(OutputStream outputStream, long j) {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: j */
    public static long m9402j(InputStream inputStream) {
        return (m9396p(inputStream) & 255) | ((m9396p(inputStream) & 255) << 8) | ((m9396p(inputStream) & 255) << 16) | ((m9396p(inputStream) & 255) << 24) | ((m9396p(inputStream) & 255) << 32) | ((m9396p(inputStream) & 255) << 40) | ((m9396p(inputStream) & 255) << 48) | ((255 & m9396p(inputStream)) << 56);
    }

    /* renamed from: k */
    static void m9401k(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        m9403i(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    /* renamed from: l */
    public static String m9400l(uz3 uz3Var) {
        return new String(m9406f(uz3Var, m9402j(uz3Var)), "UTF-8");
    }

    /* renamed from: m */
    private final void m9399m(String str, tz3 tz3Var) {
        if (!this.f31852a.containsKey(str)) {
            this.f31853b += tz3Var.f30436a;
        } else {
            this.f31853b += tz3Var.f30436a - this.f31852a.get(str).f30436a;
        }
        this.f31852a.put(str, tz3Var);
    }

    /* renamed from: o */
    private final void m9397o(String str) {
        tz3 remove = this.f31852a.remove(str);
        if (remove != null) {
            this.f31853b -= remove.f30436a;
        }
    }

    /* renamed from: p */
    private static int m9396p(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: q */
    private static final String m9395q(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.py3
    /* renamed from: a */
    public final void mo9411a(String str, oy3 oy3Var) {
        BufferedOutputStream bufferedOutputStream;
        tz3 tz3Var;
        synchronized (this) {
            long j = this.f31853b;
            int length = oy3Var.f27789a.length;
            int i = this.f31855d;
            if (j + length <= i || length <= i * 0.9f) {
                File m9407e = m9407e(str);
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m9407e));
                    tz3Var = new tz3(str, oy3Var);
                } catch (IOException e) {
                    if (!m9407e.delete()) {
                        mz3.m13039b("Could not clean up file %s", m9407e.getAbsolutePath());
                    }
                    if (!this.f31854c.zza().exists()) {
                        mz3.m13039b("Re-initializing cache after external clearing.", new Object[0]);
                        this.f31852a.clear();
                        this.f31853b = 0L;
                        mo9409c();
                        return;
                    }
                }
                try {
                    m9405g(bufferedOutputStream, 538247942);
                    m9401k(bufferedOutputStream, tz3Var.f30437b);
                    String str2 = tz3Var.f30438c;
                    String str3 = str2;
                    if (str2 == null) {
                        str3 = "";
                    }
                    m9401k(bufferedOutputStream, str3);
                    m9403i(bufferedOutputStream, tz3Var.f30439d);
                    m9403i(bufferedOutputStream, tz3Var.f30440e);
                    m9403i(bufferedOutputStream, tz3Var.f30441f);
                    m9403i(bufferedOutputStream, tz3Var.f30442g);
                    List<wy3> list = tz3Var.f30443h;
                    if (list != null) {
                        m9405g(bufferedOutputStream, list.size());
                        for (wy3 wy3Var : list) {
                            m9401k(bufferedOutputStream, wy3Var.m9415a());
                            m9401k(bufferedOutputStream, wy3Var.m9414b());
                        }
                    } else {
                        m9405g(bufferedOutputStream, 0);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.write(oy3Var.f27789a);
                    bufferedOutputStream.close();
                    tz3Var.f30436a = m9407e.length();
                    m9399m(str, tz3Var);
                    if (this.f31853b >= this.f31855d) {
                        if (mz3.f26925b) {
                            mz3.m13040a("Pruning old cache entries.", new Object[0]);
                        }
                        long j2 = this.f31853b;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator<Map.Entry<String, tz3>> it = this.f31852a.entrySet().iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            tz3 value = it.next().getValue();
                            if (m9407e(value.f30437b).delete()) {
                                this.f31853b -= value.f30436a;
                            } else {
                                String str4 = value.f30437b;
                                mz3.m13039b("Could not delete cache entry for key=%s, filename=%s", str4, m9395q(str4));
                            }
                            it.remove();
                            i2++;
                            if (((float) this.f31853b) < this.f31855d * 0.9f) {
                                break;
                            }
                        }
                        if (mz3.f26925b) {
                            mz3.m13040a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f31853b - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                        }
                    }
                } catch (IOException e2) {
                    mz3.m13039b("%s", e2.toString());
                    bufferedOutputStream.close();
                    mz3.m13039b("Failed to write header for %s", m9407e.getAbsolutePath());
                    throw new IOException();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.py3
    /* renamed from: b */
    public final void mo9410b(String str, boolean z) {
        synchronized (this) {
            oy3 mo9398n = mo9398n(str);
            if (mo9398n != null) {
                mo9398n.f27794f = 0L;
                mo9398n.f27793e = 0L;
                mo9411a(str, mo9398n);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.py3
    /* renamed from: c */
    public final void mo9409c() {
        long length;
        uz3 uz3Var;
        synchronized (this) {
            File zza = this.f31854c.zza();
            if (!zza.exists()) {
                if (zza.mkdirs()) {
                    return;
                }
                mz3.m13038c("Unable to create cache dir %s", zza.getAbsolutePath());
                return;
            }
            File[] listFiles = zza.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    length = file.length();
                    uz3Var = new uz3(new BufferedInputStream(new FileInputStream(file)), length);
                } catch (IOException e) {
                    file.delete();
                }
                try {
                    tz3 m10452a = tz3.m10452a(uz3Var);
                    m10452a.f30436a = length;
                    m9399m(m10452a.f30437b, m10452a);
                    uz3Var.close();
                } catch (Throwable th) {
                    uz3Var.close();
                    throw th;
                    break;
                }
            }
        }
    }

    /* renamed from: d */
    public final void m9408d(String str) {
        synchronized (this) {
            boolean delete = m9407e(str).delete();
            m9397o(str);
            if (!delete) {
                mz3.m13039b("Could not delete cache entry for key=%s, filename=%s", str, m9395q(str));
            }
        }
    }

    /* renamed from: e */
    public final File m9407e(String str) {
        return new File(this.f31854c.zza(), m9395q(str));
    }

    @Override // com.google.android.gms.internal.ads.py3
    /* renamed from: n */
    public final oy3 mo9398n(String str) {
        synchronized (this) {
            tz3 tz3Var = this.f31852a.get(str);
            if (tz3Var == null) {
                return null;
            }
            File m9407e = m9407e(str);
            try {
                uz3 uz3Var = new uz3(new BufferedInputStream(new FileInputStream(m9407e)), m9407e.length());
                try {
                    tz3 m10452a = tz3.m10452a(uz3Var);
                    if (!TextUtils.equals(str, m10452a.f30437b)) {
                        mz3.m13039b("%s: key=%s, found=%s", m9407e.getAbsolutePath(), str, m10452a.f30437b);
                        m9397o(str);
                        return null;
                    }
                    byte[] m9406f = m9406f(uz3Var, uz3Var.m10149a());
                    oy3 oy3Var = new oy3();
                    oy3Var.f27789a = m9406f;
                    oy3Var.f27790b = tz3Var.f30438c;
                    oy3Var.f27791c = tz3Var.f30439d;
                    oy3Var.f27792d = tz3Var.f30440e;
                    oy3Var.f27793e = tz3Var.f30441f;
                    oy3Var.f27794f = tz3Var.f30442g;
                    List<wy3> list = tz3Var.f30443h;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (wy3 wy3Var : list) {
                        treeMap.put(wy3Var.m9415a(), wy3Var.m9414b());
                    }
                    oy3Var.f27795g = treeMap;
                    oy3Var.f27796h = Collections.unmodifiableList(tz3Var.f30443h);
                    return oy3Var;
                } finally {
                    uz3Var.close();
                }
            } catch (IOException e) {
                mz3.m13039b("%s: %s", m9407e.getAbsolutePath(), e.toString());
                m9408d(str);
                return null;
            }
        }
    }
}

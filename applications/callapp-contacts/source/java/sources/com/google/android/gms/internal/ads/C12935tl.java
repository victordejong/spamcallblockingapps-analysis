package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
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
/* renamed from: com.google.android.gms.internal.ads.tl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tl.class */
public final class C12935tl implements dxu {

    /* renamed from: a */
    private final Map<String, C12988vk> f49878a;

    /* renamed from: b */
    private long f49879b;

    /* renamed from: c */
    private final AbstractC13045xl f49880c;

    /* renamed from: d */
    private final int f49881d;

    public C12935tl(AbstractC13045xl abstractC13045xl) {
        this(abstractC13045xl, 5242880);
    }

    private C12935tl(AbstractC13045xl abstractC13045xl, int i) {
        this.f49878a = new LinkedHashMap(16, 0.75f, true);
        this.f49879b = 0L;
        this.f49880c = abstractC13045xl;
        this.f49881d = 5242880;
    }

    public C12935tl(File file, int i) {
        this.f49878a = new LinkedHashMap(16, 0.75f, true);
        this.f49879b = 0L;
        this.f49880c = new C13015wk(this, file);
        this.f49881d = 20971520;
    }

    /* renamed from: a */
    public static int m14170a(InputStream inputStream) throws IOException {
        return (m14160c(inputStream) << 24) | m14160c(inputStream) | 0 | (m14160c(inputStream) << 8) | (m14160c(inputStream) << 16);
    }

    /* renamed from: a */
    private static InputStream m14171a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* renamed from: a */
    public static String m14173a(C13073ym c13073ym) throws IOException {
        return new String(m14172a(c13073ym, m14162b((InputStream) c13073ym)), "UTF-8");
    }

    /* renamed from: a */
    public static void m14169a(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    /* renamed from: a */
    public static void m14168a(OutputStream outputStream, long j) throws IOException {
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
    public static void m14167a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        m14168a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    private final void m14164a(String str, C12988vk c12988vk) {
        if (!this.f49878a.containsKey(str)) {
            this.f49879b += c12988vk.f49908a;
        } else {
            this.f49879b += c12988vk.f49908a - this.f49878a.get(str).f49908a;
        }
        this.f49878a.put(str, c12988vk);
    }

    /* renamed from: a */
    private static byte[] m14172a(C13073ym c13073ym, long j) throws IOException {
        long m13958a = c13073ym.m13958a();
        if (j >= 0 && j <= m13958a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(c13073ym).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(m13958a);
        throw new IOException(sb.toString());
    }

    /* renamed from: b */
    public static long m14162b(InputStream inputStream) throws IOException {
        return (m14160c(inputStream) & 255) | 0 | ((m14160c(inputStream) & 255) << 8) | ((m14160c(inputStream) & 255) << 16) | ((m14160c(inputStream) & 255) << 24) | ((m14160c(inputStream) & 255) << 32) | ((m14160c(inputStream) & 255) << 40) | ((m14160c(inputStream) & 255) << 48) | ((255 & m14160c(inputStream)) << 56);
    }

    /* renamed from: b */
    public static List<eim> m14163b(C13073ym c13073ym) throws IOException {
        int m14170a = m14170a((InputStream) c13073ym);
        if (m14170a < 0) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("readHeaderList size=");
            sb.append(m14170a);
            throw new IOException(sb.toString());
        }
        ArrayList emptyList = m14170a == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < m14170a; i++) {
            emptyList.add(new eim(m14173a(c13073ym).intern(), m14173a(c13073ym).intern()));
        }
        return emptyList;
    }

    /* renamed from: c */
    private static int m14160c(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: c */
    private final void m14159c(String str) {
        synchronized (this) {
            boolean delete = m14157e(str).delete();
            m14156f(str);
            if (!delete) {
                C12759mz.m14480b("Could not delete cache entry for key=%s, filename=%s", str, m14158d(str));
            }
        }
    }

    /* renamed from: d */
    private static String m14158d(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* renamed from: e */
    private final File m14157e(String str) {
        return new File(this.f49880c.mo14003a(), m14158d(str));
    }

    /* renamed from: f */
    private final void m14156f(String str) {
        C12988vk remove = this.f49878a.remove(str);
        if (remove != null) {
            this.f49879b -= remove.f49908a;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    /* renamed from: a */
    public final eap mo14166a(String str) {
        synchronized (this) {
            C12988vk c12988vk = this.f49878a.get(str);
            if (c12988vk == null) {
                return null;
            }
            File m14157e = m14157e(str);
            try {
                C13073ym c13073ym = new C13073ym(new BufferedInputStream(m14171a(m14157e)), m14157e.length());
                try {
                    C12988vk m14084a = C12988vk.m14084a(c13073ym);
                    if (!TextUtils.equals(str, m14084a.f49909b)) {
                        C12759mz.m14480b("%s: key=%s, found=%s", m14157e.getAbsolutePath(), str, m14084a.f49909b);
                        m14156f(str);
                        return null;
                    }
                    byte[] m14172a = m14172a(c13073ym, c13073ym.m13958a());
                    eap eapVar = new eap();
                    eapVar.f48516a = m14172a;
                    eapVar.f48517b = c12988vk.f49910c;
                    eapVar.f48518c = c12988vk.f49911d;
                    eapVar.f48519d = c12988vk.f49912e;
                    eapVar.f48520e = c12988vk.f49913f;
                    eapVar.f48521f = c12988vk.f49914g;
                    List<eim> list = c12988vk.f49915h;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (eim eimVar : list) {
                        treeMap.put(eimVar.f49055a, eimVar.f49056b);
                    }
                    eapVar.f48522g = treeMap;
                    eapVar.f48523h = Collections.unmodifiableList(c12988vk.f49915h);
                    return eapVar;
                } finally {
                    c13073ym.close();
                }
            } catch (IOException e) {
                C12759mz.m14480b("%s: %s", m14157e.getAbsolutePath(), e.toString());
                m14159c(str);
                return null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    /* renamed from: a */
    public final void mo14174a() {
        synchronized (this) {
            File mo14003a = this.f49880c.mo14003a();
            if (!mo14003a.exists()) {
                if (!mo14003a.mkdirs()) {
                    C12759mz.m14479c("Unable to create cache dir %s", mo14003a.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = mo14003a.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    long length = file.length();
                    C13073ym c13073ym = new C13073ym(new BufferedInputStream(m14171a(file)), length);
                    try {
                        C12988vk m14084a = C12988vk.m14084a(c13073ym);
                        m14084a.f49908a = length;
                        m14164a(m14084a.f49909b, m14084a);
                        c13073ym.close();
                    } catch (Throwable th) {
                        c13073ym.close();
                        throw th;
                        break;
                    }
                } catch (IOException e) {
                    file.delete();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    /* renamed from: a */
    public final void mo14165a(String str, eap eapVar) {
        synchronized (this) {
            if (this.f49879b + eapVar.f48516a.length <= this.f49881d || eapVar.f48516a.length <= this.f49881d * 0.9f) {
                File m14157e = m14157e(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m14157e));
                    C12988vk c12988vk = new C12988vk(str, eapVar);
                    if (!c12988vk.m14083a(bufferedOutputStream)) {
                        bufferedOutputStream.close();
                        C12759mz.m14480b("Failed to write header for %s", m14157e.getAbsolutePath());
                        throw new IOException();
                    }
                    bufferedOutputStream.write(eapVar.f48516a);
                    bufferedOutputStream.close();
                    c12988vk.f49908a = m14157e.length();
                    m14164a(str, c12988vk);
                    if (this.f49879b >= this.f49881d) {
                        if (C12759mz.f49560a) {
                            C12759mz.m14482a("Pruning old cache entries.", new Object[0]);
                        }
                        long j = this.f49879b;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator<Map.Entry<String, C12988vk>> it2 = this.f49878a.entrySet().iterator();
                        int i = 0;
                        while (it2.hasNext()) {
                            C12988vk value = it2.next().getValue();
                            if (m14157e(value.f49909b).delete()) {
                                this.f49879b -= value.f49908a;
                            } else {
                                C12759mz.m14480b("Could not delete cache entry for key=%s, filename=%s", value.f49909b, m14158d(value.f49909b));
                            }
                            it2.remove();
                            i++;
                            if (((float) this.f49879b) < this.f49881d * 0.9f) {
                                break;
                            }
                        }
                        if (C12759mz.f49560a) {
                            C12759mz.m14482a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f49879b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                        }
                    }
                } catch (IOException e) {
                    if (!m14157e.delete()) {
                        C12759mz.m14480b("Could not clean up file %s", m14157e.getAbsolutePath());
                    }
                    if (!this.f49880c.mo14003a().exists()) {
                        C12759mz.m14480b("Re-initializing cache after external clearing.", new Object[0]);
                        this.f49878a.clear();
                        this.f49879b = 0L;
                        mo14174a();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    /* renamed from: b */
    public final void mo14161b(String str) {
        synchronized (this) {
            eap mo14166a = mo14166a(str);
            if (mo14166a != null) {
                mo14166a.f48521f = 0L;
                mo14166a.f48520e = 0L;
                mo14165a(str, mo14166a);
            }
        }
    }
}

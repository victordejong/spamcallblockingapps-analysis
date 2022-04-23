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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tl.class */
public final class tl implements dxu {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, vk> f28406a;

    /* renamed from: b  reason: collision with root package name */
    private long f28407b;

    /* renamed from: c  reason: collision with root package name */
    private final xl f28408c;

    /* renamed from: d  reason: collision with root package name */
    private final int f28409d;

    public tl(xl xlVar) {
        this(xlVar, 5242880);
    }

    private tl(xl xlVar, int i) {
        this.f28406a = new LinkedHashMap(16, 0.75f, true);
        this.f28407b = 0L;
        this.f28408c = xlVar;
        this.f28409d = 5242880;
    }

    public tl(File file, int i) {
        this.f28406a = new LinkedHashMap(16, 0.75f, true);
        this.f28407b = 0L;
        this.f28408c = new wk(this, file);
        this.f28409d = 20971520;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(InputStream inputStream) throws IOException {
        return (c(inputStream) << 24) | c(inputStream) | 0 | (c(inputStream) << 8) | (c(inputStream) << 16);
    }

    private static InputStream a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ym ymVar) throws IOException {
        return new String(a(ymVar, b((InputStream) ymVar)), "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private final void a(String str, vk vkVar) {
        if (!this.f28406a.containsKey(str)) {
            this.f28407b += vkVar.f28430a;
        } else {
            this.f28407b += vkVar.f28430a - this.f28406a.get(str).f28430a;
        }
        this.f28406a.put(str, vkVar);
    }

    private static byte[] a(ym ymVar, long j) throws IOException {
        long a2 = ymVar.a();
        if (j >= 0 && j <= a2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(ymVar).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(a2);
        throw new IOException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(InputStream inputStream) throws IOException {
        return (c(inputStream) & 255) | 0 | ((c(inputStream) & 255) << 8) | ((c(inputStream) & 255) << 16) | ((c(inputStream) & 255) << 24) | ((c(inputStream) & 255) << 32) | ((c(inputStream) & 255) << 40) | ((c(inputStream) & 255) << 48) | ((255 & c(inputStream)) << 56);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<eim> b(ym ymVar) throws IOException {
        int a2 = a((InputStream) ymVar);
        if (a2 >= 0) {
            List<eim> emptyList = a2 == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < a2; i++) {
                emptyList.add(new eim(a(ymVar).intern(), a(ymVar).intern()));
            }
            return emptyList;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("readHeaderList size=");
        sb.append(a2);
        throw new IOException(sb.toString());
    }

    private static int c(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private final void c(String str) {
        synchronized (this) {
            boolean delete = e(str).delete();
            f(str);
            if (!delete) {
                mz.b("Could not delete cache entry for key=%s, filename=%s", str, d(str));
            }
        }
    }

    private static String d(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String valueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private final File e(String str) {
        return new File(this.f28408c.a(), d(str));
    }

    private final void f(String str) {
        vk remove = this.f28406a.remove(str);
        if (remove != null) {
            this.f28407b -= remove.f28430a;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    public final eap a(String str) {
        synchronized (this) {
            vk vkVar = this.f28406a.get(str);
            if (vkVar == null) {
                return null;
            }
            File e = e(str);
            try {
                ym ymVar = new ym(new BufferedInputStream(a(e)), e.length());
                try {
                    vk a2 = vk.a(ymVar);
                    if (!TextUtils.equals(str, a2.f28431b)) {
                        mz.b("%s: key=%s, found=%s", e.getAbsolutePath(), str, a2.f28431b);
                        f(str);
                        return null;
                    }
                    byte[] a3 = a(ymVar, ymVar.a());
                    eap eapVar = new eap();
                    eapVar.f27534a = a3;
                    eapVar.f27535b = vkVar.f28432c;
                    eapVar.f27536c = vkVar.f28433d;
                    eapVar.f27537d = vkVar.e;
                    eapVar.e = vkVar.f;
                    eapVar.f = vkVar.g;
                    List<eim> list = vkVar.h;
                    TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                    for (eim eimVar : list) {
                        treeMap.put(eimVar.f27864a, eimVar.f27865b);
                    }
                    eapVar.g = treeMap;
                    eapVar.h = Collections.unmodifiableList(vkVar.h);
                    return eapVar;
                } finally {
                    ymVar.close();
                }
            } catch (IOException e2) {
                mz.b("%s: %s", e.getAbsolutePath(), e2.toString());
                c(str);
                return null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    public final void a() {
        synchronized (this) {
            File a2 = this.f28408c.a();
            if (!a2.exists()) {
                if (!a2.mkdirs()) {
                    mz.c("Unable to create cache dir %s", a2.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = a2.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        ym ymVar = new ym(new BufferedInputStream(a(file)), length);
                        try {
                            vk a3 = vk.a(ymVar);
                            a3.f28430a = length;
                            a(a3.f28431b, a3);
                            ymVar.close();
                        } catch (Throwable th) {
                            ymVar.close();
                            throw th;
                            break;
                        }
                    } catch (IOException e) {
                        file.delete();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    public final void a(String str, eap eapVar) {
        synchronized (this) {
            if (this.f28407b + eapVar.f27534a.length <= this.f28409d || eapVar.f27534a.length <= this.f28409d * 0.9f) {
                File e = e(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(e));
                    vk vkVar = new vk(str, eapVar);
                    if (vkVar.a(bufferedOutputStream)) {
                        bufferedOutputStream.write(eapVar.f27534a);
                        bufferedOutputStream.close();
                        vkVar.f28430a = e.length();
                        a(str, vkVar);
                        if (this.f28407b >= this.f28409d) {
                            if (mz.f28207a) {
                                mz.a("Pruning old cache entries.", new Object[0]);
                            }
                            long j = this.f28407b;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator<Map.Entry<String, vk>> it2 = this.f28406a.entrySet().iterator();
                            int i = 0;
                            while (it2.hasNext()) {
                                vk value = it2.next().getValue();
                                if (e(value.f28431b).delete()) {
                                    this.f28407b -= value.f28430a;
                                } else {
                                    mz.b("Could not delete cache entry for key=%s, filename=%s", value.f28431b, d(value.f28431b));
                                }
                                it2.remove();
                                i++;
                                if (((float) this.f28407b) < this.f28409d * 0.9f) {
                                    break;
                                }
                            }
                            if (mz.f28207a) {
                                mz.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f28407b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                        return;
                    }
                    bufferedOutputStream.close();
                    mz.b("Failed to write header for %s", e.getAbsolutePath());
                    throw new IOException();
                } catch (IOException e2) {
                    if (!e.delete()) {
                        mz.b("Could not clean up file %s", e.getAbsolutePath());
                    }
                    if (!this.f28408c.a().exists()) {
                        mz.b("Re-initializing cache after external clearing.", new Object[0]);
                        this.f28406a.clear();
                        this.f28407b = 0L;
                        a();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxu
    public final void b(String str) {
        synchronized (this) {
            eap a2 = a(str);
            if (a2 != null) {
                a2.f = 0L;
                a2.e = 0L;
                a(str, a2);
            }
        }
    }
}

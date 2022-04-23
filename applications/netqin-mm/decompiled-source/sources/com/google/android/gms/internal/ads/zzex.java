package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzcf;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p131c.p161d.p170b.p224d.p252g.p253a.C3364aq;
import p131c.p161d.p170b.p224d.p252g.p253a.eb0;
import p131c.p161d.p170b.p224d.p252g.p253a.gb0;
import p131c.p161d.p170b.p224d.p252g.p253a.hb0;
import p131c.p161d.p170b.p224d.p252g.p253a.ib0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzex.class */
public class zzex {

    /* renamed from: r */
    public static final String f28156r = "zzex";

    /* renamed from: a */
    public Context f28157a;

    /* renamed from: b */
    public ExecutorService f28158b;

    /* renamed from: c */
    public DexClassLoader f28159c;

    /* renamed from: d */
    public zzei f28160d;

    /* renamed from: e */
    public byte[] f28161e;

    /* renamed from: i */
    public boolean f28165i;

    /* renamed from: l */
    public zzdu f28168l;

    /* renamed from: o */
    public Map<Pair<String, String>, zzgk> f28171o;

    /* renamed from: q */
    public zzev f28173q;

    /* renamed from: f */
    public volatile AdvertisingIdClient f28162f = null;

    /* renamed from: g */
    public volatile boolean f28163g = false;

    /* renamed from: h */
    public Future f28164h = null;

    /* renamed from: j */
    public volatile zzcf.zza f28166j = null;

    /* renamed from: k */
    public Future f28167k = null;

    /* renamed from: m */
    public boolean f28169m = false;

    /* renamed from: n */
    public boolean f28170n = false;

    /* renamed from: p */
    public boolean f28172p = false;

    public zzex(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        z = applicationContext != null ? true : z;
        this.f28165i = z;
        this.f28157a = z ? applicationContext : context;
        this.f28171o = new HashMap();
        if (this.f28173q == null) {
            this.f28173q = new zzev(this.f28157a);
        }
    }

    /* renamed from: a */
    public static zzex m12174a(Context context, String str, String str2, boolean z) {
        zzex zzexVar = new zzex(context);
        try {
            zzexVar.f28158b = Executors.newCachedThreadPool(new gb0());
            zzexVar.f28163g = z;
            if (z) {
                zzexVar.f28164h = zzexVar.f28158b.submit(new eb0(zzexVar));
            }
            zzexVar.f28158b.execute(new hb0(zzexVar));
            try {
                GoogleApiAvailabilityLight a = GoogleApiAvailabilityLight.m17812a();
                zzexVar.f28169m = a.m17803b(zzexVar.f28157a) > 0;
                zzexVar.f28170n = a.mo17799c(zzexVar.f28157a) == 0;
            } catch (Throwable th) {
            }
            zzexVar.m12175a(0, true);
            if (zzfg.m12143a() && ((Boolean) zzwm.m11166e().m16921a(zzabb.f23852m1)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            zzei zzeiVar = new zzei(null);
            zzexVar.f28160d = zzeiVar;
            try {
                zzexVar.f28161e = zzeiVar.m12538a(str);
                try {
                    try {
                        File cacheDir = zzexVar.f28157a.getCacheDir();
                        File file = cacheDir;
                        if (cacheDir == null) {
                            file = zzexVar.f28157a.getDir("dex", 0);
                            if (file == null) {
                                throw new zzeu();
                            }
                        }
                        File file2 = new File(String.format("%s/%s.jar", file, "1588462714860"));
                        if (!file2.exists()) {
                            byte[] a2 = zzexVar.f28160d.m12537a(zzexVar.f28161e, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(a2, 0, a2.length);
                            fileOutputStream.close();
                        }
                        zzexVar.m12163b(file, "1588462714860");
                        try {
                            zzexVar.f28159c = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, zzexVar.f28157a.getClassLoader());
                            m12171a(file2);
                            zzexVar.m12170a(file, "1588462714860");
                            m12169a(String.format("%s/%s.dex", file, "1588462714860"));
                            zzexVar.f28168l = new zzdu(zzexVar);
                            zzexVar.f28172p = true;
                        } catch (Throwable th2) {
                            m12171a(file2);
                            zzexVar.m12170a(file, "1588462714860");
                            m12169a(String.format("%s/%s.dex", file, "1588462714860"));
                            throw th2;
                        }
                    } catch (FileNotFoundException e) {
                        throw new zzeu(e);
                    } catch (NullPointerException e2) {
                        throw new zzeu(e2);
                    }
                } catch (zzeh e3) {
                    throw new zzeu(e3);
                } catch (IOException e4) {
                    throw new zzeu(e4);
                }
            } catch (zzeh e5) {
                throw new zzeu(e5);
            }
        } catch (zzeu e6) {
        }
        return zzexVar;
    }

    /* renamed from: a */
    public static void m12171a(File file) {
        if (!file.exists()) {
            Log.d(f28156r, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }

    /* renamed from: a */
    public static void m12169a(String str) {
        m12171a(new File(str));
    }

    /* renamed from: a */
    public static boolean m12176a(int i, zzcf.zza zzaVar) {
        if (i < 4) {
            return zzaVar == null || !zzaVar.m14560n() || zzaVar.m14563m().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzaVar.m14545s() || !zzaVar.m14542t().m14375m() || zzaVar.m14542t().m14374n() == -2;
        }
        return false;
    }

    /* renamed from: a */
    public final Context m12177a() {
        return this.f28157a;
    }

    /* renamed from: a */
    public final Method m12168a(String str, String str2) {
        zzgk zzgkVar = this.f28171o.get(new Pair(str, str2));
        if (zzgkVar == null) {
            return null;
        }
        return zzgkVar.m12120b();
    }

    /* renamed from: a */
    public final void m12175a(int i, boolean z) {
        if (this.f28170n) {
            Future<?> submit = this.f28158b.submit(new ib0(this, i, z));
            if (i == 0) {
                this.f28167k = submit;
            }
        }
    }

    /* renamed from: a */
    public final void m12170a(File file, String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            File file3 = new File(String.format("%s/%s.dex", file, str));
            if (file3.exists()) {
                long length = file3.length();
                if (length > 0) {
                    byte[] bArr = new byte[(int) length];
                    FileInputStream fileInputStream = null;
                    FileInputStream fileInputStream2 = null;
                    try {
                        fileInputStream2 = new FileInputStream(file3);
                        try {
                            if (fileInputStream2.read(bArr) <= 0) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e) {
                                }
                                m12171a(file3);
                                return;
                            }
                            System.out.print("test");
                            System.out.print("test");
                            System.out.print("test");
                            zzcf.zzc.zza q = zzcf.zzc.m14381q();
                            q.m14376d(zzeip.zzu(Build.VERSION.SDK.getBytes()));
                            q.m14377c(zzeip.zzu(str.getBytes()));
                            byte[] bytes = this.f28160d.m12536a(this.f28161e, bArr).getBytes();
                            q.m14379a(zzeip.zzu(bytes));
                            q.m14378b(zzeip.zzu(C3364aq.m27187a(bytes)));
                            file2.createNewFile();
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                byte[] c = ((zzcf.zzc) ((zzejz) q.mo12342K())).mo12349c();
                                fileOutputStream.write(c, 0, c.length);
                                fileOutputStream.close();
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e2) {
                                }
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                }
                                m12171a(file3);
                            } catch (zzeh | IOException | NoSuchAlgorithmException e4) {
                                fileInputStream = fileInputStream2;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e5) {
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e6) {
                                    }
                                }
                                m12171a(file3);
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream2 = fileOutputStream;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e8) {
                                    }
                                }
                                m12171a(file3);
                                throw th;
                            }
                        } catch (zzeh | IOException | NoSuchAlgorithmException e9) {
                            fileOutputStream = null;
                        } catch (Throwable th3) {
                            th = th3;
                            fileOutputStream2 = null;
                        }
                    } catch (zzeh | IOException | NoSuchAlgorithmException e10) {
                        fileOutputStream = null;
                    } catch (Throwable th4) {
                        th = th4;
                        fileOutputStream2 = null;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m12167a(String str, String str2, Class<?>... clsArr) {
        if (this.f28171o.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.f28171o.put(new Pair<>(str, str2), new zzgk(this, str, str2, clsArr));
        return true;
    }

    /* renamed from: b */
    public final zzcf.zza m12164b(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return m12149p();
    }

    /* renamed from: b */
    public final boolean m12166b() {
        return this.f28172p;
    }

    /* renamed from: b */
    public final boolean m12163b(File file, String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        FileInputStream fileInputStream = null;
        fileInputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                m12171a(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                if (fileInputStream.read(bArr) <= 0) {
                    Log.d(f28156r, "Cannot read the cache data.");
                    m12171a(file2);
                    try {
                        fileInputStream.close();
                        return false;
                    } catch (IOException e) {
                        return false;
                    }
                } else {
                    zzcf.zzc a = zzcf.zzc.m14392a(bArr, zzejm.m12417b());
                    if (str.equals(new String(a.m14383o().toByteArray())) && Arrays.equals(a.m14384n().toByteArray(), C3364aq.m27187a(a.m14385m().toByteArray())) && Arrays.equals(a.m14382p().toByteArray(), Build.VERSION.SDK.getBytes())) {
                        byte[] a2 = this.f28160d.m12537a(this.f28161e, new String(a.m14385m().toByteArray()));
                        file3.createNewFile();
                        fileOutputStream = new FileOutputStream(file3);
                        try {
                            fileOutputStream.write(a2, 0, a2.length);
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                            }
                            try {
                                fileOutputStream.close();
                                return true;
                            } catch (IOException e3) {
                                return true;
                            }
                        } catch (zzeh | IOException | NoSuchAlgorithmException e4) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e5) {
                                }
                            }
                            if (fileOutputStream == null) {
                                return false;
                            }
                            try {
                                fileOutputStream.close();
                                return false;
                            } catch (IOException e6) {
                                return false;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream2 = fileOutputStream;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e7) {
                                }
                            }
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e8) {
                                }
                            }
                            throw th;
                        }
                    }
                    m12171a(file2);
                    try {
                        fileInputStream.close();
                        return false;
                    } catch (IOException e9) {
                        return false;
                    }
                }
            } catch (zzeh | IOException | NoSuchAlgorithmException e10) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzeh | IOException | NoSuchAlgorithmException e11) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
        }
    }

    /* renamed from: c */
    public final int m12162c() {
        return this.f28168l != null ? zzdu.m13182a() : Integer.MIN_VALUE;
    }

    /* renamed from: d */
    public final boolean m12161d() {
        return this.f28173q.m12178a();
    }

    /* renamed from: e */
    public final ExecutorService m12160e() {
        return this.f28158b;
    }

    /* renamed from: f */
    public final DexClassLoader m12159f() {
        return this.f28159c;
    }

    /* renamed from: g */
    public final zzei m12158g() {
        return this.f28160d;
    }

    /* renamed from: h */
    public final byte[] m12157h() {
        return this.f28161e;
    }

    /* renamed from: i */
    public final boolean m12156i() {
        return this.f28169m;
    }

    /* renamed from: j */
    public final zzdu m12155j() {
        return this.f28168l;
    }

    /* renamed from: k */
    public final boolean m12154k() {
        return this.f28170n;
    }

    /* renamed from: l */
    public final zzev m12153l() {
        return this.f28173q;
    }

    /* renamed from: m */
    public final zzcf.zza m12152m() {
        return this.f28166j;
    }

    /* renamed from: n */
    public final Future m12151n() {
        return this.f28167k;
    }

    /* renamed from: o */
    public final void m12150o() {
        try {
            if (this.f28162f == null && this.f28165i) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.f28157a);
                advertisingIdClient.start();
                this.f28162f = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            this.f28162f = null;
        }
    }

    /* renamed from: p */
    public final zzcf.zza m12149p() {
        zzcf.zza zzaVar;
        try {
            zzaVar = zzdtj.m13201a(this.f28157a, this.f28157a.getPackageName(), Integer.toString(this.f28157a.getPackageManager().getPackageInfo(this.f28157a.getPackageName(), 0).versionCode));
        } catch (Throwable th) {
            zzaVar = null;
        }
        return zzaVar;
    }

    /* renamed from: q */
    public final AdvertisingIdClient m12148q() {
        if (!this.f28163g) {
            return null;
        }
        if (this.f28162f != null) {
            return this.f28162f;
        }
        Future future = this.f28164h;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.f28164h = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.f28164h.cancel(true);
            }
        }
        return this.f28162f;
    }
}

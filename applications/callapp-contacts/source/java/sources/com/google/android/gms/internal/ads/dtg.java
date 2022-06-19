package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.beb;
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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtg.class */
public class dtg {

    /* renamed from: m */
    private static final String f47546m = "dtg";

    /* renamed from: a */
    protected Context f47547a;

    /* renamed from: b */
    ExecutorService f47548b;

    /* renamed from: c */
    DexClassLoader f47549c;

    /* renamed from: d */
    dkf f47550d;

    /* renamed from: e */
    byte[] f47551e;

    /* renamed from: h */
    cwd f47554h;

    /* renamed from: l */
    zzfa f47558l;

    /* renamed from: q */
    private boolean f47562q;

    /* renamed from: r */
    private Map<Pair<String, String>, duq> f47563r;

    /* renamed from: n */
    private volatile AdvertisingIdClient f47559n = null;

    /* renamed from: o */
    private volatile boolean f47560o = false;

    /* renamed from: p */
    private Future f47561p = null;

    /* renamed from: f */
    volatile beb.C12217a f47552f = null;

    /* renamed from: g */
    Future f47553g = null;

    /* renamed from: i */
    boolean f47555i = false;

    /* renamed from: j */
    boolean f47556j = false;

    /* renamed from: k */
    boolean f47557k = false;

    private dtg(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        z = applicationContext != null ? true : z;
        this.f47562q = z;
        this.f47547a = z ? applicationContext : context;
        this.f47563r = new HashMap();
        if (this.f47558l == null) {
            this.f47558l = new zzfa(this.f47547a);
        }
    }

    /* renamed from: a */
    public static dtg m15738a(Context context, String str, String str2, boolean z) {
        dtg dtgVar = new dtg(context);
        try {
            dtgVar.f47548b = Executors.newCachedThreadPool(new dtf());
            dtgVar.f47560o = z;
            if (z) {
                dtgVar.f47561p = dtgVar.f47548b.submit(new dti(dtgVar));
            }
            dtgVar.f47548b.execute(new dtk(dtgVar));
            try {
                C11941c m19271b = C11941c.m19271b();
                dtgVar.f47555i = C11941c.m19268c(dtgVar.f47547a) > 0;
                dtgVar.f47556j = m19271b.mo19275a(dtgVar.f47547a) == 0;
            } catch (Throwable th) {
            }
            dtgVar.m15739a(0, true);
            if (dtl.m15724a() && ((Boolean) ekb.m14831e().m18571a(C12187aq.f42697bG)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            dkf dkfVar = new dkf(null);
            dtgVar.f47550d = dkfVar;
            try {
                dtgVar.f47551e = dkfVar.m16541a(str);
                try {
                    try {
                        File cacheDir = dtgVar.f47547a.getCacheDir();
                        File file = cacheDir;
                        if (cacheDir == null) {
                            file = dtgVar.f47547a.getDir("dex", 0);
                            if (file == null) {
                                throw new zzev();
                            }
                        }
                        File file2 = new File(String.format("%s/%s.jar", file, "1610724645094"));
                        if (!file2.exists()) {
                            byte[] m16540a = dtgVar.f47550d.m16540a(dtgVar.f47551e, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(m16540a, 0, m16540a.length);
                            fileOutputStream.close();
                        }
                        dtgVar.m15728b(file, "1610724645094");
                        try {
                            dtgVar.f47549c = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, dtgVar.f47547a.getClassLoader());
                            m15735a(file2);
                            dtgVar.m15734a(file, "1610724645094");
                            m15733a(String.format("%s/%s.dex", file, "1610724645094"));
                            dtgVar.f47554h = new cwd(dtgVar);
                            dtgVar.f47557k = true;
                        } catch (Throwable th2) {
                            m15735a(file2);
                            dtgVar.m15734a(file, "1610724645094");
                            m15733a(String.format("%s/%s.dex", file, "1610724645094"));
                            throw th2;
                        }
                    } catch (FileNotFoundException e) {
                        throw new zzev(e);
                    } catch (NullPointerException e2) {
                        throw new zzev(e2);
                    }
                } catch (zzej e3) {
                    throw new zzev(e3);
                } catch (IOException e4) {
                    throw new zzev(e4);
                }
            } catch (zzej e5) {
                throw new zzev(e5);
            }
        } catch (zzev e6) {
        }
        return dtgVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m15737a(dtg dtgVar) {
        try {
            if (dtgVar.f47559n != null || !dtgVar.f47562q) {
                return;
            }
            AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(dtgVar.f47547a);
            advertisingIdClient.start();
            dtgVar.f47559n = advertisingIdClient;
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            dtgVar.f47559n = null;
        }
    }

    /* renamed from: a */
    private static void m15735a(File file) {
        if (!file.exists()) {
            String.format("File %s not found. No need for deletion", file.getAbsolutePath());
        } else {
            file.delete();
        }
    }

    /* renamed from: a */
    private final void m15734a(File file, String str) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        try {
            fileInputStream2 = new FileInputStream(file3);
            try {
                if (fileInputStream2.read(bArr) <= 0) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                    }
                    m15735a(file3);
                    return;
                }
                System.out.print("test");
                System.out.print("test");
                System.out.print("test");
                beb.C12230c.C12231a m17943c = beb.C12230c.m17952a().m17942d(dlw.m16475a(Build.VERSION.SDK.getBytes())).m17943c(dlw.m16475a(str.getBytes()));
                byte[] bytes = this.f47550d.m16539a(this.f47551e, bArr).getBytes();
                m17943c.m17945a(dlw.m16475a(bytes)).m17944b(dlw.m16475a(bzp.m17540a(bytes)));
                file2.createNewFile();
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] mo16256g = ((beb.C12230c) ((dnh) m17943c.mo16259f())).mo16256g();
                    fileOutputStream.write(mo16256g, 0, mo16256g.length);
                    fileOutputStream.close();
                    try {
                        fileInputStream2.close();
                    } catch (IOException e2) {
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                    }
                    m15735a(file3);
                } catch (zzej | IOException | NoSuchAlgorithmException e4) {
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
                    m15735a(file3);
                } catch (Throwable th2) {
                    fileOutputStream2 = fileOutputStream;
                    th = th2;
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
                    m15735a(file3);
                    throw th;
                }
            } catch (zzej | IOException | NoSuchAlgorithmException e9) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzej | IOException | NoSuchAlgorithmException e10) {
            fileOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
            fileInputStream2 = null;
        }
    }

    /* renamed from: a */
    private static void m15733a(String str) {
        m15735a(new File(str));
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m15740a(int i, beb.C12217a c12217a) {
        if (i < 4) {
            if (c12217a == null || !c12217a.m18111a() || c12217a.zzfg.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                return true;
            }
            if (!((c12217a.zzfo & 4096) != 0)) {
                return true;
            }
            return !((c12217a.m18101b().zzdv & 1) != 0) || c12217a.m18101b().zzlf == -2;
        }
        return false;
    }

    /* renamed from: b */
    private final boolean m15728b(File file, String str) {
        FileInputStream fileInputStream;
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
        try {
            long length = file2.length();
            if (length <= 0) {
                m15735a(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        m15735a(file2);
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e) {
                            return false;
                        }
                    }
                    try {
                        beb.C12230c m17950a = beb.C12230c.m17950a(bArr, dmt.m16396a());
                        if (str.equals(new String(m17950a.zzln.m16467d())) && Arrays.equals(m17950a.zzlm.m16467d(), bzp.m17540a(m17950a.zzll.m16467d())) && Arrays.equals(m17950a.zzlo.m16467d(), Build.VERSION.SDK.getBytes())) {
                            byte[] m16540a = this.f47550d.m16540a(this.f47551e, new String(m17950a.zzll.m16467d()));
                            file3.createNewFile();
                            fileOutputStream = new FileOutputStream(file3);
                            try {
                                fileOutputStream.write(m16540a, 0, m16540a.length);
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
                            } catch (zzej | IOException | NoSuchAlgorithmException e4) {
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
                                fileOutputStream2 = fileOutputStream;
                                th = th2;
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
                        m15735a(file2);
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e9) {
                            return false;
                        }
                    } catch (NullPointerException e10) {
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e11) {
                            return false;
                        }
                    }
                } catch (zzej | IOException | NoSuchAlgorithmException e12) {
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzej | IOException | NoSuchAlgorithmException e13) {
            fileInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
            fileInputStream = null;
        }
    }

    /* renamed from: d */
    private final beb.C12217a m15726d() {
        beb.C12217a c12217a;
        try {
            PackageInfo packageInfo = this.f47547a.getPackageManager().getPackageInfo(this.f47547a.getPackageName(), 0);
            Context context = this.f47547a;
            c12217a = cvj.m17171a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            c12217a = null;
        }
        return c12217a;
    }

    /* renamed from: a */
    public final Context m15741a() {
        return this.f47547a;
    }

    /* renamed from: a */
    public final Method m15732a(String str, String str2) {
        duq duqVar = this.f47563r.get(new Pair(str, str2));
        if (duqVar == null) {
            return null;
        }
        return duqVar.m15701a();
    }

    /* renamed from: a */
    public final void m15739a(int i, boolean z) {
        if (!this.f47556j) {
            return;
        }
        Future<?> submit = this.f47548b.submit(new dth(this, i, z));
        if (i != 0) {
            return;
        }
        this.f47553g = submit;
    }

    /* renamed from: a */
    public final boolean m15731a(String str, String str2, Class<?>... clsArr) {
        if (!this.f47563r.containsKey(new Pair(str, str2))) {
            this.f47563r.put(new Pair<>(str, str2), new duq(this, str, str2, clsArr));
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final AdvertisingIdClient m15730b() {
        if (!this.f47560o) {
            return null;
        }
        if (this.f47559n != null) {
            return this.f47559n;
        }
        Future future = this.f47561p;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.f47561p = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.f47561p.cancel(true);
            }
        }
        return this.f47559n;
    }

    /* renamed from: b */
    public final beb.C12217a m15729b(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return m15726d();
    }

    /* renamed from: c */
    public final int m15727c() {
        return this.f47554h != null ? cwd.m17143a() : Integer.MIN_VALUE;
    }
}

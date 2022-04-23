package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.Pair;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.c;
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
    private static final String m = "dtg";

    /* renamed from: a  reason: collision with root package name */
    protected Context f27190a;

    /* renamed from: b  reason: collision with root package name */
    ExecutorService f27191b;

    /* renamed from: c  reason: collision with root package name */
    DexClassLoader f27192c;

    /* renamed from: d  reason: collision with root package name */
    dkf f27193d;
    byte[] e;
    cwd h;
    zzfa l;
    private boolean q;
    private Map<Pair<String, String>, duq> r;
    private volatile AdvertisingIdClient n = null;
    private volatile boolean o = false;
    private Future p = null;
    volatile beb.a f = null;
    Future g = null;
    boolean i = false;
    boolean j = false;
    boolean k = false;

    private dtg(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        z = applicationContext != null ? true : z;
        this.q = z;
        this.f27190a = z ? applicationContext : context;
        this.r = new HashMap();
        if (this.l == null) {
            this.l = new zzfa(this.f27190a);
        }
    }

    public static dtg a(Context context, String str, String str2, boolean z) {
        dtg dtgVar = new dtg(context);
        try {
            dtgVar.f27191b = Executors.newCachedThreadPool(new dtf());
            dtgVar.o = z;
            if (z) {
                dtgVar.p = dtgVar.f27191b.submit(new dti(dtgVar));
            }
            dtgVar.f27191b.execute(new dtk(dtgVar));
            try {
                c b2 = c.b();
                dtgVar.i = c.c(dtgVar.f27190a) > 0;
                dtgVar.j = b2.a(dtgVar.f27190a) == 0;
            } catch (Throwable th) {
            }
            dtgVar.a(0, true);
            if (dtl.a() && ((Boolean) ekb.e().a(aq.bG)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            dkf dkfVar = new dkf(null);
            dtgVar.f27193d = dkfVar;
            try {
                dtgVar.e = dkfVar.a(str);
                try {
                    try {
                        File cacheDir = dtgVar.f27190a.getCacheDir();
                        File file = cacheDir;
                        if (cacheDir == null) {
                            file = dtgVar.f27190a.getDir("dex", 0);
                            if (file == null) {
                                throw new zzev();
                            }
                        }
                        File file2 = new File(String.format("%s/%s.jar", file, "1610724645094"));
                        if (!file2.exists()) {
                            byte[] a2 = dtgVar.f27193d.a(dtgVar.e, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(a2, 0, a2.length);
                            fileOutputStream.close();
                        }
                        dtgVar.b(file, "1610724645094");
                        try {
                            dtgVar.f27192c = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, dtgVar.f27190a.getClassLoader());
                            a(file2);
                            dtgVar.a(file, "1610724645094");
                            a(String.format("%s/%s.dex", file, "1610724645094"));
                            dtgVar.h = new cwd(dtgVar);
                            dtgVar.k = true;
                        } catch (Throwable th2) {
                            a(file2);
                            dtgVar.a(file, "1610724645094");
                            a(String.format("%s/%s.dex", file, "1610724645094"));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(dtg dtgVar) {
        try {
            if (dtgVar.n == null && dtgVar.q) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(dtgVar.f27190a);
                advertisingIdClient.start();
                dtgVar.n = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            dtgVar.n = null;
        }
    }

    private static void a(File file) {
        if (!file.exists()) {
            String.format("File %s not found. No need for deletion", file.getAbsolutePath());
        } else {
            file.delete();
        }
    }

    private final void a(File file, String str) {
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
                                a(file3);
                                return;
                            }
                            System.out.print("test");
                            System.out.print("test");
                            System.out.print("test");
                            beb.c.a c2 = beb.c.a().d(dlw.a(Build.VERSION.SDK.getBytes())).c(dlw.a(str.getBytes()));
                            byte[] bytes = this.f27193d.a(this.e, bArr).getBytes();
                            c2.a(dlw.a(bytes)).b(dlw.a(bzp.a(bytes)));
                            file2.createNewFile();
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                byte[] g = ((beb.c) ((dnh) c2.f())).g();
                                fileOutputStream.write(g, 0, g.length);
                                fileOutputStream.close();
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e2) {
                                }
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                }
                                a(file3);
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
                                a(file3);
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
                                a(file3);
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
                    } catch (Throwable th4) {
                        th = th4;
                        fileOutputStream2 = null;
                    }
                }
            }
        }
    }

    private static void a(String str) {
        a(new File(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(int i, beb.a aVar) {
        if (i >= 4) {
            return false;
        }
        if (aVar == null || !aVar.a() || aVar.zzfg.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
            return true;
        }
        if (!((aVar.zzfo & 4096) != 0)) {
            return true;
        }
        return !((aVar.b().zzdv & 1) != 0) || aVar.b().zzlf == -2;
    }

    private final boolean b(File file, String str) {
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
                a(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        a(file2);
                        try {
                            fileInputStream.close();
                            return false;
                        } catch (IOException e) {
                            return false;
                        }
                    } else {
                        try {
                            beb.c a2 = beb.c.a(bArr, dmt.a());
                            if (str.equals(new String(a2.zzln.d())) && Arrays.equals(a2.zzlm.d(), bzp.a(a2.zzll.d())) && Arrays.equals(a2.zzlo.d(), Build.VERSION.SDK.getBytes())) {
                                byte[] a3 = this.f27193d.a(this.e, new String(a2.zzll.d()));
                                file3.createNewFile();
                                fileOutputStream = new FileOutputStream(file3);
                                try {
                                    fileOutputStream.write(a3, 0, a3.length);
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
                            a(file2);
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
                    }
                } catch (zzej | IOException | NoSuchAlgorithmException e12) {
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzej | IOException | NoSuchAlgorithmException e13) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
        }
    }

    private final beb.a d() {
        beb.a aVar;
        try {
            PackageInfo packageInfo = this.f27190a.getPackageManager().getPackageInfo(this.f27190a.getPackageName(), 0);
            Context context = this.f27190a;
            aVar = cvj.a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            aVar = null;
        }
        return aVar;
    }

    public final Context a() {
        return this.f27190a;
    }

    public final Method a(String str, String str2) {
        duq duqVar = this.r.get(new Pair(str, str2));
        if (duqVar == null) {
            return null;
        }
        return duqVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, boolean z) {
        if (this.j) {
            Future<?> submit = this.f27191b.submit(new dth(this, i, z));
            if (i == 0) {
                this.g = submit;
            }
        }
    }

    public final boolean a(String str, String str2, Class<?>... clsArr) {
        if (this.r.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.r.put(new Pair<>(str, str2), new duq(this, str, str2, clsArr));
        return true;
    }

    public final AdvertisingIdClient b() {
        if (!this.o) {
            return null;
        }
        if (this.n != null) {
            return this.n;
        }
        Future future = this.p;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.p = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.p.cancel(true);
            }
        }
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final beb.a b(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return d();
    }

    public final int c() {
        return this.h != null ? cwd.a() : BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }
}

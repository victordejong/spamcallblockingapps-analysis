package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.p120c.C2276a;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.atw;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/din.class */
public class din {

    /* renamed from: b */
    private static final String f14409b = din.class.getSimpleName();

    /* renamed from: a */
    protected Context f14410a;

    /* renamed from: c */
    private ExecutorService f14411c;

    /* renamed from: d */
    private DexClassLoader f14412d;

    /* renamed from: e */
    private cvn f14413e;

    /* renamed from: f */
    private byte[] f14414f;

    /* renamed from: j */
    private boolean f14418j;

    /* renamed from: m */
    private chc f14421m;

    /* renamed from: p */
    private Map<Pair<String, String>, djx> f14424p;

    /* renamed from: r */
    private dil f14426r;

    /* renamed from: g */
    private volatile C2276a f14415g = null;

    /* renamed from: h */
    private volatile boolean f14416h = false;

    /* renamed from: i */
    private Future f14417i = null;

    /* renamed from: k */
    private volatile atw.C2798a f14419k = null;

    /* renamed from: l */
    private Future f14420l = null;

    /* renamed from: n */
    private boolean f14422n = false;

    /* renamed from: o */
    private boolean f14423o = false;

    /* renamed from: q */
    private boolean f14425q = false;

    private din(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        this.f14418j = applicationContext != null ? true : z;
        this.f14410a = this.f14418j ? applicationContext : context;
        this.f14424p = new HashMap();
        if (this.f14426r == null) {
            this.f14426r = new dil(this.f14410a);
        }
    }

    /* renamed from: a */
    public static din m9419a(Context context, String str, String str2, boolean z) {
        din dinVar = new din(context);
        try {
            dinVar.f14411c = Executors.newCachedThreadPool(new dim());
            dinVar.f14416h = z;
            if (z) {
                dinVar.f14417i = dinVar.f14411c.submit(new dip(dinVar));
            }
            dinVar.f14411c.execute(new dir(dinVar));
            try {
                C2593f m14165b = C2593f.m14165b();
                dinVar.f14422n = m14165b.m14161c(dinVar.f14410a) > 0;
                dinVar.f14423o = m14165b.mo14170a(dinVar.f14410a) == 0;
            } catch (Throwable th) {
            }
            dinVar.m9420a(0, true);
        } catch (zzeh e) {
        }
        if (!dis.m9391a() || !((Boolean) dyx.m8158e().m7876a(edi.f16428bh)).booleanValue()) {
            dinVar.f14413e = new cvn(null);
            try {
                dinVar.f14414f = dinVar.f14413e.m10626a(str);
                try {
                    try {
                        File cacheDir = dinVar.f14410a.getCacheDir();
                        File file = cacheDir;
                        if (cacheDir == null) {
                            File dir = dinVar.f14410a.getDir("dex", 0);
                            file = dir;
                            if (dir == null) {
                                throw new zzeh();
                            }
                        }
                        File file2 = new File(String.format("%s/%s.jar", file, "1582435991586"));
                        if (!file2.exists()) {
                            byte[] m10625a = dinVar.f14413e.m10625a(dinVar.f14414f, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(m10625a, 0, m10625a.length);
                            fileOutputStream.close();
                        }
                        dinVar.m9408b(file, "1582435991586");
                        try {
                            dinVar.f14412d = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, dinVar.f14410a.getClassLoader());
                            m9416a(file2);
                            dinVar.m9415a(file, "1582435991586");
                            m9414a(String.format("%s/%s.dex", file, "1582435991586"));
                            dinVar.f14421m = new chc(dinVar);
                            dinVar.f14425q = true;
                            return dinVar;
                        } catch (Throwable th2) {
                            m9416a(file2);
                            dinVar.m9415a(file, "1582435991586");
                            m9414a(String.format("%s/%s.dex", file, "1582435991586"));
                            throw th2;
                        }
                    } catch (zzdy e2) {
                        throw new zzeh(e2);
                    } catch (FileNotFoundException e3) {
                        throw new zzeh(e3);
                    }
                } catch (IOException e4) {
                    throw new zzeh(e4);
                } catch (NullPointerException e5) {
                    throw new zzeh(e5);
                }
            } catch (zzdy e6) {
                throw new zzeh(e6);
            }
        }
        throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
    }

    /* renamed from: a */
    private static void m9416a(File file) {
        if (!file.exists()) {
            Log.d(f14409b, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m9415a(java.io.File r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.din.m9415a(java.io.File, java.lang.String):void");
    }

    /* renamed from: a */
    private static void m9414a(String str) {
        m9416a(new File(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r6.m12652g().m12447b() != (-2)) goto L19;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m9410b(int r5, com.google.android.gms.internal.ads.atw.C2798a r6) {
        /*
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = 4
            if (r0 >= r1) goto L4c
            r0 = r6
            if (r0 != 0) goto Lf
            r0 = r7
            r8 = r0
        Ld:
            r0 = r8
            return r0
        Lf:
            r0 = r7
            r8 = r0
            r0 = r6
            boolean r0 = r0.m12704a()
            if (r0 == 0) goto Ld
            r0 = r7
            r8 = r0
            r0 = r6
            java.lang.String r0 = r0.m12687b()
            java.lang.String r1 = "0000000000000000000000000000000000000000000000000000000000000000"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Ld
            r0 = r7
            r8 = r0
            r0 = r6
            boolean r0 = r0.m12657f()
            if (r0 == 0) goto Ld
            r0 = r7
            r8 = r0
            r0 = r6
            com.google.android.gms.internal.ads.atw$d r0 = r0.m12652g()
            boolean r0 = r0.m12448a()
            if (r0 == 0) goto Ld
            r0 = r7
            r8 = r0
            r0 = r6
            com.google.android.gms.internal.ads.atw$d r0 = r0.m12652g()
            long r0 = r0.m12447b()
            r1 = -2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Ld
        L4c:
            r0 = 0
            r8 = r0
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.din.m9410b(int, com.google.android.gms.internal.ads.atw$a):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x015a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0152 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m9408b(java.io.File r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.din.m9408b(java.io.File, java.lang.String):boolean");
    }

    /* renamed from: p */
    public final void m9394p() {
        try {
            if (this.f14415g != null || !this.f14418j) {
                return;
            }
            C2276a c2276a = new C2276a(this.f14410a);
            c2276a.m14866a();
            this.f14415g = c2276a;
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            this.f14415g = null;
        }
    }

    /* renamed from: q */
    private final atw.C2798a m9393q() {
        atw.C2798a c2798a = null;
        try {
            c2798a = cma.m11065a(this.f14410a, this.f14410a.getPackageName(), Integer.toString(this.f14410a.getPackageManager().getPackageInfo(this.f14410a.getPackageName(), 0).versionCode));
        } catch (Throwable th) {
        }
        return c2798a;
    }

    /* renamed from: a */
    public final Context m9422a() {
        return this.f14410a;
    }

    /* renamed from: a */
    public final Method m9413a(String str, String str2) {
        djx djxVar = this.f14424p.get(new Pair(str, str2));
        return djxVar == null ? null : djxVar.m9369a();
    }

    /* renamed from: a */
    public final void m9420a(int i, boolean z) {
        if (!this.f14423o) {
            return;
        }
        Future<?> submit = this.f14411c.submit(new dio(this, i, z));
        if (i != 0) {
            return;
        }
        this.f14420l = submit;
    }

    /* renamed from: a */
    public final boolean m9412a(String str, String str2, Class<?>... clsArr) {
        boolean z;
        if (!this.f14424p.containsKey(new Pair(str, str2))) {
            this.f14424p.put(new Pair<>(str, str2), new djx(this, str, str2, clsArr));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final atw.C2798a m9409b(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return m9393q();
    }

    /* renamed from: b */
    public final boolean m9411b() {
        return this.f14425q;
    }

    /* renamed from: c */
    public final ExecutorService m9407c() {
        return this.f14411c;
    }

    /* renamed from: d */
    public final DexClassLoader m9406d() {
        return this.f14412d;
    }

    /* renamed from: e */
    public final cvn m9405e() {
        return this.f14413e;
    }

    /* renamed from: f */
    public final byte[] m9404f() {
        return this.f14414f;
    }

    /* renamed from: g */
    public final boolean m9403g() {
        return this.f14422n;
    }

    /* renamed from: h */
    public final chc m9402h() {
        return this.f14421m;
    }

    /* renamed from: i */
    public final boolean m9401i() {
        return this.f14423o;
    }

    /* renamed from: j */
    public final boolean m9400j() {
        return this.f14426r.m9423a();
    }

    /* renamed from: k */
    public final dil m9399k() {
        return this.f14426r;
    }

    /* renamed from: l */
    public final atw.C2798a m9398l() {
        return this.f14419k;
    }

    /* renamed from: m */
    public final Future m9397m() {
        return this.f14420l;
    }

    /* renamed from: n */
    public final C2276a m9396n() {
        C2276a c2276a = null;
        if (this.f14416h) {
            if (this.f14415g != null) {
                c2276a = this.f14415g;
            } else {
                if (this.f14417i != null) {
                    try {
                        this.f14417i.get(2000L, TimeUnit.MILLISECONDS);
                        this.f14417i = null;
                    } catch (InterruptedException e) {
                    } catch (ExecutionException e2) {
                    } catch (TimeoutException e3) {
                        this.f14417i.cancel(true);
                    }
                }
                c2276a = this.f14415g;
            }
        }
        return c2276a;
    }

    /* renamed from: o */
    public final int m9395o() {
        int i = Integer.MIN_VALUE;
        if (this.f14421m != null) {
            i = chc.m11359a();
        }
        return i;
    }
}

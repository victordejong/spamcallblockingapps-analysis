package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC6180u0;
import com.google.android.gms.common.internal.AbstractC6183v0;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/x.class */
public final class C6250x {

    /* renamed from: e */
    private static volatile AbstractC6183v0 f19740e;

    /* renamed from: g */
    private static Context f19742g;

    /* renamed from: a */
    static final AbstractBinderC6248v f19736a = new BinderC6203p(AbstractBinderC6221t.m16834m2("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b */
    static final AbstractBinderC6248v f19737b = new BinderC6204q(AbstractBinderC6221t.m16834m2("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c */
    static final AbstractBinderC6248v f19738c = new BinderC6205r(AbstractBinderC6221t.m16834m2("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));

    /* renamed from: d */
    static final AbstractBinderC6248v f19739d = new BinderC6206s(AbstractBinderC6221t.m16834m2("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f */
    private static final Object f19741f = new Object();

    /* renamed from: a */
    public static void m16757a(Context context) {
        synchronized (C6250x.class) {
            try {
                if (f19742g != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context == null) {
                } else {
                    f19742g = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.a, android.os.IBinder] */
    /* renamed from: b */
    public static C6095e0 m16756b(String str, boolean z, boolean z2, boolean z3) {
        C6095e0 c6095e0;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            C6155o.m17018j(f19742g);
            try {
                m16752f();
                try {
                    zzq mo16912T2 = f19740e.mo16912T2(new zzn(str, z, false, BinderC6255b.m16744m2(f19742g), false));
                    if (mo16912T2.zza()) {
                        c6095e0 = C6095e0.m17197b();
                    } else {
                        String m16749k0 = mo16912T2.m16749k0();
                        String str2 = m16749k0;
                        if (m16749k0 == null) {
                            str2 = "error checking package certificate";
                        }
                        c6095e0 = mo16912T2.m16748l0() == 4 ? C6095e0.m17194e(str2, new PackageManager.NameNotFoundException()) : C6095e0.m17195d(str2);
                    }
                } catch (RemoteException e) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                    c6095e0 = C6095e0.m17194e("module call", e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                String valueOf = String.valueOf(e2.getMessage());
                c6095e0 = C6095e0.m17194e(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return c6095e0;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    /* renamed from: c */
    public static C6095e0 m16755c(String str, AbstractBinderC6221t abstractBinderC6221t, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m16751g(str, abstractBinderC6221t, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: d */
    public static boolean m16754d() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                m16752f();
                return f19740e.zzg();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }

    /* renamed from: e */
    public static final /* synthetic */ String m16753e(boolean z, String str, AbstractBinderC6221t abstractBinderC6221t) {
        boolean z2 = true;
        if (z || !m16751g(str, abstractBinderC6221t, true, false).f19415b) {
            z2 = false;
        }
        return C6095e0.m17192g(str, abstractBinderC6221t, z, z2);
    }

    /* renamed from: f */
    private static void m16752f() {
        if (f19740e != null) {
            return;
        }
        C6155o.m17018j(f19742g);
        synchronized (f19741f) {
            if (f19740e == null) {
                f19740e = AbstractBinderC6180u0.m16916D0(DynamiteModule.m16739e(f19742g, DynamiteModule.f19762e, "com.google.android.gms.googlecertificates").m16740d("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }

    /* renamed from: g */
    private static C6095e0 m16751g(String str, AbstractBinderC6221t abstractBinderC6221t, boolean z, boolean z2) {
        try {
            m16752f();
            C6155o.m17018j(f19742g);
            try {
                return f19740e.mo16913F3(new zzs(str, abstractBinderC6221t, z, z2), BinderC6255b.m16744m2(f19742g.getPackageManager())) ? C6095e0.m17197b() : C6095e0.m17196c(new Callable(z, str, abstractBinderC6221t) { // from class: com.google.android.gms.common.o

                    /* renamed from: a */
                    private final boolean f19645a;

                    /* renamed from: b */
                    private final String f19646b;

                    /* renamed from: c */
                    private final AbstractBinderC6221t f19647c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f19645a = z;
                        this.f19646b = str;
                        this.f19647c = abstractBinderC6221t;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C6250x.m16753e(this.f19645a, this.f19646b, this.f19647c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C6095e0.m17194e("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C6095e0.m17194e(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}

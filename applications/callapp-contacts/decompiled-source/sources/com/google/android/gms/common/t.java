package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.au;
import com.google.android.gms.common.internal.av;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/t.class */
public final class t {
    private static volatile av e;
    private static Context g;

    /* renamed from: a  reason: collision with root package name */
    static final r f22930a = new l(p.a("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b  reason: collision with root package name */
    static final r f22931b = new m(p.a("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c  reason: collision with root package name */
    static final r f22932c = new n(p.a("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));

    /* renamed from: d  reason: collision with root package name */
    static final r f22933d = new o(p.a("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));
    private static final Object f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aa a(String str, p pVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return b(str, pVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.b, android.os.IBinder] */
    public static aa a(String str, boolean z) {
        aa aaVar;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            o.a(g);
            try {
                b();
                try {
                    zzq a2 = e.a(new zzn(str, z, false, d.a(g), false));
                    if (a2.zza()) {
                        aaVar = aa.b();
                    } else {
                        String zzb = a2.zzb();
                        String str2 = zzb;
                        if (zzb == null) {
                            str2 = "error checking package certificate";
                        }
                        aaVar = a2.zzc() == 4 ? aa.a(str2, new PackageManager.NameNotFoundException()) : aa.a(str2);
                    }
                } catch (RemoteException e2) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                    aaVar = aa.a("module call", e2);
                }
            } catch (DynamiteModule.LoadingException e3) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
                String valueOf = String.valueOf(e3.getMessage());
                aaVar = aa.a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e3);
            }
            return aaVar;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ String a(boolean z, String str, p pVar) throws Exception {
        boolean z2 = true;
        if (z || !b(str, pVar, true, false).f22603a) {
            z2 = false;
        }
        return aa.a(str, pVar, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        synchronized (t.class) {
            try {
                if (g != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    g = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                b();
                return e.a();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }

    private static aa b(final String str, final p pVar, final boolean z, boolean z2) {
        try {
            b();
            o.a(g);
            try {
                return e.a(new zzs(str, pVar, z, z2), d.a(g.getPackageManager())) ? aa.b() : aa.a(new Callable(z, str, pVar) { // from class: com.google.android.gms.common.k

                    /* renamed from: a  reason: collision with root package name */
                    private final boolean f22914a;

                    /* renamed from: b  reason: collision with root package name */
                    private final String f22915b;

                    /* renamed from: c  reason: collision with root package name */
                    private final p f22916c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f22914a = z;
                        this.f22915b = str;
                        this.f22916c = pVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return t.a(this.f22914a, this.f22915b, this.f22916c);
                    }
                });
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                return aa.a("module call", e2);
            }
        } catch (DynamiteModule.LoadingException e3) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
            String valueOf = String.valueOf(e3.getMessage());
            return aa.a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e3);
        }
    }

    private static void b() throws DynamiteModule.LoadingException {
        if (e == null) {
            o.a(g);
            synchronized (f) {
                if (e == null) {
                    e = au.a(DynamiteModule.a(g, DynamiteModule.e, "com.google.android.gms.googlecertificates").a("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            }
        }
    }
}

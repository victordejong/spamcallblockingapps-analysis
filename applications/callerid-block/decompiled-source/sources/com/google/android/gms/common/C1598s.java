package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC1588p;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* renamed from: com.google.android.gms.common.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/s.class */
public final class C1598s {

    /* renamed from: c */
    private static volatile AbstractC1588p f5884c;

    /* renamed from: e */
    private static Context f5886e;

    /* renamed from: a */
    static final q f5882a = new m(o.g3("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));

    /* renamed from: b */
    static final q f5883b = new n(o.g3("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));

    /* renamed from: d */
    private static final Object f5885d = new Object();

    static {
        new k(o.g3("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
        new l(o.g3("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m8273a(Context context) {
        synchronized (C1598s.class) {
            try {
                if (f5886e != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    f5886e = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.a, android.os.IBinder] */
    /* renamed from: b */
    public static C1631z m8272b(String str, boolean z, boolean z2, boolean z3) {
        C1631z zVar;
        String concat;
        zzq v5;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            C1581h.m8347h(f5886e);
            try {
                m8268f();
                try {
                    v5 = f5884c.m8331v5(new zzn(str, z, false, (IBinder) b.g3(f5886e), false));
                } catch (RemoteException e) {
                    e = e;
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                    concat = "module call";
                }
            } catch (DynamiteModule.LoadingException e2) {
                e = e2;
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                String valueOf = String.valueOf(e.getMessage());
                concat = valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: ");
            }
            if (v5.zza()) {
                zVar = C1631z.m8191b();
            } else {
                String a = v5.a();
                concat = a;
                if (a == null) {
                    concat = "error checking package certificate";
                }
                if (v5.p() == 4) {
                    e = new PackageManager.NameNotFoundException();
                    zVar = C1631z.m8188e(concat, e);
                } else {
                    zVar = C1631z.m8189d(concat);
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zVar;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static C1631z m8271c(String str, o oVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m8267g(str, oVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static boolean m8270d() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                m8268f();
                return f5884c.m8333g();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static final /* synthetic */ String m8269e(boolean z, String str, o oVar) {
        boolean z2 = true;
        if (z || !m8267g(str, oVar, true, false).f5907a) {
            z2 = false;
        }
        return C1631z.m8186g(str, oVar, z, z2);
    }

    /* renamed from: f */
    private static void m8268f() {
        if (f5884c == null) {
            C1581h.m8347h(f5886e);
            synchronized (f5885d) {
                if (f5884c == null) {
                    f5884c = o.r1(DynamiteModule.m8179e(f5886e, DynamiteModule.f5913c, "com.google.android.gms.googlecertificates").m8180d("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            }
        }
    }

    /* renamed from: g */
    private static C1631z m8267g(final String str, final o oVar, final boolean z, boolean z2) {
        try {
            m8268f();
            C1581h.m8347h(f5886e);
            try {
                return f5884c.m8332k1(new zzs(str, oVar, z, z2), b.g3(f5886e.getPackageManager())) ? C1631z.m8191b() : C1631z.m8190c(new Callable(z, str, oVar) { // from class: com.google.android.gms.common.j

                    /* renamed from: a */
                    private final boolean f5878a;

                    /* renamed from: b */
                    private final String f5879b;

                    /* renamed from: c */
                    private final o f5880c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5878a = z;
                        this.f5879b = str;
                        this.f5880c = oVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C1598s.m8269e(this.f5878a, this.f5879b, this.f5880c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C1631z.m8188e("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C1631z.m8188e(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}

package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC11995au;
import com.google.android.gms.common.internal.AbstractC11996av;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/t.class */
public final class C12092t {

    /* renamed from: e */
    private static volatile AbstractC11996av f39616e;

    /* renamed from: g */
    private static Context f39618g;

    /* renamed from: a */
    static final AbstractBinderC12068r f39612a = new BinderC12062l(AbstractBinderC12066p.m19076a("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b */
    static final AbstractBinderC12068r f39613b = new BinderC12063m(AbstractBinderC12066p.m19076a("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c */
    static final AbstractBinderC12068r f39614c = new BinderC12064n(AbstractBinderC12066p.m19076a("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));

    /* renamed from: d */
    static final AbstractBinderC12068r f39615d = new BinderC12065o(AbstractBinderC12066p.m19076a("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f */
    private static final Object f39617f = new Object();

    /* renamed from: a */
    public static C11807aa m19063a(String str, AbstractBinderC12066p abstractBinderC12066p, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m19059b(str, abstractBinderC12066p, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.dynamic.b, android.os.IBinder] */
    /* renamed from: a */
    public static C11807aa m19062a(String str, boolean z) {
        C11807aa c11807aa;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            C12045o.m19162a(f39618g);
            try {
                m19060b();
                try {
                    zzq mo19218a = f39616e.mo19218a(new zzn(str, z, false, BinderC12129d.m18979a(f39618g), false));
                    if (mo19218a.zza()) {
                        c11807aa = C11807aa.m19468b();
                    } else {
                        String zzb = mo19218a.zzb();
                        String str2 = zzb;
                        if (zzb == null) {
                            str2 = "error checking package certificate";
                        }
                        c11807aa = mo19218a.zzc() == 4 ? C11807aa.m19470a(str2, new PackageManager.NameNotFoundException()) : C11807aa.m19472a(str2);
                    }
                } catch (RemoteException e) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                    c11807aa = C11807aa.m19470a("module call", e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                String valueOf = String.valueOf(e2.getMessage());
                c11807aa = C11807aa.m19470a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return c11807aa;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m19061a(boolean z, String str, AbstractBinderC12066p abstractBinderC12066p) throws Exception {
        boolean z2 = true;
        if (z || !m19059b(str, abstractBinderC12066p, true, false).f39168a) {
            z2 = false;
        }
        return C11807aa.m19471a(str, abstractBinderC12066p, z, z2);
    }

    /* renamed from: a */
    public static void m19064a(Context context) {
        synchronized (C12092t.class) {
            try {
                if (f39618g != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context == null) {
                } else {
                    f39618g = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m19065a() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                m19060b();
                return f39616e.mo19219a();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        } catch (RemoteException | DynamiteModule.LoadingException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return false;
        }
    }

    /* renamed from: b */
    private static C11807aa m19059b(String str, AbstractBinderC12066p abstractBinderC12066p, boolean z, boolean z2) {
        try {
            m19060b();
            C12045o.m19162a(f39618g);
            try {
                return f39616e.mo19217a(new zzs(str, abstractBinderC12066p, z, z2), BinderC12129d.m18979a(f39618g.getPackageManager())) ? C11807aa.m19468b() : C11807aa.m19469a(new Callable(z, str, abstractBinderC12066p) { // from class: com.google.android.gms.common.k

                    /* renamed from: a */
                    private final boolean f39580a;

                    /* renamed from: b */
                    private final String f39581b;

                    /* renamed from: c */
                    private final AbstractBinderC12066p f39582c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f39580a = z;
                        this.f39581b = str;
                        this.f39582c = abstractBinderC12066p;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C12092t.m19061a(this.f39580a, this.f39581b, this.f39582c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C11807aa.m19470a("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C11807aa.m19470a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }

    /* renamed from: b */
    private static void m19060b() throws DynamiteModule.LoadingException {
        if (f39616e != null) {
            return;
        }
        C12045o.m19162a(f39618g);
        synchronized (f39617f) {
            if (f39616e == null) {
                f39616e = AbstractBinderC11995au.m19220a(DynamiteModule.m18974a(f39618g, DynamiteModule.f39675e, "com.google.android.gms.googlecertificates").m18969a("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}

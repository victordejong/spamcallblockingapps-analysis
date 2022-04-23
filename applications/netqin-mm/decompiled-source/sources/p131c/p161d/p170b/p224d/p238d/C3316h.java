package p131c.p161d.p170b.p224d.p238d;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.zzj;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.d.h */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/h.class */
public final class C3316h {

    /* renamed from: a */
    public static volatile zzq f12036a;

    /* renamed from: b */
    public static final Object f12037b = new Object();

    /* renamed from: c */
    public static Context f12038c;

    /* renamed from: a */
    public static C3324p m27256a(String str, AbstractBinderC3317i iVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m27254b(str, iVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m27255a(boolean z, String str, AbstractBinderC3317i iVar) throws Exception {
        boolean z2 = true;
        if (z || !m27254b(str, iVar, true, false).f12048a) {
            z2 = false;
        }
        return C3324p.m27251a(str, iVar, z, z2);
    }

    /* renamed from: a */
    public static void m27257a(Context context) {
        synchronized (C3316h.class) {
            try {
                if (f12038c != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    f12038c = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static C3324p m27254b(final String str, final AbstractBinderC3317i iVar, final boolean z, boolean z2) {
        try {
            if (f12036a == null) {
                Preconditions.m17288a(f12038c);
                synchronized (f12037b) {
                    if (f12036a == null) {
                        f12036a = zzp.m17158a(DynamiteModule.m16993a(f12038c, DynamiteModule.f23601k, "com.google.android.gms.googlecertificates").m16988a("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            Preconditions.m17288a(f12038c);
            try {
                return f12036a.mo17157a(new zzj(str, iVar, z, z2), ObjectWrapper.m17020a(f12038c.getPackageManager())) ? C3324p.m27247c() : C3324p.m27249a(new Callable(z, str, iVar) { // from class: c.d.b.d.d.j

                    /* renamed from: a */
                    public final boolean f12040a;

                    /* renamed from: b */
                    public final String f12041b;

                    /* renamed from: c */
                    public final AbstractBinderC3317i f12042c;

                    {
                        this.f12040a = z;
                        this.f12041b = str;
                        this.f12042c = iVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C3316h.m27255a(this.f12040a, this.f12041b, this.f12042c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return C3324p.m27250a("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return C3324p.m27250a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}

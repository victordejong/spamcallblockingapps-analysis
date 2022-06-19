package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC2615ar;
import com.google.android.gms.common.internal.AbstractC2616as;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
@CheckReturnValue
/* renamed from: com.google.android.gms.common.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/n.class */
public final class C2679n {

    /* renamed from: a */
    private static volatile AbstractC2616as f7440a;

    /* renamed from: b */
    private static final Object f7441b = new Object();

    /* renamed from: c */
    private static Context f7442c;

    /* renamed from: a */
    public static C2727w m13904a(String str, AbstractBinderC2680o abstractBinderC2680o, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return m13902b(str, abstractBinderC2680o, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m13903a(boolean z, String str, AbstractBinderC2680o abstractBinderC2680o) {
        boolean z2 = true;
        if (z || !m13902b(str, abstractBinderC2680o, true, false).f7543a) {
            z2 = false;
        }
        return C2727w.m13802a(str, abstractBinderC2680o, z, z2);
    }

    /* renamed from: a */
    public static void m13905a(Context context) {
        synchronized (C2679n.class) {
            try {
                if (f7442c != null) {
                    Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                } else if (context != null) {
                    f7442c = context.getApplicationContext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static C2727w m13902b(String str, AbstractBinderC2680o abstractBinderC2680o, boolean z, boolean z2) {
        C2727w m13801a;
        try {
            if (f7440a == null) {
                C2662s.m13981a(f7442c);
                synchronized (f7441b) {
                    if (f7440a == null) {
                        f7440a = AbstractBinderC2615ar.m14116a(DynamiteModule.m13791a(f7442c, DynamiteModule.f7553d, "com.google.android.gms.googlecertificates").m13786a("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            C2662s.m13981a(f7442c);
            try {
                m13801a = f7440a.mo14115a(new C2700u(str, abstractBinderC2680o, z, z2), BinderC2734b.m13794a(f7442c.getPackageManager())) ? C2727w.m13804a() : C2727w.m13800a(new Callable(z, str, abstractBinderC2680o) { // from class: com.google.android.gms.common.p

                    /* renamed from: a */
                    private final boolean f7444a;

                    /* renamed from: b */
                    private final String f7445b;

                    /* renamed from: c */
                    private final AbstractBinderC2680o f7446c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7444a = z;
                        this.f7445b = str;
                        this.f7446c = abstractBinderC2680o;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return C2679n.m13903a(this.f7444a, this.f7445b, this.f7446c);
                    }
                });
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                m13801a = C2727w.m13801a("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            m13801a = C2727w.m13801a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
        return m13801a;
    }
}

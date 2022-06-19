package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.util.Log;
/* renamed from: com.google.android.gms.internal.measurement.bh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bh.class */
public final class C3819bh {

    /* renamed from: a */
    private static volatile AbstractC3835bx<Boolean> f17883a = AbstractC3835bx.m5849c();

    /* renamed from: b */
    private static final Object f17884b = new Object();

    /* renamed from: a */
    private static boolean m5883a(Context context) {
        boolean z = false;
        try {
            if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m5882a(Context context, Uri uri) {
        boolean z;
        boolean z2 = false;
        String authority = uri.getAuthority();
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            Log.e("PhenotypeClientHelper", new StringBuilder(String.valueOf(authority).length() + 91).append(authority).append(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported.").toString());
        } else if (f17883a.mo5848a()) {
            z2 = f17883a.mo5847b().booleanValue();
        } else {
            synchronized (f17884b) {
                if (f17883a.mo5848a()) {
                    z2 = f17883a.mo5847b().booleanValue();
                } else {
                    if ("com.google.android.gms".equals(context.getPackageName())) {
                        z = true;
                    } else {
                        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", 0);
                        z = resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName);
                    }
                    boolean z3 = false;
                    if (z) {
                        z3 = false;
                        if (m5883a(context)) {
                            z3 = true;
                        }
                    }
                    f17883a = AbstractC3835bx.m5850a(Boolean.valueOf(z3));
                    z2 = f17883a.mo5847b().booleanValue();
                }
            }
        }
        return z2;
    }
}

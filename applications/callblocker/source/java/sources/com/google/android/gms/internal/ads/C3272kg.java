package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.measurement.p141a.C4154a;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.ads.kg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kg.class */
public final class C3272kg {

    /* renamed from: a */
    private static C3272kg f16848a;

    /* renamed from: b */
    private AtomicBoolean f16849b = new AtomicBoolean(false);

    C3272kg() {
    }

    /* renamed from: a */
    public static C3272kg m7675a() {
        if (f16848a == null) {
            f16848a = new C3272kg();
        }
        return f16848a;
    }

    /* renamed from: a */
    private static void m7673a(Context context, C4154a c4154a) {
        try {
            ((afd) C3644ya.m6755a(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", C3273kh.f16850a)).mo13411a(BinderC2734b.m13794a(context), new BinderC3269kd(c4154a));
        } catch (RemoteException | zzazx | NullPointerException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m7671b(Context context) {
        edi.m7866a(context);
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16370ac)).booleanValue() || !m7669c(context)) {
            return;
        }
        m7673a(context, C4154a.m4837a(context));
    }

    /* renamed from: b */
    public static /* synthetic */ void m7670b(Context context, String str) {
        edi.m7866a(context);
        Bundle bundle = new Bundle();
        bundle.putBoolean("measurementEnabled", ((Boolean) dyx.m8158e().m7876a(edi.f16338X)).booleanValue());
        m7673a(context, C4154a.m4836a(context, "FA-Ads", "am", str, bundle));
    }

    /* renamed from: c */
    private static boolean m7669c(Context context) {
        boolean z;
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            z = true;
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final Thread m7674a(Context context) {
        Thread thread;
        if (!this.f16849b.compareAndSet(false, true)) {
            thread = null;
        } else {
            thread = new Thread(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.ki

                /* renamed from: a */
                private final C3272kg f16851a;

                /* renamed from: b */
                private final Context f16852b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16851a = this;
                    this.f16852b = context;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3272kg.m7671b(this.f16852b);
                }
            });
            thread.start();
        }
        return thread;
    }

    /* renamed from: a */
    public final Thread m7672a(Context context, String str) {
        Thread thread;
        if (!this.f16849b.compareAndSet(false, true)) {
            thread = null;
        } else {
            thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.kf

                /* renamed from: a */
                private final C3272kg f16845a;

                /* renamed from: b */
                private final Context f16846b;

                /* renamed from: c */
                private final String f16847c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16845a = this;
                    this.f16846b = context;
                    this.f16847c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3272kg.m7670b(this.f16846b, this.f16847c);
                }
            });
            thread.start();
        }
        return thread;
    }
}

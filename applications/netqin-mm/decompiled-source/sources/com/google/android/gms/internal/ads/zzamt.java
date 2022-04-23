package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzamt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p170b.p224d.p252g.p253a.C4052t2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamt.class */
public final class zzamt {

    /* renamed from: b */
    public static zzamt f24195b;

    /* renamed from: a */
    public AtomicBoolean f24196a = new AtomicBoolean(false);

    /* renamed from: a */
    public static zzamt m16651a() {
        if (f24195b == null) {
            f24195b = new zzamt();
        }
        return f24195b;
    }

    /* renamed from: a */
    public static void m16649a(Context context, AppMeasurementSdk appMeasurementSdk) {
        try {
            ((zzbis) zzbbt.m15847a(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", C4052t2.f15341a)).mo15433a(ObjectWrapper.m17020a(context), new zzamu(appMeasurementSdk));
        } catch (RemoteException | zzbbv | NullPointerException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m16646b(Context context, String str) {
        zzabb.m16916a(context);
        Bundle bundle = new Bundle();
        bundle.putBoolean("measurementEnabled", ((Boolean) zzwm.m11166e().m16921a(zzabb.f23768Y)).booleanValue());
        m16649a(context, AppMeasurementSdk.m9387a(context, "FA-Ads", "am", str, bundle));
    }

    /* renamed from: b */
    public static boolean m16647b(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ void m16645c(Context context) {
        zzabb.m16916a(context);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23797d0)).booleanValue() && m16647b(context)) {
            m16649a(context, AppMeasurementSdk.m9388a(context));
        }
    }

    /* renamed from: a */
    public final Thread m16650a(final Context context) {
        if (!this.f24196a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context) { // from class: c.d.b.d.g.a.r2

            /* renamed from: a */
            public final Context f14859a;

            {
                this.f14859a = context;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzamt.m16645c(this.f14859a);
            }
        });
        thread.start();
        return thread;
    }

    /* renamed from: a */
    public final Thread m16648a(final Context context, final String str) {
        if (!this.f24196a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: c.d.b.d.g.a.s2

            /* renamed from: a */
            public final Context f15060a;

            /* renamed from: b */
            public final String f15061b;

            {
                this.f15060a = context;
                this.f15061b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzamt.m16646b(this.f15060a, this.f15061b);
            }
        });
        thread.start();
        return thread;
    }
}

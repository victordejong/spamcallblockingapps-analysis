package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.measurement.p274a.C7642a;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k70.class */
public final class k70 {

    /* renamed from: a */
    private static k70 f25076a;

    /* renamed from: b */
    private final AtomicBoolean f25077b = new AtomicBoolean(false);

    k70() {
    }

    /* renamed from: a */
    public static k70 m13978a() {
        if (f25076a == null) {
            f25076a = new k70();
        }
        return f25076a;
    }

    /* renamed from: b */
    public final Thread m13977b(Context context, String str) {
        if (!this.f25077b.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.i70

            /* renamed from: d */
            private final k70 f24164d;

            /* renamed from: e */
            private final Context f24165e;

            /* renamed from: f */
            private final String f24166f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24164d = this;
                this.f24165e = context;
                this.f24166f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.f24165e;
                String str2 = this.f24166f;
                C6679kw.m13770a(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25662c0)).booleanValue());
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25719j0)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((rp0) hi0.m14638a(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", j70.f24797a)).mo11335p1(BinderC6255b.m16744m2(context2), new h70(C7642a.m6613k(context2, "FA-Ads", "am", str2, bundle)));
                } catch (RemoteException | zzcgw | NullPointerException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}

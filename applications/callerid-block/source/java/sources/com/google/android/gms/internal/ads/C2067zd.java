package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.measurement.p082a.C2217a;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.ads.zd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zd.class */
public final class C2067zd {

    /* renamed from: b */
    private static C2067zd f9334b;

    /* renamed from: a */
    private final AtomicBoolean f9335a = new AtomicBoolean(false);

    C2067zd() {
    }

    /* renamed from: a */
    public static C2067zd m4650a() {
        if (f9334b == null) {
            f9334b = new C2067zd();
        }
        return f9334b;
    }

    /* renamed from: b */
    public final Thread m4649b(Context context, String str) {
        if (!this.f9335a.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.xd

            /* renamed from: b */
            private final Context f9102b;

            /* renamed from: c */
            private final String f9103c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9102b = context;
                this.f9103c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.f9102b;
                String str2 = this.f9103c;
                C1842m3.m6600a(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7364Z)).booleanValue());
                if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7413g0)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((AbstractC1725ev) C1947so.m5642a(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", yd.a)).m7584i5(b.g3(context2), new wd(C2217a.m4040k(context2, "FA-Ads", "am", str2, bundle)));
                } catch (RemoteException | zzbbn | NullPointerException e) {
                    C1894po.m6177i("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}

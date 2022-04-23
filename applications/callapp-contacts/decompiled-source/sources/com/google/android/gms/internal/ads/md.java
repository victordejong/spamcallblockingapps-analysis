package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.measurement.ak;
import com.mopub.common.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/md.class */
public final class md {

    /* renamed from: a  reason: collision with root package name */
    private static md f28190a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f28191b = new AtomicBoolean(false);

    md() {
    }

    public static md a() {
        if (f28190a == null) {
            f28190a = new md();
        }
        return f28190a;
    }

    public final Thread a(final Context context, final String str) {
        if (!this.f28191b.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.mg

            /* renamed from: a  reason: collision with root package name */
            private final md f28194a;

            /* renamed from: b  reason: collision with root package name */
            private final Context f28195b;

            /* renamed from: c  reason: collision with root package name */
            private final String f28196c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28194a = this;
                this.f28195b = context;
                this.f28196c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.f28195b;
                String str2 = this.f28196c;
                aq.a(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) ekb.e().a(aq.aa)).booleanValue());
                if (((Boolean) ekb.e().a(aq.ah)).booleanValue()) {
                    bundle.putString("ad_storage", Constants.TAS_DENIED);
                    bundle.putString("analytics_storage", Constants.TAS_DENIED);
                }
                try {
                    ((afn) yz.a(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", mf.f28193a)).a(d.a(context2), new me(ak.a(context2, "FA-Ads", "am", str2, bundle).f28932c));
                } catch (RemoteException | zzbap | NullPointerException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}

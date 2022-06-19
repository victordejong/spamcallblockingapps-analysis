package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.measurement.C13363ak;
import com.mopub.common.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.ads.md */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/md.class */
public final class C12737md {

    /* renamed from: a */
    private static C12737md f49507a;

    /* renamed from: b */
    private AtomicBoolean f49508b = new AtomicBoolean(false);

    C12737md() {
    }

    /* renamed from: a */
    public static C12737md m14512a() {
        if (f49507a == null) {
            f49507a = new C12737md();
        }
        return f49507a;
    }

    /* renamed from: a */
    public final Thread m14511a(Context context, String str) {
        if (!this.f49508b.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.mg

            /* renamed from: a */
            private final C12737md f49511a;

            /* renamed from: b */
            private final Context f49512b;

            /* renamed from: c */
            private final String f49513c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49511a = this;
                this.f49512b = context;
                this.f49513c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.f49512b;
                String str2 = this.f49513c;
                C12187aq.m18474a(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) ekb.m14831e().m18571a(C12187aq.f42664aa)).booleanValue());
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42671ah)).booleanValue()) {
                    bundle.putString("ad_storage", Constants.TAS_DENIED);
                    bundle.putString("analytics_storage", Constants.TAS_DENIED);
                }
                try {
                    ((afn) C13086yz.m13904a(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", C12739mf.f49510a)).mo18769a(BinderC12129d.m18979a(context2), new BinderC12738me(C13363ak.m13314a(context2, "FA-Ads", "am", str2, bundle).f50599c));
                } catch (RemoteException | zzbap | NullPointerException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}

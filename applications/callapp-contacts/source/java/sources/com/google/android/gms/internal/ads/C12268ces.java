package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Set;
import java.util.concurrent.Callable;
import okhttp3.internal.http2.Http2Connection;
/* renamed from: com.google.android.gms.internal.ads.ces */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ces.class */
public final class C12268ces implements chb<cep> {

    /* renamed from: a */
    final ViewGroup f45635a;

    /* renamed from: b */
    final Context f45636b;

    /* renamed from: c */
    final Set<String> f45637c;

    /* renamed from: d */
    private final dbs f45638d;

    public C12268ces(dbs dbsVar, ViewGroup viewGroup, Context context, Set<String> set) {
        this.f45638d = dbsVar;
        this.f45637c = set;
        this.f45635a = viewGroup;
        this.f45636b = context;
    }

    /* renamed from: a */
    public static Boolean m17484a(Activity activity) {
        Window window = activity.getWindow();
        if (window == null || (window.getAttributes().flags & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) == 0) {
            try {
                boolean z = false;
                if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cep> mo17449a() {
        return this.f45638d.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cer

            /* renamed from: a */
            private final C12268ces f45634a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45634a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                C12268ces c12268ces = this.f45634a;
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42847dy)).booleanValue() || c12268ces.f45635a == null || !c12268ces.f45637c.contains("banner")) {
                    return (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42848dz)).booleanValue() || !c12268ces.f45637c.contains("native") || !(c12268ces.f45636b instanceof Activity)) ? new cep(null) : new cep(C12268ces.m17484a((Activity) c12268ces.f45636b));
                }
                return new cep(Boolean.valueOf(c12268ces.f45635a.isHardwareAccelerated()));
            }
        });
    }
}

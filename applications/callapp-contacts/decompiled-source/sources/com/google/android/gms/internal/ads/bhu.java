package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhu.class */
public final class bhu extends anp {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference<adt> f24481a;

    /* renamed from: b  reason: collision with root package name */
    final ate f24482b;

    /* renamed from: c  reason: collision with root package name */
    final aom f24483c;

    /* renamed from: d  reason: collision with root package name */
    final ul f24484d;
    boolean e = false;
    private final Context f;
    private final bap g;
    private final axv n;
    private final ars o;
    private final cvm p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bhu(ans ansVar, Context context, adt adtVar, bap bapVar, axv axvVar, ars arsVar, ate ateVar, aom aomVar, cov covVar, cvm cvmVar) {
        super(ansVar);
        this.f = context;
        this.g = bapVar;
        this.f24481a = new WeakReference<>(adtVar);
        this.n = axvVar;
        this.o = arsVar;
        this.f24482b = ateVar;
        this.f24483c = aomVar;
        this.p = cvmVar;
        this.f24484d = new vm(covVar.l);
    }

    public final boolean a(boolean z, Activity activity) {
        if (((Boolean) ekb.e().a(aq.ao)).booleanValue()) {
            zzr.zzkv();
            if (zzj.zzat(this.f)) {
                zzd.zzez("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.o.a();
                if (!((Boolean) ekb.e().a(aq.ap)).booleanValue()) {
                    return false;
                }
                this.p.a(this.h.f26222b.f26217b.f26197b);
                return false;
            }
        }
        if (this.e) {
            zzd.zzez("The rewarded ad have been showed.");
            this.o.a(cqh.a(cqj.AD_REUSED, null, null));
            return false;
        }
        this.e = true;
        this.n.a();
        Context context = activity;
        if (activity == null) {
            context = this.f;
        }
        try {
            this.g.a(z, context);
            this.n.b();
            return true;
        } catch (zzcbq e) {
            this.o.a(e);
            return false;
        }
    }

    public final void finalize() throws Throwable {
        try {
            adt adtVar = this.f24481a.get();
            if (((Boolean) ekb.e().a(aq.ek)).booleanValue()) {
                if (!this.e && adtVar != null) {
                    dbs dbsVar = zd.e;
                    adtVar.getClass();
                    dbsVar.execute(bht.a(adtVar));
                }
            } else if (adtVar != null) {
                adtVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}

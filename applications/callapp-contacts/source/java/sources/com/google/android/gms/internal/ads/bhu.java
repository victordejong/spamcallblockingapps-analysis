package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhu.class */
public final class bhu extends anp {

    /* renamed from: a */
    final WeakReference<adt> f43990a;

    /* renamed from: b */
    final ate f43991b;

    /* renamed from: c */
    final aom f43992c;

    /* renamed from: d */
    final AbstractC12962ul f43993d;

    /* renamed from: e */
    boolean f43994e = false;

    /* renamed from: f */
    private final Context f43995f;

    /* renamed from: g */
    private final bap f43996g;

    /* renamed from: n */
    private final axv f43997n;

    /* renamed from: o */
    private final ars f43998o;

    /* renamed from: p */
    private final cvm f43999p;

    public bhu(ans ansVar, Context context, adt adtVar, bap bapVar, axv axvVar, ars arsVar, ate ateVar, aom aomVar, cov covVar, cvm cvmVar) {
        super(ansVar);
        this.f43995f = context;
        this.f43996g = bapVar;
        this.f43990a = new WeakReference<>(adtVar);
        this.f43997n = axvVar;
        this.f43998o = arsVar;
        this.f43991b = ateVar;
        this.f43992c = aomVar;
        this.f43999p = cvmVar;
        this.f43993d = new BinderC12990vm(covVar.f46265l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [android.content.Context] */
    /* renamed from: a */
    public final boolean m17848a(boolean z, Activity activity) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42678ao)).booleanValue()) {
            zzr.zzkv();
            if (zzj.zzat(this.f43995f)) {
                zzd.zzez("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f43998o.mo17685a();
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42679ap)).booleanValue()) {
                    return false;
                }
                this.f43999p.m17163a(this.f42486h.f46319b.f46314b.f46290b);
                return false;
            }
        }
        if (this.f43994e) {
            zzd.zzez("The rewarded ad have been showed.");
            this.f43998o.mo17682a(cqh.m17323a(cqj.AD_REUSED, null, null));
            return false;
        }
        this.f43994e = true;
        this.f43997n.m18331a();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.f43995f;
        }
        try {
            this.f43996g.mo17566a(z, activity2);
            this.f43997n.m18330b();
            return true;
        } catch (zzcbq e) {
            this.f43998o.mo17683a(e);
            return false;
        }
    }

    public final void finalize() throws Throwable {
        try {
            adt adtVar = this.f43990a.get();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42886ek)).booleanValue()) {
                if (!this.f43994e && adtVar != null) {
                    dbs dbsVar = C13091zd.f50122e;
                    adtVar.getClass();
                    dbsVar.execute(bht.m17849a(adtVar));
                }
            } else if (adtVar != null) {
                adtVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}

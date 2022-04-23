package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjm.class */
public final class cjm extends ekv implements zzab, atk, efu {

    /* renamed from: a  reason: collision with root package name */
    final afq f25940a;

    /* renamed from: b  reason: collision with root package name */
    protected alb f25941b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f25942c;

    /* renamed from: d  reason: collision with root package name */
    private final ViewGroup f25943d;
    private final String f;
    private final cjk g;
    private final ckb h;
    private final zzbar i;
    private akl k;
    private AtomicBoolean e = new AtomicBoolean();
    private long j = -1;

    public cjm(afq afqVar, Context context, String str, cjk cjkVar, ckb ckbVar, zzbar zzbarVar) {
        this.f25943d = new FrameLayout(context);
        this.f25940a = afqVar;
        this.f25942c = context;
        this.f = str;
        this.g = cjkVar;
        this.h = ckbVar;
        ckbVar.f25971c.set(this);
        this.i = zzbarVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ RelativeLayout.LayoutParams a(alb albVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(albVar.b() ? 11 : 9);
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzr a(cjm cjmVar, alb albVar) {
        boolean b2 = albVar.b();
        int intValue = ((Integer) ekb.e().a(aq.cM)).intValue();
        zzq zzqVar = new zzq();
        zzqVar.size = 50;
        zzqVar.paddingLeft = b2 ? intValue : 0;
        zzqVar.paddingRight = b2 ? 0 : intValue;
        zzqVar.paddingTop = 0;
        zzqVar.paddingBottom = intValue;
        return new zzr(cjmVar.f25942c, zzqVar, cjmVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(cjm cjmVar, alb albVar) {
        if (albVar.f23519b != null) {
            albVar.f23519b.a(cjmVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.atk
    public final void a() {
        if (this.f25941b != null) {
            this.j = com.google.android.gms.ads.internal.zzr.zzlc().b();
            int i = this.f25941b.f23520c;
            if (i > 0) {
                akl aklVar = new akl(this.f25940a.c(), com.google.android.gms.ads.internal.zzr.zzlc());
                this.k = aklVar;
                aklVar.a(i, new Runnable(this) { // from class: com.google.android.gms.internal.ads.cjo

                    /* renamed from: a  reason: collision with root package name */
                    private final cjm f25948a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25948a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        final cjm cjmVar = this.f25948a;
                        ekb.a();
                        if (yq.b()) {
                            cjmVar.a(aks.e);
                        } else {
                            cjmVar.f25940a.b().execute(new Runnable(cjmVar) { // from class: com.google.android.gms.internal.ads.cjp

                                /* renamed from: a  reason: collision with root package name */
                                private final cjm f25949a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f25949a = cjmVar;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f25949a.a(aks.e);
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        synchronized (this) {
            if (this.e.compareAndSet(false, true)) {
                alb albVar = this.f25941b;
                if (!(albVar == null || albVar.f == null)) {
                    ckb ckbVar = this.h;
                    ckbVar.f25969a.set(this.f25941b.f);
                }
                this.h.b();
                this.f25943d.removeAllViews();
                akl aklVar = this.k;
                if (aklVar != null) {
                    com.google.android.gms.ads.internal.zzr.zzky().b(aklVar);
                }
                if (this.f25941b != null) {
                    long j = -1;
                    if (this.j != -1) {
                        j = com.google.android.gms.ads.internal.zzr.zzlc().b() - this.j;
                    }
                    this.f25941b.g.a(j, i);
                }
                destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.efu
    public final void b() {
        a(aks.f23510c);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() {
        synchronized (this) {
            o.b("destroy must be called on the main UI thread.");
            alb albVar = this.f25941b;
            if (albVar != null) {
                albVar.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.f;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() {
        boolean a2;
        synchronized (this) {
            a2 = this.g.a();
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void pause() {
        synchronized (this) {
            o.b("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() {
        synchronized (this) {
            o.b("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(bn bnVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
        this.h.a(egcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ri riVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(rn rnVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(tz tzVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) {
        synchronized (this) {
            o.b("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) {
        this.g.a(zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        synchronized (this) {
            o.b("loadAd must be called on the main UI thread.");
            com.google.android.gms.ads.internal.zzr.zzkv();
            if (zzj.zzbc(this.f25942c) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                this.h.a(cqh.a(cqj.APP_ID_MISSING, null, null));
                return false;
            } else if (isLoading()) {
                return false;
            } else {
                this.e = new AtomicBoolean();
                return this.g.a(zzvqVar, this.f, new cjr(this), new cjq(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final b zzki() {
        o.b("getAdFrame must be called on the main UI thread.");
        return d.a(this.f25943d);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        synchronized (this) {
            o.b("getAdSize must be called on the main UI thread.");
            alb albVar = this.f25941b;
            if (albVar == null) {
                return null;
            }
            return cps.a(this.f25942c, Collections.singletonList(albVar.F_()));
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzab
    public final void zzwg() {
        a(aks.f23511d);
    }
}

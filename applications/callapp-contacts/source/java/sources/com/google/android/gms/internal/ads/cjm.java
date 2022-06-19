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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjm.class */
public final class cjm extends ekv implements zzab, atk, efu {

    /* renamed from: a */
    final afq f45907a;

    /* renamed from: b */
    protected alb f45908b;

    /* renamed from: c */
    private final Context f45909c;

    /* renamed from: d */
    private final ViewGroup f45910d;

    /* renamed from: f */
    private final String f45912f;

    /* renamed from: g */
    private final cjk f45913g;

    /* renamed from: h */
    private final ckb f45914h;

    /* renamed from: i */
    private final zzbar f45915i;

    /* renamed from: k */
    private akl f45917k;

    /* renamed from: e */
    private AtomicBoolean f45911e = new AtomicBoolean();

    /* renamed from: j */
    private long f45916j = -1;

    public cjm(afq afqVar, Context context, String str, cjk cjkVar, ckb ckbVar, zzbar zzbarVar) {
        this.f45910d = new FrameLayout(context);
        this.f45907a = afqVar;
        this.f45909c = context;
        this.f45912f = str;
        this.f45913g = cjkVar;
        this.f45914h = ckbVar;
        ckbVar.f45953c.set(this);
        this.f45915i = zzbarVar;
    }

    /* renamed from: a */
    public static /* synthetic */ RelativeLayout.LayoutParams m17447a(alb albVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(albVar.m18594b() ? 11 : 9);
        return layoutParams;
    }

    /* renamed from: a */
    public static /* synthetic */ zzr m17445a(cjm cjmVar, alb albVar) {
        boolean m18594b = albVar.m18594b();
        int intValue = ((Integer) ekb.m14831e().m18571a(C12187aq.f42756cM)).intValue();
        zzq zzqVar = new zzq();
        zzqVar.size = 50;
        zzqVar.paddingLeft = m18594b ? intValue : 0;
        zzqVar.paddingRight = m18594b ? 0 : intValue;
        zzqVar.paddingTop = 0;
        zzqVar.paddingBottom = intValue;
        return new zzr(cjmVar.f45909c, zzqVar, cjmVar);
    }

    /* renamed from: b */
    public static /* synthetic */ void m17443b(cjm cjmVar, alb albVar) {
        if (albVar.f42343b != null) {
            albVar.f42343b.mo13777a(cjmVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.atk
    /* renamed from: a */
    public final void mo17433a() {
        if (this.f45908b == null) {
            return;
        }
        this.f45916j = com.google.android.gms.ads.internal.zzr.zzlc().mo19038b();
        int i = this.f45908b.f42344c;
        if (i <= 0) {
            return;
        }
        akl aklVar = new akl(this.f45907a.mo18732c(), com.google.android.gms.ads.internal.zzr.zzlc());
        this.f45917k = aklVar;
        aklVar.m18611a(i, new Runnable(this) { // from class: com.google.android.gms.internal.ads.cjo

            /* renamed from: a */
            private final cjm f45924a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45924a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final cjm cjmVar = this.f45924a;
                ekb.m14835a();
                if (C13077yq.m13938b()) {
                    cjmVar.m17448a(aks.f42333e);
                } else {
                    cjmVar.f45907a.mo18734b().execute(new Runnable(cjmVar) { // from class: com.google.android.gms.internal.ads.cjp

                        /* renamed from: a */
                        private final cjm f45925a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45925a = cjmVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f45925a.m17448a(aks.f42333e);
                        }
                    });
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: a */
    public final void m17448a(int i) {
        synchronized (this) {
            if (this.f45911e.compareAndSet(false, true)) {
                alb albVar = this.f45908b;
                if (albVar != null && albVar.f42347f != null) {
                    this.f45914h.f45951a.set(this.f45908b.f42347f);
                }
                this.f45914h.m17429b();
                this.f45910d.removeAllViews();
                akl aklVar = this.f45917k;
                if (aklVar != null) {
                    com.google.android.gms.ads.internal.zzr.zzky().m15111b(aklVar);
                }
                if (this.f45908b != null) {
                    ?? r11 = true;
                    if (this.f45916j != -1) {
                        r11 = com.google.android.gms.ads.internal.zzr.zzlc().mo19038b() - this.f45916j;
                    }
                    this.f45908b.f42348g.m18607a(r11 == true ? 1L : 0L, i);
                }
                destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.efu
    /* renamed from: b */
    public final void mo15081b() {
        m17448a(aks.f42331c);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() {
        synchronized (this) {
            C12045o.m19155b("destroy must be called on the main UI thread.");
            alb albVar = this.f45908b;
            if (albVar != null) {
                albVar.mo18235a();
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
            str = this.f45912f;
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
        boolean mo17390a;
        synchronized (this) {
            mo17390a = this.f45913g.mo17390a();
        }
        return mo17390a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void pause() {
        synchronized (this) {
            C12045o.m19155b("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() {
        synchronized (this) {
            C12045o.m19155b("resume must be called on the main UI thread.");
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
    public final void zza(AbstractC12246bn abstractC12246bn) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
        this.f45914h.m17430a(egcVar);
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
    public final void zza(AbstractC12878ri abstractC12878ri) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12883rn abstractC12883rn, String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12949tz abstractC12949tz) {
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
            C12045o.m19155b("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) {
        this.f45913g.m17437a(zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("loadAd must be called on the main UI thread.");
            com.google.android.gms.ads.internal.zzr.zzkv();
            if (zzj.zzbc(this.f45909c) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                this.f45914h.mo17319a(cqh.m17323a(cqj.APP_ID_MISSING, null, null));
                return false;
            } else if (isLoading()) {
                return false;
            } else {
                this.f45911e = new AtomicBoolean();
                return this.f45913g.mo17387a(zzvqVar, this.f45912f, new cjr(this), new cjq(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final AbstractC12126b zzki() {
        C12045o.m19155b("getAdFrame must be called on the main UI thread.");
        return BinderC12129d.m18979a(this.f45910d);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        synchronized (this) {
            C12045o.m19155b("getAdSize must be called on the main UI thread.");
            alb albVar = this.f45908b;
            if (albVar != null) {
                return cps.m17358a(this.f45909c, Collections.singletonList(albVar.m18595F_()));
            }
            return null;
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
        m17448a(aks.f42332d);
    }
}

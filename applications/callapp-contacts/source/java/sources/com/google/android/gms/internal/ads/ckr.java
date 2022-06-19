package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ckr.class */
public final class ckr extends ekv implements zzp, efu {

    /* renamed from: a */
    final afq f45973a;

    /* renamed from: b */
    protected all f45974b;

    /* renamed from: c */
    private final Context f45975c;

    /* renamed from: e */
    private final String f45977e;

    /* renamed from: f */
    private final ckp f45978f;

    /* renamed from: g */
    private final ckb f45979g;

    /* renamed from: i */
    private akl f45981i;

    /* renamed from: d */
    private AtomicBoolean f45976d = new AtomicBoolean();

    /* renamed from: h */
    private long f45980h = -1;

    public ckr(afq afqVar, Context context, String str, ckp ckpVar, ckb ckbVar) {
        this.f45973a = afqVar;
        this.f45975c = context;
        this.f45977e = str;
        this.f45978f = ckpVar;
        this.f45979g = ckbVar;
        ckbVar.f45954d.set(this);
    }

    /* renamed from: a */
    public static /* synthetic */ void m17425a(ckr ckrVar, all allVar) {
        if (allVar.f42357a != null) {
            allVar.f42357a.mo13777a(ckrVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: a */
    public final void m17427a(int i) {
        synchronized (this) {
            if (this.f45976d.compareAndSet(false, true)) {
                this.f45979g.m17429b();
                akl aklVar = this.f45981i;
                if (aklVar != null) {
                    zzr.zzky().m15111b(aklVar);
                }
                if (this.f45974b != null) {
                    ?? r10 = true;
                    if (this.f45980h != -1) {
                        r10 = zzr.zzlc().mo19038b() - this.f45980h;
                    }
                    this.f45974b.m18583a(r10 == true ? 1L : 0L, i);
                }
                destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.efu
    /* renamed from: b */
    public final void mo15081b() {
        m17427a(aks.f42331c);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() {
        synchronized (this) {
            C12045o.m19155b("destroy must be called on the main UI thread.");
            all allVar = this.f45974b;
            if (allVar != null) {
                allVar.mo18235a();
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
            str = this.f45977e;
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
            mo17390a = this.f45978f.mo17390a();
        }
        return mo17390a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        synchronized (this) {
            all allVar = this.f45974b;
            if (allVar != null) {
                allVar.m18583a(zzr.zzlc().mo19038b() - this.f45980h, aks.f42329a);
            }
        }
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
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        int i = ckz.f45997a[zzlVar.ordinal()];
        if (i == 1) {
            m17427a(aks.f42331c);
        } else if (i == 2) {
            m17427a(aks.f42330b);
        } else if (i == 3) {
            m17427a(aks.f42332d);
        } else if (i != 4) {
        } else {
            m17427a(aks.f42334f);
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12246bn abstractC12246bn) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
        this.f45979g.m17430a(egcVar);
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
        this.f45978f.m17437a(zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("loadAd must be called on the main UI thread.");
            zzr.zzkv();
            if (zzj.zzbc(this.f45975c) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                this.f45979g.mo17319a(cqh.m17323a(cqj.APP_ID_MISSING, null, null));
                return false;
            } else if (isLoading()) {
                return false;
            } else {
                this.f45976d = new AtomicBoolean();
                return this.f45978f.mo17387a(zzvqVar, this.f45977e, new ckw(this), new ckv(this));
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
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        synchronized (this) {
        }
        return null;
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

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        synchronized (this) {
            if (this.f45974b == null) {
                return;
            }
            this.f45980h = zzr.zzlc().mo19038b();
            int i = this.f45974b.f42358b;
            if (i <= 0) {
                return;
            }
            akl aklVar = new akl(this.f45973a.mo18732c(), zzr.zzlc());
            this.f45981i = aklVar;
            aklVar.m18611a(i, new Runnable(this) { // from class: com.google.android.gms.internal.ads.ckt

                /* renamed from: a */
                private final ckr f45988a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45988a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final ckr ckrVar = this.f45988a;
                    ckrVar.f45973a.mo18734b().execute(new Runnable(ckrVar) { // from class: com.google.android.gms.internal.ads.cku

                        /* renamed from: a */
                        private final ckr f45989a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45989a = ckrVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f45989a.m17427a(aks.f42333e);
                        }
                    });
                }
            });
        }
    }
}

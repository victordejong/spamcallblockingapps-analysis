package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ckr.class */
public final class ckr extends ekv implements zzp, efu {

    /* renamed from: a  reason: collision with root package name */
    final afq f25987a;

    /* renamed from: b  reason: collision with root package name */
    protected all f25988b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f25989c;
    private final String e;
    private final ckp f;
    private final ckb g;
    private akl i;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f25990d = new AtomicBoolean();
    private long h = -1;

    public ckr(afq afqVar, Context context, String str, ckp ckpVar, ckb ckbVar) {
        this.f25987a = afqVar;
        this.f25989c = context;
        this.e = str;
        this.f = ckpVar;
        this.g = ckbVar;
        ckbVar.f25972d.set(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ckr ckrVar, all allVar) {
        if (allVar.f23529a != null) {
            allVar.f23529a.a(ckrVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        synchronized (this) {
            if (this.f25990d.compareAndSet(false, true)) {
                this.g.b();
                akl aklVar = this.i;
                if (aklVar != null) {
                    zzr.zzky().b(aklVar);
                }
                if (this.f25988b != null) {
                    long j = -1;
                    if (this.h != -1) {
                        j = zzr.zzlc().b() - this.h;
                    }
                    this.f25988b.a(j, i);
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
            all allVar = this.f25988b;
            if (allVar != null) {
                allVar.a();
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
            str = this.e;
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
            a2 = this.f.a();
        }
        return a2;
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
            all allVar = this.f25988b;
            if (allVar != null) {
                allVar.a(zzr.zzlc().b() - this.h, aks.f23508a);
            }
        }
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
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        int i = ckz.f26003a[zzlVar.ordinal()];
        if (i == 1) {
            a(aks.f23510c);
        } else if (i == 2) {
            a(aks.f23509b);
        } else if (i == 3) {
            a(aks.f23511d);
        } else if (i == 4) {
            a(aks.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(bn bnVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
        this.g.a(egcVar);
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
        this.f.a(zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        synchronized (this) {
            o.b("loadAd must be called on the main UI thread.");
            zzr.zzkv();
            if (zzj.zzbc(this.f25989c) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                this.g.a(cqh.a(cqj.APP_ID_MISSING, null, null));
                return false;
            } else if (isLoading()) {
                return false;
            } else {
                this.f25990d = new AtomicBoolean();
                return this.f.a(zzvqVar, this.e, new ckw(this), new ckv(this));
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
            if (this.f25988b != null) {
                this.h = zzr.zzlc().b();
                int i = this.f25988b.f23530b;
                if (i > 0) {
                    akl aklVar = new akl(this.f25987a.c(), zzr.zzlc());
                    this.i = aklVar;
                    aklVar.a(i, new Runnable(this) { // from class: com.google.android.gms.internal.ads.ckt

                        /* renamed from: a  reason: collision with root package name */
                        private final ckr f25995a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f25995a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            final ckr ckrVar = this.f25995a;
                            ckrVar.f25987a.b().execute(new Runnable(ckrVar) { // from class: com.google.android.gms.internal.ads.cku

                                /* renamed from: a  reason: collision with root package name */
                                private final ckr f25996a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f25996a = ckrVar;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f25996a.a(aks.e);
                                }
                            });
                        }
                    });
                }
            }
        }
    }
}

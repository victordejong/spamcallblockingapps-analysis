package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byy.class */
public final class byy extends ekv implements aub {

    /* renamed from: a */
    private final Context f45130a;

    /* renamed from: b */
    private final clb f45131b;

    /* renamed from: c */
    private final String f45132c;

    /* renamed from: d */
    private final bza f45133d;

    /* renamed from: e */
    private zzvt f45134e;

    /* renamed from: f */
    private final cpq f45135f;

    /* renamed from: g */
    private alq f45136g;

    public byy(Context context, zzvt zzvtVar, String str, clb clbVar, bza bzaVar) {
        this.f45130a = context;
        this.f45131b = clbVar;
        this.f45134e = zzvtVar;
        this.f45132c = str;
        this.f45133d = bzaVar;
        this.f45135f = clbVar.f46008g;
        clbVar.f46007f.m18372a(this, clbVar.f46002a);
    }

    /* renamed from: a */
    private final void m17557a(zzvt zzvtVar) {
        synchronized (this) {
            this.f45135f.f46338b = zzvtVar;
            this.f45135f.f46353q = this.f45134e.zzciy;
        }
    }

    /* renamed from: a */
    private final boolean m17558a(zzvq zzvqVar) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("loadAd must be called on the main UI thread.");
            zzr.zzkv();
            if (!zzj.zzbc(this.f45130a) || zzvqVar.zzcip != null) {
                cqb.m17341a(this.f45130a, zzvqVar.zzcid);
                return this.f45131b.mo17387a(zzvqVar, this.f45132c, null, new bzb(this));
            }
            zzd.zzex("Failed to load the ad because app ID is missing.");
            bza bzaVar = this.f45133d;
            if (bzaVar != null) {
                bzaVar.mo17319a(cqh.m17323a(cqj.APP_ID_MISSING, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.aub
    /* renamed from: a */
    public final void mo17561a() {
        boolean z;
        synchronized (this) {
            ViewParent parent = this.f45131b.f46005d.getParent();
            if (!(parent instanceof View)) {
                z = false;
            } else {
                View view = (View) parent;
                z = zzr.zzkv().zza(view, view.getContext());
            }
            if (!z) {
                this.f45131b.f46007f.m18412a(60);
                return;
            }
            zzvt zzvtVar = this.f45135f.f46338b;
            alq alqVar = this.f45136g;
            zzvt zzvtVar2 = zzvtVar;
            if (alqVar != null) {
                zzvtVar2 = zzvtVar;
                if (alqVar.mo18542e() != null) {
                    zzvtVar2 = zzvtVar;
                    if (this.f45135f.f46353q) {
                        zzvtVar2 = cps.m17358a(this.f45130a, Collections.singletonList(this.f45136g.mo18542e()));
                    }
                }
            }
            m17557a(zzvtVar2);
            try {
                m17558a(this.f45135f.f46337a);
            } catch (RemoteException e) {
                zzd.zzez("Failed to refresh the banner ad.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() {
        synchronized (this) {
            C12045o.m19155b("destroy must be called on the main UI thread.");
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                alqVar.mo18235a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() {
        C12045o.m19155b("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.f45132c;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            alq alqVar = this.f45136g;
            if (alqVar == null || alqVar.f42490l == null) {
                return null;
            }
            return this.f45136g.f42490l.f43089a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() {
        synchronized (this) {
            C12045o.m19155b("getVideoController must be called from the main thread.");
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                return alqVar.mo18544c();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() {
        boolean mo17390a;
        synchronized (this) {
            mo17390a = this.f45131b.mo17390a();
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
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                alqVar.f42488j.m18432a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() {
        synchronized (this) {
            C12045o.m19155b("resume must be called on the main UI thread.");
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                alqVar.f42488j.m18431b(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
            C12045o.m19155b("setManualImpressionsEnabled must be called from the main thread.");
            this.f45135f.f46342f = z;
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
            C12045o.m19155b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f45131b.f46006e = abstractC12246bn;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) {
        C12045o.m19155b("setAdListener must be called on the main UI thread.");
        this.f45131b.f46004c.m17535a(ekcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) {
        C12045o.m19155b("setAdListener must be called on the main UI thread.");
        this.f45133d.m17551a(ekiVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) {
        C12045o.m19155b("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) {
        C12045o.m19155b("setAppEventListener must be called on the main UI thread.");
        this.f45133d.m17550a(eleVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) {
        synchronized (this) {
            C12045o.m19155b("setCorrelationIdProvider must be called on the main UI thread");
            this.f45135f.f46339c = elkVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
        C12045o.m19155b("setPaidEventListener must be called on the main UI thread.");
        this.f45133d.m17549a(emdVar);
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
            C12045o.m19155b("setVideoOptions must be called on the main UI thread.");
            this.f45135f.f46341e = zzaazVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) {
        synchronized (this) {
            C12045o.m19155b("setAdSize must be called on the main UI thread.");
            this.f45135f.f46338b = zzvtVar;
            this.f45134e = zzvtVar;
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                alqVar.mo18546a(this.f45131b.f46005d, zzvtVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        boolean m17558a;
        synchronized (this) {
            m17557a(this.f45134e);
            m17558a = m17558a(zzvqVar);
        }
        return m17558a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final AbstractC12126b zzki() {
        C12045o.m19155b("destroy must be called on the main UI thread.");
        return BinderC12129d.m18979a(this.f45131b.f46005d);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() {
        synchronized (this) {
            C12045o.m19155b("recordManualImpression must be called on the main UI thread.");
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                alqVar.mo18540g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        synchronized (this) {
            C12045o.m19155b("getAdSize must be called on the main UI thread.");
            alq alqVar = this.f45136g;
            if (alqVar != null) {
                return cps.m17358a(this.f45130a, Collections.singletonList(alqVar.mo18543d()));
            }
            return this.f45135f.f46338b;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() {
        synchronized (this) {
            alq alqVar = this.f45136g;
            if (alqVar == null || alqVar.f42490l == null) {
                return null;
            }
            return this.f45136g.f42490l.f43089a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        synchronized (this) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42888em)).booleanValue()) {
                return null;
            }
            alq alqVar = this.f45136g;
            if (alqVar == null) {
                return null;
            }
            return alqVar.f42490l;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() {
        return this.f45133d.m17545i();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() {
        return this.f45133d.m17546h();
    }
}

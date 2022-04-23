package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byy.class */
public final class byy extends ekv implements aub {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25429a;

    /* renamed from: b  reason: collision with root package name */
    private final clb f25430b;

    /* renamed from: c  reason: collision with root package name */
    private final String f25431c;

    /* renamed from: d  reason: collision with root package name */
    private final bza f25432d;
    private zzvt e;
    private final cpq f;
    private alq g;

    public byy(Context context, zzvt zzvtVar, String str, clb clbVar, bza bzaVar) {
        this.f25429a = context;
        this.f25430b = clbVar;
        this.e = zzvtVar;
        this.f25431c = str;
        this.f25432d = bzaVar;
        this.f = clbVar.g;
        clbVar.f.a(this, clbVar.f26008a);
    }

    private final void a(zzvt zzvtVar) {
        synchronized (this) {
            this.f.f26229b = zzvtVar;
            this.f.q = this.e.zzciy;
        }
    }

    private final boolean a(zzvq zzvqVar) throws RemoteException {
        synchronized (this) {
            o.b("loadAd must be called on the main UI thread.");
            zzr.zzkv();
            if (!zzj.zzbc(this.f25429a) || zzvqVar.zzcip != null) {
                cqb.a(this.f25429a, zzvqVar.zzcid);
                return this.f25430b.a(zzvqVar, this.f25431c, null, new bzb(this));
            }
            zzd.zzex("Failed to load the ad because app ID is missing.");
            bza bzaVar = this.f25432d;
            if (bzaVar != null) {
                bzaVar.a(cqh.a(cqj.APP_ID_MISSING, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final void a() {
        boolean z;
        synchronized (this) {
            ViewParent parent = this.f25430b.f26011d.getParent();
            if (!(parent instanceof View)) {
                z = false;
            } else {
                View view = (View) parent;
                z = zzr.zzkv().zza(view, view.getContext());
            }
            if (z) {
                zzvt zzvtVar = this.f.f26229b;
                alq alqVar = this.g;
                zzvt zzvtVar2 = zzvtVar;
                if (alqVar != null) {
                    zzvtVar2 = zzvtVar;
                    if (alqVar.e() != null) {
                        zzvtVar2 = zzvtVar;
                        if (this.f.q) {
                            zzvtVar2 = cps.a(this.f25429a, Collections.singletonList(this.g.e()));
                        }
                    }
                }
                a(zzvtVar2);
                try {
                    a(this.f.f26228a);
                } catch (RemoteException e) {
                    zzd.zzez("Failed to refresh the banner ad.");
                }
            } else {
                this.f25430b.f.a(60);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() {
        synchronized (this) {
            o.b("destroy must be called on the main UI thread.");
            alq alqVar = this.g;
            if (alqVar != null) {
                alqVar.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final Bundle getAdMetadata() {
        o.b("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.f25431c;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            alq alqVar = this.g;
            if (alqVar == null || alqVar.l == null) {
                return null;
            }
            return this.g.l.f23815a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() {
        synchronized (this) {
            o.b("getVideoController must be called from the main thread.");
            alq alqVar = this.g;
            if (alqVar == null) {
                return null;
            }
            return alqVar.c();
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() {
        boolean a2;
        synchronized (this) {
            a2 = this.f25430b.a();
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
            alq alqVar = this.g;
            if (alqVar != null) {
                alqVar.j.a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() {
        synchronized (this) {
            o.b("resume must be called on the main UI thread.");
            alq alqVar = this.g;
            if (alqVar != null) {
                alqVar.j.b(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
            o.b("setManualImpressionsEnabled must be called from the main thread.");
            this.f.f = z;
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
            o.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f25430b.e = bnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) {
        o.b("setAdListener must be called on the main UI thread.");
        this.f25430b.f26010c.a(ekcVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) {
        o.b("setAdListener must be called on the main UI thread.");
        this.f25432d.a(ekiVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) {
        o.b("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) {
        o.b("setAppEventListener must be called on the main UI thread.");
        this.f25432d.a(eleVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) {
        synchronized (this) {
            o.b("setCorrelationIdProvider must be called on the main UI thread");
            this.f.f26230c = elkVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
        o.b("setPaidEventListener must be called on the main UI thread.");
        this.f25432d.a(emdVar);
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
            o.b("setVideoOptions must be called on the main UI thread.");
            this.f.e = zzaazVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) {
        synchronized (this) {
            o.b("setAdSize must be called on the main UI thread.");
            this.f.f26229b = zzvtVar;
            this.e = zzvtVar;
            alq alqVar = this.g;
            if (alqVar != null) {
                alqVar.a(this.f25430b.f26011d, zzvtVar);
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
        boolean a2;
        synchronized (this) {
            a(this.e);
            a2 = a(zzvqVar);
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final b zzki() {
        o.b("destroy must be called on the main UI thread.");
        return d.a(this.f25430b.f26011d);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() {
        synchronized (this) {
            o.b("recordManualImpression must be called on the main UI thread.");
            alq alqVar = this.g;
            if (alqVar != null) {
                alqVar.g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        synchronized (this) {
            o.b("getAdSize must be called on the main UI thread.");
            alq alqVar = this.g;
            if (alqVar != null) {
                return cps.a(this.f25429a, Collections.singletonList(alqVar.d()));
            }
            return this.f.f26229b;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() {
        synchronized (this) {
            alq alqVar = this.g;
            if (alqVar == null || alqVar.l == null) {
                return null;
            }
            return this.g.l.f23815a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        synchronized (this) {
            if (!((Boolean) ekb.e().a(aq.em)).booleanValue()) {
                return null;
            }
            alq alqVar = this.g;
            if (alqVar == null) {
                return null;
            }
            return alqVar.l;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() {
        return this.f25432d.i();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() {
        return this.f25432d.h();
    }
}

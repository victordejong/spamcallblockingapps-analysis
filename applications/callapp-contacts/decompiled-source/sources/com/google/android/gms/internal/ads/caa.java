package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/caa.class */
public final class caa extends ekv {

    /* renamed from: a  reason: collision with root package name */
    private final zzvt f25469a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25470b;

    /* renamed from: c  reason: collision with root package name */
    private final cmr f25471c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25472d;
    private final bza e;
    private final cnc f;
    private azi g;
    private boolean h = ((Boolean) ekb.e().a(aq.aq)).booleanValue();

    public caa(Context context, zzvt zzvtVar, String str, cmr cmrVar, bza bzaVar, cnc cncVar) {
        this.f25469a = zzvtVar;
        this.f25472d = str;
        this.f25470b = context;
        this.f25471c = cmrVar;
        this.e = bzaVar;
        this.f = cncVar;
    }

    private final boolean a() {
        boolean z;
        synchronized (this) {
            azi aziVar = this.g;
            if (aziVar != null) {
                if (!aziVar.f24030a.f23668a.get()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void destroy() {
        synchronized (this) {
            o.b("destroy must be called on the main UI thread.");
            azi aziVar = this.g;
            if (aziVar != null) {
                aziVar.j.c(null);
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
            str = this.f25472d;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            azi aziVar = this.g;
            if (aziVar == null || aziVar.l == null) {
                return null;
            }
            return this.g.l.f23815a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() {
        boolean a2;
        synchronized (this) {
            a2 = this.f25471c.a();
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() {
        boolean a2;
        synchronized (this) {
            o.b("isLoaded must be called on the main UI thread.");
            a2 = a();
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void pause() {
        synchronized (this) {
            o.b("pause must be called on the main UI thread.");
            azi aziVar = this.g;
            if (aziVar != null) {
                aziVar.j.a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() {
        synchronized (this) {
            o.b("resume must be called on the main UI thread.");
            azi aziVar = this.g;
            if (aziVar != null) {
                aziVar.j.b(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            o.b("setImmersiveMode must be called on the main UI thread.");
            this.h = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void showInterstitial() {
        synchronized (this) {
            o.b("showInterstitial must be called on the main UI thread.");
            azi aziVar = this.g;
            if (aziVar != null) {
                aziVar.a(this.h, null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(bn bnVar) {
        synchronized (this) {
            o.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f25471c.f26086d = bnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(egc egcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekc ekcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(eki ekiVar) {
        o.b("setAdListener must be called on the main UI thread.");
        this.e.a(ekiVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) {
        o.b("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) {
        o.b("setAppEventListener must be called on the main UI thread.");
        this.e.a(eleVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
        this.e.f25438b.set(elmVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
        o.b("setPaidEventListener must be called on the main UI thread.");
        this.e.a(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ri riVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(rn rnVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(tz tzVar) {
        this.f.a(tzVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
        this.e.f25437a.set(ekjVar);
        zza(zzvqVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvt zzvtVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzwc zzwcVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzzj zzzjVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean zza(zzvq zzvqVar) {
        synchronized (this) {
            o.b("loadAd must be called on the main UI thread.");
            zzr.zzkv();
            if (zzj.zzbc(this.f25470b) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                bza bzaVar = this.e;
                if (bzaVar != null) {
                    bzaVar.a(cqh.a(cqj.APP_ID_MISSING, null, null));
                }
                return false;
            } else if (a()) {
                return false;
            } else {
                cqb.a(this.f25470b, zzvqVar.zzcid);
                this.g = null;
                return this.f25471c.a(zzvqVar, this.f25472d, new cms(this.f25469a), new cad(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(b bVar) {
        synchronized (this) {
            if (this.g == null) {
                zzd.zzez("Interstitial can not be shown before loaded.");
                this.e.a_(cqh.a(cqj.NOT_READY, null, null));
                return;
            }
            this.g.a(this.h, (Activity) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final b zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzkj() {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final zzvt zzkk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String zzkl() {
        synchronized (this) {
            azi aziVar = this.g;
            if (aziVar == null || aziVar.l == null) {
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
            azi aziVar = this.g;
            if (aziVar == null) {
                return null;
            }
            return aziVar.l;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() {
        return this.e.i();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() {
        return this.e.h();
    }
}

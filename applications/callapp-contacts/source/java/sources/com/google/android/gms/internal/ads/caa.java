package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/caa.class */
public final class caa extends ekv {

    /* renamed from: a */
    private final zzvt f45178a;

    /* renamed from: b */
    private final Context f45179b;

    /* renamed from: c */
    private final cmr f45180c;

    /* renamed from: d */
    private final String f45181d;

    /* renamed from: e */
    private final bza f45182e;

    /* renamed from: f */
    private final cnc f45183f;

    /* renamed from: g */
    private azi f45184g;

    /* renamed from: h */
    private boolean f45185h = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42680aq)).booleanValue();

    public caa(Context context, zzvt zzvtVar, String str, cmr cmrVar, bza bzaVar, cnc cncVar) {
        this.f45178a = zzvtVar;
        this.f45181d = str;
        this.f45179b = context;
        this.f45180c = cmrVar;
        this.f45182e = bzaVar;
        this.f45183f = cncVar;
    }

    /* renamed from: a */
    private final boolean m17531a() {
        boolean z;
        synchronized (this) {
            azi aziVar = this.f45184g;
            if (aziVar != null) {
                if (!aziVar.f43344a.f42527a.get()) {
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
            C12045o.m19155b("destroy must be called on the main UI thread.");
            azi aziVar = this.f45184g;
            if (aziVar != null) {
                aziVar.f42488j.m18430c(null);
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
            str = this.f45181d;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final String getMediationAdapterClassName() {
        synchronized (this) {
            azi aziVar = this.f45184g;
            if (aziVar == null || aziVar.f42490l == null) {
                return null;
            }
            return this.f45184g.f42490l.f43089a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emk getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isLoading() {
        boolean mo17390a;
        synchronized (this) {
            mo17390a = this.f45180c.mo17390a();
        }
        return mo17390a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final boolean isReady() {
        boolean m17531a;
        synchronized (this) {
            C12045o.m19155b("isLoaded must be called on the main UI thread.");
            m17531a = m17531a();
        }
        return m17531a;
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void pause() {
        synchronized (this) {
            C12045o.m19155b("pause must be called on the main UI thread.");
            azi aziVar = this.f45184g;
            if (aziVar != null) {
                aziVar.f42488j.m18432a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void resume() {
        synchronized (this) {
            C12045o.m19155b("resume must be called on the main UI thread.");
            azi aziVar = this.f45184g;
            if (aziVar != null) {
                aziVar.f42488j.m18431b(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            C12045o.m19155b("setImmersiveMode must be called on the main UI thread.");
            this.f45185h = z;
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
            C12045o.m19155b("showInterstitial must be called on the main UI thread.");
            azi aziVar = this.f45184g;
            if (aziVar == null) {
                return;
            }
            aziVar.m18309a(this.f45185h, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12246bn abstractC12246bn) {
        synchronized (this) {
            C12045o.m19155b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f45180c.f46094d = abstractC12246bn;
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
        C12045o.m19155b("setAdListener must be called on the main UI thread.");
        this.f45182e.m17551a(ekiVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ekz ekzVar) {
        C12045o.m19155b("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(ele eleVar) {
        C12045o.m19155b("setAppEventListener must be called on the main UI thread.");
        this.f45182e.m17550a(eleVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elk elkVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(elm elmVar) {
        this.f45182e.f45142b.set(elmVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(emd emdVar) {
        C12045o.m19155b("setPaidEventListener must be called on the main UI thread.");
        this.f45182e.m17549a(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12878ri abstractC12878ri) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12883rn abstractC12883rn, String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(AbstractC12949tz abstractC12949tz) {
        this.f45183f.m17404a(abstractC12949tz);
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzaaz zzaazVar) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zza(zzvq zzvqVar, ekj ekjVar) {
        this.f45182e.f45141a.set(ekjVar);
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
            C12045o.m19155b("loadAd must be called on the main UI thread.");
            zzr.zzkv();
            if (zzj.zzbc(this.f45179b) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                bza bzaVar = this.f45182e;
                if (bzaVar != null) {
                    bzaVar.mo17319a(cqh.m17323a(cqj.APP_ID_MISSING, null, null));
                }
                return false;
            } else if (m17531a()) {
                return false;
            } else {
                cqb.m17341a(this.f45179b, zzvqVar.zzcid);
                this.f45184g = null;
                return this.f45180c.mo17387a(zzvqVar, this.f45181d, new cms(this.f45178a), new cad(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final void zze(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            if (this.f45184g == null) {
                zzd.zzez("Interstitial can not be shown before loaded.");
                this.f45182e.mo17402a_(cqh.m17323a(cqj.NOT_READY, null, null));
                return;
            }
            this.f45184g.m18309a(this.f45185h, (Activity) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final AbstractC12126b zzki() {
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
            azi aziVar = this.f45184g;
            if (aziVar == null || aziVar.f42490l == null) {
                return null;
            }
            return this.f45184g.f42490l.f43089a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final emj zzkm() {
        synchronized (this) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42888em)).booleanValue()) {
                return null;
            }
            azi aziVar = this.f45184g;
            if (aziVar == null) {
                return null;
            }
            return aziVar.f42490l;
        }
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final ele zzkn() {
        return this.f45182e.m17545i();
    }

    @Override // com.google.android.gms.internal.ads.ekw
    public final eki zzko() {
        return this.f45182e.m17546h();
    }
}

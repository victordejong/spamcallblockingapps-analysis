package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbys;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3592gr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczu.class */
public final class zzczu extends zzxf {

    /* renamed from: a */
    public final zzbix f26822a;

    /* renamed from: b */
    public final Context f26823b;

    /* renamed from: c */
    public final Executor f26824c;

    /* renamed from: h */
    public final zzdom f26829h;

    /* renamed from: i */
    public zzaby f26830i;

    /* renamed from: j */
    public zzcbe f26831j;

    /* renamed from: k */
    public zzdzc<zzcbe> f26832k;

    /* renamed from: d */
    public final zzczs f26825d = new zzczs();

    /* renamed from: e */
    public final zzczr f26826e = new zzczr();

    /* renamed from: f */
    public final zzdmc f26827f = new zzdmc(new zzdpw());

    /* renamed from: g */
    public final zzczn f26828g = new zzczn();

    /* renamed from: l */
    public boolean f26833l = false;

    public zzczu(zzbix zzbixVar, Context context, zzvn zzvnVar, String str) {
        zzdom zzdomVar = new zzdom();
        this.f26829h = zzdomVar;
        this.f26822a = zzbixVar;
        zzdomVar.m13432a(zzvnVar);
        zzdomVar.m13429a(str);
        this.f26824c = zzbixVar.mo15396a();
        this.f26823b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() {
        return this.f26826e.m13731a();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() {
        Preconditions.m17286a("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() {
        return null;
    }

    /* renamed from: Q1 */
    public final boolean m13725Q1() {
        boolean z;
        synchronized (this) {
            if (this.f26831j != null) {
                if (!this.f26831j.m14849g()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() {
        return this.f26825d.m13727a();
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() {
        synchronized (this) {
            if (this.f26831j == null || this.f26831j.m15166d() == null) {
                return null;
            }
            return this.f26831j.m15166d().mo11114a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) {
        synchronized (this) {
            this.f26829h.m13438a(zzaakVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) {
        synchronized (this) {
            Preconditions.m17286a("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f26830i = zzabyVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10962a(zzari zzariVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10961a(zzaro zzaroVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10960a(zzaug zzaugVar) {
        this.f26827f.m13506a(zzaugVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) {
        Preconditions.m17286a("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) {
        Preconditions.m17286a("setAppEventListener must be called on the main UI thread.");
        this.f26826e.m13730a(zzxkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) {
        synchronized (this) {
            Preconditions.m17286a("setCorrelationIdProvider must be called on the main UI thread");
            this.f26829h.m13430a(zzxqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) {
        Preconditions.m17286a("setPaidEventListener must be called on the main UI thread.");
        this.f26828g.m13733a(zzyiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) {
        synchronized (this) {
            Preconditions.m17286a("setImmersiveMode must be called on the main UI thread.");
            this.f26833l = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) {
        Preconditions.m17286a("setAdListener must be called on the main UI thread.");
        this.f26825d.m13726a(zzwtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() {
        boolean Q1;
        synchronized (this) {
            Preconditions.m17286a("isLoaded must be called on the main UI thread.");
            Q1 = m13725Q1();
        }
        return Q1;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) {
        zzcce zzcceVar;
        synchronized (this) {
            Preconditions.m17286a("loadAd must be called on the main UI thread.");
            zzp.m17969c();
            if (!zzayu.m16078p(this.f26823b) || zzvgVar.f29019s != null) {
                if (this.f26832k == null && !m13725Q1()) {
                    zzdox.m13386a(this.f26823b, zzvgVar.f29006f);
                    this.f26831j = null;
                    zzdom zzdomVar = this.f26829h;
                    zzdomVar.m13433a(zzvgVar);
                    zzdok d = zzdomVar.m13420d();
                    if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23813f4)).booleanValue()) {
                        zzccd l = this.f26822a.mo15373l();
                        zzbtp.zza zzaVar = new zzbtp.zza();
                        zzaVar.m15065a(this.f26823b);
                        zzaVar.m15061a(d);
                        zzcceVar = l.mo14818b(zzaVar.m15066a()).mo14816f(new zzbys.zza().m14923a()).mo14819a(new zzcyn(this.f26830i)).mo14817d();
                    } else {
                        zzbys.zza zzaVar2 = new zzbys.zza();
                        if (this.f26827f != null) {
                            zzaVar2.m14919a((zzbuh) this.f26827f, this.f26822a.mo15396a());
                            zzaVar2.m14915a((zzbvs) this.f26827f, this.f26822a.mo15396a());
                            zzaVar2.m14918a((zzbui) this.f26827f, this.f26822a.mo15396a());
                        }
                        zzccd l2 = this.f26822a.mo15373l();
                        zzbtp.zza zzaVar3 = new zzbtp.zza();
                        zzaVar3.m15065a(this.f26823b);
                        zzaVar3.m15061a(d);
                        zzccd b = l2.mo14818b(zzaVar3.m15066a());
                        zzaVar2.m14919a((zzbuh) this.f26825d, this.f26822a.mo15396a());
                        zzaVar2.m14915a((zzbvs) this.f26825d, this.f26822a.mo15396a());
                        zzaVar2.m14918a((zzbui) this.f26825d, this.f26822a.mo15396a());
                        zzaVar2.m14910a((zzux) this.f26825d, this.f26822a.mo15396a());
                        zzaVar2.m14922a(this.f26826e, this.f26822a.mo15396a());
                        zzaVar2.m14913a(this.f26828g, this.f26822a.mo15396a());
                        zzcceVar = b.mo14816f(zzaVar2.m14923a()).mo14819a(new zzcyn(this.f26830i)).mo14817d();
                    }
                    zzdzc<zzcbe> b2 = zzcceVar.mo14815a().m15123b();
                    this.f26832k = b2;
                    zzdyq.m12991a(b2, new C3592gr(this, zzcceVar), this.f26824c);
                    return true;
                }
                return false;
            }
            zzbbq.m15856b("Failed to load the ad because app ID is missing.");
            if (this.f26825d != null) {
                this.f26825d.mo13335a(zzdpe.m13339a(zzdpg.APP_ID_MISSING, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: d */
    public final void mo10945d(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void destroy() {
        synchronized (this) {
            Preconditions.m17286a("destroy must be called on the main UI thread.");
            if (this.f26831j != null) {
                this.f26831j.m15167c().m15027d(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) {
        synchronized (this) {
            Preconditions.m17286a("setManualImpressionsEnabled must be called from the main thread.");
            this.f26829h.m13423b(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() {
        String b;
        synchronized (this) {
            b = this.f26829h.m13426b();
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() {
        synchronized (this) {
            if (this.f26831j == null || this.f26831j.m15166d() == null) {
                return null;
            }
            return this.f26831j.m15166d().mo11114a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() {
        synchronized (this) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23697J3)).booleanValue()) {
                return null;
            }
            if (this.f26831j == null) {
                return null;
            }
            return this.f26831j.m15166d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() {
        boolean z;
        synchronized (this) {
            if (this.f26832k != null) {
                if (!this.f26832k.isDone()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() {
        synchronized (this) {
            Preconditions.m17286a("pause must be called on the main UI thread.");
            if (this.f26831j != null) {
                this.f26831j.m15167c().m15030a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() {
        synchronized (this) {
            Preconditions.m17286a("resume must be called on the main UI thread.");
            if (this.f26831j != null) {
                this.f26831j.m15167c().m15028c(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() {
        synchronized (this) {
            Preconditions.m17286a("showInterstitial must be called on the main UI thread.");
            if (this.f26831j != null) {
                this.f26831j.m14850a(this.f26833l);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() {
    }
}

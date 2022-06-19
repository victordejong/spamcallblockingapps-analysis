package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cop.class */
public final class cop extends AbstractBinderC12945tv {

    /* renamed from: a */
    private final coa f46206a;

    /* renamed from: b */
    private final cnc f46207b;

    /* renamed from: c */
    private final cpj f46208c;

    /* renamed from: d */
    private bhu f46209d;

    /* renamed from: e */
    private boolean f46210e = false;

    public cop(coa coaVar, cnc cncVar, cpj cpjVar) {
        this.f46206a = coaVar;
        this.f46207b = cncVar;
        this.f46208c = cpjVar;
    }

    /* renamed from: j */
    private final boolean m17377j() {
        boolean z;
        synchronized (this) {
            bhu bhuVar = this.f46209d;
            if (bhuVar != null) {
                if (!bhuVar.f43992c.f42527a.get()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14151a() throws RemoteException {
        synchronized (this) {
            mo14150a((AbstractC12126b) null);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14150a(AbstractC12126b abstractC12126b) throws RemoteException {
        Activity activity;
        synchronized (this) {
            C12045o.m19155b("showAd must be called on the main UI thread.");
            if (this.f46209d == null) {
                return;
            }
            if (abstractC12126b != null) {
                Object m18980a = BinderC12129d.m18980a(abstractC12126b);
                if (m18980a instanceof Activity) {
                    activity = (Activity) m18980a;
                    this.f46209d.m17848a(this.f46210e, activity);
                }
            }
            activity = null;
            this.f46209d.m17848a(this.f46210e, activity);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14149a(ekz ekzVar) {
        C12045o.m19155b("setAdMetadataListener can only be called from the UI thread.");
        if (ekzVar == null) {
            this.f46207b.m17407a((AdMetadataListener) null);
        } else {
            this.f46207b.m17407a(new cor(this, ekzVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14148a(AbstractC12940tq abstractC12940tq) {
        C12045o.m19155b("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f46207b.f46131d.set(abstractC12940tq);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14147a(AbstractC12949tz abstractC12949tz) throws RemoteException {
        C12045o.m19155b("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f46207b.m17404a(abstractC12949tz);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14146a(zzavt zzavtVar) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("loadAd must be called on the main UI thread.");
            if (C12190as.m18437a((String) ekb.m14831e().m18571a(C12187aq.f42824db), zzavtVar.zzbvf)) {
                return;
            }
            if (m17377j()) {
                if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42826dd)).booleanValue()) {
                    return;
                }
            }
            coc cocVar = new coc(null);
            this.f46209d = null;
            this.f46206a.m17389a(cpg.f46307a);
            this.f46206a.mo17387a(zzavtVar.zzdvn, zzavtVar.zzbvf, cocVar, new cos(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14145a(String str) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("setUserId must be called on the main UI thread.");
            this.f46208c.f46316a = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14144a(boolean z) {
        synchronized (this) {
            C12045o.m19155b("setImmersiveMode must be called on the main UI thread.");
            this.f46210e = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: b */
    public final Bundle mo14143b() {
        C12045o.m19155b("getAdMetadata can only be called from the UI thread.");
        bhu bhuVar = this.f46209d;
        return bhuVar != null ? bhuVar.f43991b.m18420a() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: b */
    public final void mo14142b(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            C12045o.m19155b("pause must be called on the main UI thread.");
            if (this.f46209d != null) {
                this.f46209d.f42488j.m18432a(abstractC12126b == null ? null : (Context) BinderC12129d.m18980a(abstractC12126b));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: b */
    public final void mo14141b(String str) throws RemoteException {
        synchronized (this) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42638aA)).booleanValue()) {
                return;
            }
            C12045o.m19155b("#008 Must be called on the main UI thread.: setCustomData");
            this.f46208c.f46317b = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: c */
    public final void mo14139c(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            C12045o.m19155b("resume must be called on the main UI thread.");
            if (this.f46209d != null) {
                this.f46209d.f42488j.m18431b(abstractC12126b == null ? null : (Context) BinderC12129d.m18980a(abstractC12126b));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: c */
    public final void mo14138c(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: c */
    public final boolean mo14140c() throws RemoteException {
        C12045o.m19155b("isLoaded must be called on the main UI thread.");
        return m17377j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: d */
    public final void mo14137d() {
        mo14142b((AbstractC12126b) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: d */
    public final void mo14136d(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            C12045o.m19155b("destroy must be called on the main UI thread.");
            this.f46207b.m17407a((AdMetadataListener) null);
            if (this.f46209d != null) {
                this.f46209d.f42488j.m18430c(abstractC12126b == null ? null : (Context) BinderC12129d.m18980a(abstractC12126b));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: e */
    public final void mo14135e() {
        mo14139c((AbstractC12126b) null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: f */
    public final void mo14134f() throws RemoteException {
        mo14136d(null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: g */
    public final String mo14133g() throws RemoteException {
        synchronized (this) {
            bhu bhuVar = this.f46209d;
            if (bhuVar == null || bhuVar.f42490l == null) {
                return null;
            }
            return this.f46209d.f42490l.f43089a;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: h */
    public final boolean mo14132h() {
        bhu bhuVar = this.f46209d;
        if (bhuVar != null) {
            adt adtVar = bhuVar.f43990a.get();
            return adtVar != null && !adtVar.mo13792R();
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: i */
    public final emj mo14131i() throws RemoteException {
        synchronized (this) {
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42888em)).booleanValue()) {
                return null;
            }
            bhu bhuVar = this.f46209d;
            if (bhuVar == null) {
                return null;
            }
            return bhuVar.f42490l;
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.mediation.AbstractC2364h;
import com.google.android.gms.ads.mediation.AbstractC2368l;
import com.google.android.gms.ads.mediation.AbstractC2370n;
import com.google.android.gms.ads.mediation.C2373q;
import com.google.android.gms.ads.mediation.C2381w;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.p119b.AbstractC2263i;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.internal.ads.lm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lm.class */
public final class C3305lm implements AbstractC2364h, AbstractC2368l, AbstractC2370n {

    /* renamed from: a */
    private final AbstractC3286ku f16916a;

    /* renamed from: b */
    private C2373q f16917b;

    /* renamed from: c */
    private C2381w f16918c;

    /* renamed from: d */
    private AbstractC2263i f16919d;

    public C3305lm(AbstractC3286ku abstractC3286ku) {
        this.f16916a = abstractC3286ku;
    }

    /* renamed from: a */
    private static void m7627a(MediationNativeAdapter mediationNativeAdapter, C2381w c2381w, C2373q c2373q) {
        if (mediationNativeAdapter instanceof AdMobAdapter) {
            return;
        }
        C2387p c2387p = new C2387p();
        c2387p.m14615a(new BinderC3302lj());
        if (c2381w != null && c2381w.m14637k()) {
            c2381w.m14659a(c2387p);
        }
        if (c2373q == null || !c2373q.m14693h()) {
            return;
        }
        c2373q.m14704a(c2387p);
    }

    /* renamed from: a */
    public final C2373q m7639a() {
        return this.f16917b;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: a */
    public final void mo7638a(MediationBannerAdapter mediationBannerAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLoaded.");
        try {
            this.f16916a.mo7576e();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: a */
    public final void mo7637a(MediationBannerAdapter mediationBannerAdapter, int i) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try {
            this.f16916a.mo7590a(i);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: a */
    public final void mo7636a(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAppEvent.");
        try {
            this.f16916a.mo7582a(str, str2);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2368l
    /* renamed from: a */
    public final void mo7635a(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLoaded.");
        try {
            this.f16916a.mo7576e();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2368l
    /* renamed from: a */
    public final void mo7634a(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.f16916a.mo7590a(i);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: a */
    public final void mo7633a(MediationNativeAdapter mediationNativeAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdOpened.");
        try {
            this.f16916a.mo7577d();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: a */
    public final void mo7632a(MediationNativeAdapter mediationNativeAdapter, int i) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.f16916a.mo7590a(i);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: a */
    public final void mo7631a(MediationNativeAdapter mediationNativeAdapter, AbstractC2263i abstractC2263i) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(abstractC2263i.mo10580a());
        C3645yb.m6751b(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f16919d = abstractC2263i;
        try {
            this.f16916a.mo7576e();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: a */
    public final void mo7630a(MediationNativeAdapter mediationNativeAdapter, AbstractC2263i abstractC2263i, String str) {
        if (!(abstractC2263i instanceof C2909cw)) {
            C3645yb.m6745e("Unexpected native custom template ad type.");
            return;
        }
        try {
            this.f16916a.mo7587a(((C2909cw) abstractC2263i).m10578b(), str);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: a */
    public final void mo7629a(MediationNativeAdapter mediationNativeAdapter, C2373q c2373q) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLoaded.");
        this.f16917b = c2373q;
        this.f16918c = null;
        m7627a(mediationNativeAdapter, this.f16918c, this.f16917b);
        try {
            this.f16916a.mo7576e();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: a */
    public final void mo7628a(MediationNativeAdapter mediationNativeAdapter, C2381w c2381w) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLoaded.");
        this.f16918c = c2381w;
        this.f16917b = null;
        m7627a(mediationNativeAdapter, this.f16918c, this.f16917b);
        try {
            this.f16916a.mo7576e();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    public final C2381w m7626b() {
        return this.f16918c;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: b */
    public final void mo7625b(MediationBannerAdapter mediationBannerAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdOpened.");
        try {
            this.f16916a.mo7577d();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2368l
    /* renamed from: b */
    public final void mo7624b(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdOpened.");
        try {
            this.f16916a.mo7577d();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: b */
    public final void mo7623b(MediationNativeAdapter mediationNativeAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdClosed.");
        try {
            this.f16916a.mo7581b();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: c */
    public final AbstractC2263i m7622c() {
        return this.f16919d;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: c */
    public final void mo7621c(MediationBannerAdapter mediationBannerAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdClosed.");
        try {
            this.f16916a.mo7581b();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2368l
    /* renamed from: c */
    public final void mo7620c(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdClosed.");
        try {
            this.f16916a.mo7581b();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: c */
    public final void mo7619c(MediationNativeAdapter mediationNativeAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLeftApplication.");
        try {
            this.f16916a.mo7578c();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: d */
    public final void mo7618d(MediationBannerAdapter mediationBannerAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLeftApplication.");
        try {
            this.f16916a.mo7578c();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2368l
    /* renamed from: d */
    public final void mo7617d(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLeftApplication.");
        try {
            this.f16916a.mo7578c();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: d */
    public final void mo7616d(MediationNativeAdapter mediationNativeAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C2373q c2373q = this.f16917b;
        C2381w c2381w = this.f16918c;
        if (this.f16919d == null) {
            if (c2373q == null && c2381w == null) {
                C3645yb.m6744e("#007 Could not call remote method.", null);
                return;
            } else if (c2381w != null && !c2381w.m14628t()) {
                C3645yb.m6751b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (c2373q != null && !c2373q.m14702b()) {
                C3645yb.m6751b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        C3645yb.m6751b("Adapter called onAdClicked.");
        try {
            this.f16916a.mo7591a();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2364h
    /* renamed from: e */
    public final void mo7615e(MediationBannerAdapter mediationBannerAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdClicked.");
        try {
            this.f16916a.mo7591a();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2368l
    /* renamed from: e */
    public final void mo7614e(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdClicked.");
        try {
            this.f16916a.mo7591a();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2370n
    /* renamed from: e */
    public final void mo7613e(MediationNativeAdapter mediationNativeAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C2373q c2373q = this.f16917b;
        C2381w c2381w = this.f16918c;
        if (this.f16919d == null) {
            if (c2373q == null && c2381w == null) {
                C3645yb.m6744e("#007 Could not call remote method.", null);
                return;
            } else if (c2381w != null && !c2381w.m14629s()) {
                C3645yb.m6751b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (c2373q != null && !c2373q.m14707a()) {
                C3645yb.m6751b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        C3645yb.m6751b("Adapter called onAdImpression.");
        try {
            this.f16916a.mo7575f();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }
}

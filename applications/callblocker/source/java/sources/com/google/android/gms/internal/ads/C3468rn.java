package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AbstractC2392b;
import com.google.android.gms.ads.reward.mediation.AbstractC2395a;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.BinderC2734b;
/* renamed from: com.google.android.gms.internal.ads.rn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rn.class */
public final class C3468rn implements AbstractC2395a {

    /* renamed from: a */
    private final AbstractC3467rm f17310a;

    public C3468rn(AbstractC3467rm abstractC3467rm) {
        this.f17310a = abstractC3467rm;
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: a */
    public final void mo7246a(Bundle bundle) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdMetadataChanged.");
        try {
            this.f17310a.mo7231a(bundle);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: a */
    public final void mo7245a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onInitializationSucceeded.");
        try {
            this.f17310a.mo7230a(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: a */
    public final void mo7244a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdFailedToLoad.");
        try {
            this.f17310a.mo7226b(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: a */
    public final void mo7243a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, AbstractC2392b abstractC2392b) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onRewarded.");
        try {
            if (abstractC2392b != null) {
                this.f17310a.mo7228a(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter), new C3472rr(abstractC2392b));
            } else {
                this.f17310a.mo7228a(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter), new C3472rr("", 1));
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: b */
    public final void mo7242b(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLoaded.");
        try {
            this.f17310a.mo7227b(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: c */
    public final void mo7241c(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdOpened.");
        try {
            this.f17310a.mo7225c(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: d */
    public final void mo7240d(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onVideoStarted.");
        try {
            this.f17310a.mo7224d(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: e */
    public final void mo7239e(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdClosed.");
        try {
            this.f17310a.mo7223e(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: f */
    public final void mo7238f(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onAdLeftApplication.");
        try {
            this.f17310a.mo7221g(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.AbstractC2395a
    /* renamed from: g */
    public final void mo7237g(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        C3645yb.m6751b("Adapter called onVideoCompleted.");
        try {
            this.f17310a.mo7220h(BinderC2734b.m13794a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }
}

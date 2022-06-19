package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.C5845s;
import com.google.android.gms.ads.formats.AbstractC5610d;
import com.google.android.gms.ads.mediation.AbstractC5776i;
import com.google.android.gms.ads.mediation.AbstractC5781n;
import com.google.android.gms.ads.mediation.AbstractC5783p;
import com.google.android.gms.ads.mediation.AbstractC5791v;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t80.class */
public final class t80 implements AbstractC5776i, AbstractC5781n, AbstractC5783p {

    /* renamed from: a */
    private final y70 f29861a;

    /* renamed from: b */
    private AbstractC5791v f29862b;

    /* renamed from: c */
    private AbstractC5610d f29863c;

    public t80(y70 y70Var) {
        this.f29861a = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5776i
    /* renamed from: a */
    public final void mo10788a(MediationBannerAdapter mediationBannerAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdClosed.");
        try {
            this.f29861a.mo8917d();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: b */
    public final void mo10787b(MediationNativeAdapter mediationNativeAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdOpened.");
        try {
            this.f29861a.zzi();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: c */
    public final void mo10786c(MediationNativeAdapter mediationNativeAdapter, C5592a c5592a) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        int m18310a = c5592a.m18310a();
        String m18308c = c5592a.m18308c();
        String m18309b = c5592a.m18309b();
        StringBuilder sb = new StringBuilder(String.valueOf(m18308c).length() + 97 + String.valueOf(m18309b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(m18310a);
        sb.append(". ErrorMessage: ");
        sb.append(m18308c);
        sb.append(". ErrorDomain: ");
        sb.append(m18309b);
        ei0.m15469a(sb.toString());
        try {
            this.f29861a.mo8912i5(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5781n
    /* renamed from: d */
    public final void mo10785d(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        ei0.m15469a(sb.toString());
        try {
            this.f29861a.mo8920Z(i);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5776i
    /* renamed from: e */
    public final void mo10784e(MediationBannerAdapter mediationBannerAdapter, C5592a c5592a) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        int m18310a = c5592a.m18310a();
        String m18308c = c5592a.m18308c();
        String m18309b = c5592a.m18309b();
        StringBuilder sb = new StringBuilder(String.valueOf(m18308c).length() + 97 + String.valueOf(m18309b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(m18310a);
        sb.append(". ErrorMessage: ");
        sb.append(m18308c);
        sb.append(". ErrorDomain: ");
        sb.append(m18309b);
        ei0.m15469a(sb.toString());
        try {
            this.f29861a.mo8912i5(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5776i
    /* renamed from: f */
    public final void mo10783f(MediationBannerAdapter mediationBannerAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdClicked.");
        try {
            this.f29861a.mo8919a();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: g */
    public final void mo10782g(MediationNativeAdapter mediationNativeAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdClosed.");
        try {
            this.f29861a.mo8917d();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5776i
    /* renamed from: h */
    public final void mo10781h(MediationBannerAdapter mediationBannerAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdLoaded.");
        try {
            this.f29861a.mo8914g();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: i */
    public final void mo10780i(MediationNativeAdapter mediationNativeAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        AbstractC5791v abstractC5791v = this.f29862b;
        if (this.f29863c == null) {
            if (abstractC5791v == null) {
                ei0.m15461i("#007 Could not call remote method.", null);
                return;
            } else if (!abstractC5791v.m17874l()) {
                ei0.m15469a("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        ei0.m15469a("Adapter called onAdClicked.");
        try {
            this.f29861a.mo8919a();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5776i
    /* renamed from: j */
    public final void mo10779j(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAppEvent.");
        try {
            this.f29861a.mo8903z5(str, str2);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: k */
    public final void mo10778k(MediationNativeAdapter mediationNativeAdapter, AbstractC5610d abstractC5610d) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(abstractC5610d.mo16720a());
        ei0.m15469a(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f29863c = abstractC5610d;
        try {
            this.f29861a.mo8914g();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: l */
    public final void mo10777l(MediationNativeAdapter mediationNativeAdapter, AbstractC5610d abstractC5610d, String str) {
        if (!(abstractC5610d instanceof a00)) {
            ei0.m15464f("Unexpected native custom template ad type.");
            return;
        }
        try {
            this.f29861a.mo8918b5(((a00) abstractC5610d).m16719b(), str);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5781n
    /* renamed from: m */
    public final void mo10776m(MediationInterstitialAdapter mediationInterstitialAdapter, C5592a c5592a) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        int m18310a = c5592a.m18310a();
        String m18308c = c5592a.m18308c();
        String m18309b = c5592a.m18309b();
        StringBuilder sb = new StringBuilder(String.valueOf(m18308c).length() + 97 + String.valueOf(m18309b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(m18310a);
        sb.append(". ErrorMessage: ");
        sb.append(m18308c);
        sb.append(". ErrorDomain: ");
        sb.append(m18309b);
        ei0.m15469a(sb.toString());
        try {
            this.f29861a.mo8912i5(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5781n
    /* renamed from: n */
    public final void mo10775n(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdLoaded.");
        try {
            this.f29861a.mo8914g();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5776i
    /* renamed from: o */
    public final void mo10774o(MediationBannerAdapter mediationBannerAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdOpened.");
        try {
            this.f29861a.zzi();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5781n
    /* renamed from: p */
    public final void mo10773p(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdClosed.");
        try {
            this.f29861a.mo8917d();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: q */
    public final void mo10772q(MediationNativeAdapter mediationNativeAdapter, AbstractC5791v abstractC5791v) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdLoaded.");
        this.f29862b = abstractC5791v;
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            C5845s c5845s = new C5845s();
            c5845s.m17767b(new i80());
            if (abstractC5791v != null && abstractC5791v.m17868r()) {
                abstractC5791v.m17890G(c5845s);
            }
        }
        try {
            this.f29861a.mo8914g();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5783p
    /* renamed from: r */
    public final void mo10771r(MediationNativeAdapter mediationNativeAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        AbstractC5791v abstractC5791v = this.f29862b;
        if (this.f29863c == null) {
            if (abstractC5791v == null) {
                ei0.m15461i("#007 Could not call remote method.", null);
                return;
            } else if (!abstractC5791v.m17873m()) {
                ei0.m15469a("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        ei0.m15469a("Adapter called onAdImpression.");
        try {
            this.f29861a.mo8913h();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5781n
    /* renamed from: s */
    public final void mo10770s(MediationInterstitialAdapter mediationInterstitialAdapter) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        ei0.m15469a("Adapter called onAdOpened.");
        try {
            this.f29861a.zzi();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: t */
    public final AbstractC5791v m10769t() {
        return this.f29862b;
    }

    /* renamed from: u */
    public final AbstractC5610d m10768u() {
        return this.f29863c;
    }
}

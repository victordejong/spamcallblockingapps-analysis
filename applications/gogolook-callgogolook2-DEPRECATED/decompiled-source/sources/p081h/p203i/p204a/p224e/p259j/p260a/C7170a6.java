package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzjo;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.a6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/a6.class */
public final class C7170a6 {

    /* renamed from: a */
    public final BinderC7213da f17275a;

    /* renamed from: b */
    public final Context f17276b;

    /* renamed from: c */
    public AdListener f17277c;

    /* renamed from: d */
    public AbstractC7477z2 f17278d;

    /* renamed from: e */
    public AbstractC7322m4 f17279e;

    /* renamed from: f */
    public String f17280f;

    /* renamed from: g */
    public AdMetadataListener f17281g;

    /* renamed from: h */
    public AppEventListener f17282h;

    /* renamed from: i */
    public OnCustomRenderedAdLoadedListener f17283i;

    /* renamed from: j */
    public Correlator f17284j;

    /* renamed from: k */
    public RewardedVideoAdListener f17285k;

    /* renamed from: l */
    public boolean f17286l;

    /* renamed from: m */
    public boolean f17287m;

    public C7170a6(Context context) {
        this(context, C7258h3.f17345a, null);
    }

    public C7170a6(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, C7258h3.f17345a, publisherInterstitialAd);
    }

    public C7170a6(Context context, C7258h3 h3Var, PublisherInterstitialAd publisherInterstitialAd) {
        this.f17275a = new BinderC7213da();
        this.f17276b = context;
    }

    /* renamed from: a */
    public final AdListener m21013a() {
        return this.f17277c;
    }

    /* renamed from: a */
    public final void m21012a(AdListener adListener) {
        try {
            this.f17277c = adListener;
            if (this.f17279e != null) {
                this.f17279e.mo20747b(adListener != null ? new BinderC7193c3(adListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21011a(Correlator correlator) {
        this.f17284j = correlator;
        try {
            if (this.f17279e != null) {
                this.f17279e.mo20748b(this.f17284j == null ? null : this.f17284j.zzaz());
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21010a(AppEventListener appEventListener) {
        try {
            this.f17282h = appEventListener;
            if (this.f17279e != null) {
                this.f17279e.mo20753a(appEventListener != null ? new BinderC7284j3(appEventListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21009a(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.f17283i = onCustomRenderedAdLoadedListener;
            if (this.f17279e != null) {
                this.f17279e.mo20755a(onCustomRenderedAdLoadedListener != null ? new BinderC7325m7(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21008a(AdMetadataListener adMetadataListener) {
        try {
            this.f17281g = adMetadataListener;
            if (this.f17279e != null) {
                this.f17279e.mo20754a(adMetadataListener != null ? new BinderC7232f3(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21007a(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.f17285k = rewardedVideoAdListener;
            if (this.f17279e != null) {
                this.f17279e.mo20751a(rewardedVideoAdListener != null ? new BinderC7217e1(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21006a(C7444w5 w5Var) {
        try {
            if (this.f17279e == null) {
                if (this.f17280f == null) {
                    m21001b("loadAd");
                }
                zzjo H = this.f17286l ? zzjo.m31852H() : new zzjo();
                C7297k3 b = C7430v3.m20639b();
                Context context = this.f17276b;
                this.f17279e = new C7345o3(b, context, H, this.f17280f, this.f17275a).m20652a(context, false);
                if (this.f17277c != null) {
                    this.f17279e.mo20747b(new BinderC7193c3(this.f17277c));
                }
                if (this.f17278d != null) {
                    this.f17279e.mo20752a(new BinderC7167a3(this.f17278d));
                }
                if (this.f17281g != null) {
                    this.f17279e.mo20754a(new BinderC7232f3(this.f17281g));
                }
                if (this.f17282h != null) {
                    this.f17279e.mo20753a(new BinderC7284j3(this.f17282h));
                }
                if (this.f17283i != null) {
                    this.f17279e.mo20755a(new BinderC7325m7(this.f17283i));
                }
                if (this.f17284j != null) {
                    this.f17279e.mo20748b(this.f17284j.zzaz());
                }
                if (this.f17285k != null) {
                    this.f17279e.mo20751a(new BinderC7217e1(this.f17285k));
                }
                this.f17279e.setImmersiveMode(this.f17287m);
            }
            if (this.f17279e.mo20749b(C7258h3.m20921a(this.f17276b, w5Var))) {
                this.f17275a.m20943a(w5Var.m20599l());
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21005a(AbstractC7477z2 z2Var) {
        try {
            this.f17278d = z2Var;
            if (this.f17279e != null) {
                this.f17279e.mo20752a(z2Var != null ? new BinderC7167a3(z2Var) : null);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: a */
    public final void m21004a(String str) {
        if (this.f17280f == null) {
            this.f17280f = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    /* renamed from: a */
    public final void m21003a(boolean z) {
        try {
            this.f17287m = z;
            if (this.f17279e != null) {
                this.f17279e.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }

    /* renamed from: b */
    public final Bundle m21002b() {
        try {
            if (this.f17279e != null) {
                return this.f17279e.getAdMetadata();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
        return new Bundle();
    }

    /* renamed from: b */
    public final void m21001b(String str) {
        if (this.f17279e == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
            sb.append("The ad unit ID must be set on InterstitialAd before ");
            sb.append(str);
            sb.append(" is called.");
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: b */
    public final void m21000b(boolean z) {
        this.f17286l = true;
    }

    /* renamed from: c */
    public final String m20999c() {
        return this.f17280f;
    }

    /* renamed from: d */
    public final AppEventListener m20998d() {
        return this.f17282h;
    }

    /* renamed from: e */
    public final String m20997e() {
        try {
            if (this.f17279e != null) {
                return this.f17279e.mo20759H();
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
            return null;
        }
    }

    /* renamed from: f */
    public final OnCustomRenderedAdLoadedListener m20996f() {
        return this.f17283i;
    }

    /* renamed from: g */
    public final boolean m20995g() {
        try {
            if (this.f17279e == null) {
                return false;
            }
            return this.f17279e.isReady();
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    /* renamed from: h */
    public final boolean m20994h() {
        try {
            if (this.f17279e == null) {
                return false;
            }
            return this.f17279e.isLoading();
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    /* renamed from: i */
    public final void m20993i() {
        try {
            m21001b("show");
            this.f17279e.showInterstitial();
        } catch (RemoteException e) {
            C7452x1.m20567d("#008 Must be called on the main UI thread.", e);
        }
    }
}

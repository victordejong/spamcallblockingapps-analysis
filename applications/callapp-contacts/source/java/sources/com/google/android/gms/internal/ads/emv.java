package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emv.class */
public final class emv {

    /* renamed from: a */
    public AdListener f49236a;

    /* renamed from: b */
    public ekw f49237b;

    /* renamed from: c */
    public String f49238c;

    /* renamed from: d */
    public AdMetadataListener f49239d;

    /* renamed from: e */
    public AppEventListener f49240e;

    /* renamed from: f */
    public OnCustomRenderedAdLoadedListener f49241f;

    /* renamed from: g */
    public RewardedVideoAdListener f49242g;

    /* renamed from: h */
    public boolean f49243h;

    /* renamed from: i */
    public OnPaidEventListener f49244i;

    /* renamed from: j */
    private final BinderC12743mj f49245j;

    /* renamed from: k */
    private final Context f49246k;

    /* renamed from: l */
    private final ejb f49247l;

    /* renamed from: m */
    private eir f49248m;

    /* renamed from: n */
    private Boolean f49249n;

    public emv(Context context) {
        this(context, ejb.f49085a, null);
    }

    public emv(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, ejb.f49085a, publisherInterstitialAd);
    }

    private emv(Context context, ejb ejbVar, PublisherInterstitialAd publisherInterstitialAd) {
        this.f49245j = new BinderC12743mj();
        this.f49246k = context;
        this.f49247l = ejbVar;
    }

    /* renamed from: b */
    private final void m14734b(String str) {
        if (this.f49237b != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
        sb.append("The ad unit ID must be set on InterstitialAd before ");
        sb.append(str);
        sb.append(" is called.");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: a */
    public final void m14740a(AdListener adListener) {
        try {
            this.f49236a = adListener;
            ekw ekwVar = this.f49237b;
            if (ekwVar == null) {
                return;
            }
            ekwVar.zza(adListener != null ? new eiu(adListener) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14739a(eir eirVar) {
        try {
            this.f49248m = eirVar;
            ekw ekwVar = this.f49237b;
            if (ekwVar == null) {
                return;
            }
            ekwVar.zza(eirVar != null ? new eis(eirVar) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14738a(emr emrVar) {
        try {
            if (this.f49237b == null) {
                if (this.f49238c == null) {
                    m14734b("loadAd");
                }
                ekw m14853b = ekb.m14834b().m14853b(this.f49246k, this.f49243h ? zzvt.zzql() : new zzvt(), this.f49238c, this.f49245j);
                this.f49237b = m14853b;
                if (this.f49236a != null) {
                    m14853b.zza(new eiu(this.f49236a));
                }
                if (this.f49248m != null) {
                    this.f49237b.zza(new eis(this.f49248m));
                }
                if (this.f49239d != null) {
                    this.f49237b.zza(new eiy(this.f49239d));
                }
                if (this.f49240e != null) {
                    this.f49237b.zza(new ejg(this.f49240e));
                }
                if (this.f49241f != null) {
                    this.f49237b.zza(new BinderC12251bs(this.f49241f));
                }
                if (this.f49242g != null) {
                    this.f49237b.zza(new BinderC12953uc(this.f49242g));
                }
                this.f49237b.zza(new BinderC12896s(this.f49244i));
                Boolean bool = this.f49249n;
                if (bool != null) {
                    this.f49237b.setImmersiveMode(bool.booleanValue());
                }
            }
            if (!this.f49237b.zza(ejb.m14863a(this.f49246k, emrVar))) {
                return;
            }
            this.f49245j.f49559a = emrVar.f49184h;
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14737a(String str) {
        if (this.f49238c == null) {
            this.f49238c = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    /* renamed from: a */
    public final void m14736a(boolean z) {
        try {
            this.f49249n = Boolean.valueOf(z);
            ekw ekwVar = this.f49237b;
            if (ekwVar == null) {
                return;
            }
            ekwVar.setImmersiveMode(z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final boolean m14741a() {
        try {
            ekw ekwVar = this.f49237b;
            if (ekwVar != null) {
                return ekwVar.isReady();
            }
            return false;
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m14735b() {
        try {
            ekw ekwVar = this.f49237b;
            if (ekwVar != null) {
                return ekwVar.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: c */
    public final Bundle m14733c() {
        try {
            ekw ekwVar = this.f49237b;
            if (ekwVar != null) {
                return ekwVar.getAdMetadata();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    /* renamed from: d */
    public final String m14732d() {
        try {
            ekw ekwVar = this.f49237b;
            if (ekwVar == null) {
                return null;
            }
            return ekwVar.zzkl();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: e */
    public final ResponseInfo m14731e() {
        emj emjVar;
        try {
            ekw ekwVar = this.f49237b;
            emjVar = null;
            if (ekwVar != null) {
                emjVar = ekwVar.zzkm();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    /* renamed from: f */
    public final void m14730f() {
        try {
            m14734b("show");
            this.f49237b.showInterstitial();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }
}

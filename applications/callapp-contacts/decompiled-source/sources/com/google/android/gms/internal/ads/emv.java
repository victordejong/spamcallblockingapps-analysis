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

    /* renamed from: a  reason: collision with root package name */
    public AdListener f27964a;

    /* renamed from: b  reason: collision with root package name */
    public ekw f27965b;

    /* renamed from: c  reason: collision with root package name */
    public String f27966c;

    /* renamed from: d  reason: collision with root package name */
    public AdMetadataListener f27967d;
    public AppEventListener e;
    public OnCustomRenderedAdLoadedListener f;
    public RewardedVideoAdListener g;
    public boolean h;
    public OnPaidEventListener i;
    private final mj j;
    private final Context k;
    private final ejb l;
    private eir m;
    private Boolean n;

    public emv(Context context) {
        this(context, ejb.f27877a, null);
    }

    public emv(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, ejb.f27877a, publisherInterstitialAd);
    }

    private emv(Context context, ejb ejbVar, PublisherInterstitialAd publisherInterstitialAd) {
        this.j = new mj();
        this.k = context;
        this.l = ejbVar;
    }

    private final void b(String str) {
        if (this.f27965b == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
            sb.append("The ad unit ID must be set on InterstitialAd before ");
            sb.append(str);
            sb.append(" is called.");
            throw new IllegalStateException(sb.toString());
        }
    }

    public final void a(AdListener adListener) {
        try {
            this.f27964a = adListener;
            ekw ekwVar = this.f27965b;
            if (ekwVar != null) {
                ekwVar.zza(adListener != null ? new eiu(adListener) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(eir eirVar) {
        try {
            this.m = eirVar;
            ekw ekwVar = this.f27965b;
            if (ekwVar != null) {
                ekwVar.zza(eirVar != null ? new eis(eirVar) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(emr emrVar) {
        try {
            if (this.f27965b == null) {
                if (this.f27966c == null) {
                    b("loadAd");
                }
                ekw b2 = ekb.b().b(this.k, this.h ? zzvt.zzql() : new zzvt(), this.f27966c, this.j);
                this.f27965b = b2;
                if (this.f27964a != null) {
                    b2.zza(new eiu(this.f27964a));
                }
                if (this.m != null) {
                    this.f27965b.zza(new eis(this.m));
                }
                if (this.f27967d != null) {
                    this.f27965b.zza(new eiy(this.f27967d));
                }
                if (this.e != null) {
                    this.f27965b.zza(new ejg(this.e));
                }
                if (this.f != null) {
                    this.f27965b.zza(new bs(this.f));
                }
                if (this.g != null) {
                    this.f27965b.zza(new uc(this.g));
                }
                this.f27965b.zza(new s(this.i));
                Boolean bool = this.n;
                if (bool != null) {
                    this.f27965b.setImmersiveMode(bool.booleanValue());
                }
            }
            if (this.f27965b.zza(ejb.a(this.k, emrVar))) {
                this.j.f28206a = emrVar.h;
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(String str) {
        if (this.f27966c == null) {
            this.f27966c = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    public final void a(boolean z) {
        try {
            this.n = Boolean.valueOf(z);
            ekw ekwVar = this.f27965b;
            if (ekwVar != null) {
                ekwVar.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final boolean a() {
        try {
            ekw ekwVar = this.f27965b;
            if (ekwVar == null) {
                return false;
            }
            return ekwVar.isReady();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean b() {
        try {
            ekw ekwVar = this.f27965b;
            if (ekwVar == null) {
                return false;
            }
            return ekwVar.isLoading();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final Bundle c() {
        try {
            ekw ekwVar = this.f27965b;
            if (ekwVar != null) {
                return ekwVar.getAdMetadata();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    public final String d() {
        try {
            ekw ekwVar = this.f27965b;
            if (ekwVar != null) {
                return ekwVar.zzkl();
            }
            return null;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final ResponseInfo e() {
        emj emjVar;
        try {
            ekw ekwVar = this.f27965b;
            emjVar = null;
            if (ekwVar != null) {
                emjVar = ekwVar.zzkm();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    public final void f() {
        try {
            b("show");
            this.f27965b.showInterstitial();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }
}

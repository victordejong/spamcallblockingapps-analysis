package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzaio;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.g1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g1.class */
public final class C7243g1 implements RewardedVideoAd {
    @NonNull

    /* renamed from: a */
    public final AbstractC7415u0 f17337a;

    /* renamed from: b */
    public final Context f17338b;

    /* renamed from: c */
    public final Object f17339c = new Object();

    /* renamed from: d */
    public final BinderC7217e1 f17340d = new BinderC7217e1(null);

    /* renamed from: e */
    public String f17341e;

    /* renamed from: f */
    public String f17342f;

    public C7243g1(Context context, @Nullable AbstractC7415u0 u0Var) {
        this.f17337a = u0Var == null ? new BinderC7348o6() : u0Var;
        this.f17338b = context.getApplicationContext();
    }

    /* renamed from: a */
    public final void m20924a(String str, C7444w5 w5Var) {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.mo20625a(new zzaio(C7258h3.m20921a(this.f17338b, w5Var), str));
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context) {
        synchronized (this.f17339c) {
            this.f17340d.m20938a((RewardedVideoAdListener) null);
            if (this.f17337a != null) {
                try {
                    this.f17337a.mo20622e(BinderC7110d.m21058a(context));
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    return this.f17337a.getAdMetadata();
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.f17339c) {
            str = this.f17342f;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            if (this.f17337a != null) {
                return this.f17337a.getMediationAdapterClassName();
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener G0;
        synchronized (this.f17339c) {
            G0 = this.f17340d.m20939G0();
        }
        return G0;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.f17339c) {
            str = this.f17341e;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.f17339c) {
            if (this.f17337a == null) {
                return false;
            }
            try {
                return this.f17337a.isLoaded();
            } catch (RemoteException e) {
                C7452x1.m20567d("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        m20924a(str, adRequest.zzay());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        m20924a(str, publisherAdRequest.zzay());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.mo20620r(BinderC7110d.m21058a(context));
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context) {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.mo20621p(BinderC7110d.m21058a(context));
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.mo20624a(new BinderC7232f3(adMetadataListener));
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.setCustomData(str);
                    this.f17342f = str;
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.setImmersiveMode(z);
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.f17339c) {
            this.f17340d.m20938a(rewardedVideoAdListener);
            if (this.f17337a != null) {
                try {
                    this.f17337a.mo20623a(this.f17340d);
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.f17339c) {
            this.f17341e = str;
            if (this.f17337a != null) {
                try {
                    this.f17337a.setUserId(str);
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.f17339c) {
            if (this.f17337a != null) {
                try {
                    this.f17337a.show();
                } catch (RemoteException e) {
                    C7452x1.m20567d("#007 Could not call remote method.", e);
                }
            }
        }
    }
}

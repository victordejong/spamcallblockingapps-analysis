package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ug.class */
public final class ug implements RewardedVideoAd {

    /* renamed from: a  reason: collision with root package name */
    private final ts f28414a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28415b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f28416c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final uc f28417d = new uc(null);
    private String e;
    private String f;

    public ug(Context context, ts tsVar) {
        this.f28414a = tsVar == null ? new r() : tsVar;
        this.f28415b = context.getApplicationContext();
    }

    private final void a(String str, emr emrVar) {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.a(ejb.a(this.f28415b, emrVar, str));
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
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
        synchronized (this.f28416c) {
            this.f28417d.f28413a = null;
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.d(d.a(context));
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    return tsVar.b();
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.f28416c) {
            str = this.f;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                return tsVar.g();
            }
            return null;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            ts tsVar = this.f28414a;
            emjVar = null;
            if (tsVar != null) {
                emjVar = tsVar.i();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.f28416c) {
            rewardedVideoAdListener = this.f28417d.f28413a;
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.f28416c) {
            str = this.e;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar == null) {
                return false;
            }
            try {
                return tsVar.c();
            } catch (RemoteException e) {
                za.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        a(str, adRequest.zzdt());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        a(str, publisherAdRequest.zzdt());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.b(d.a(context));
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
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
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.c(d.a(context));
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.a(new eiy(adMetadataListener));
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.b(str);
                    this.f = str;
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.a(z);
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.f28416c) {
            this.f28417d.f28413a = rewardedVideoAdListener;
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.a(this.f28417d);
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.f28416c) {
            this.e = str;
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.a(str);
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.f28416c) {
            ts tsVar = this.f28414a;
            if (tsVar != null) {
                try {
                    tsVar.a();
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }
}

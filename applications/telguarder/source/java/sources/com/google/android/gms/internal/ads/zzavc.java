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
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavc.class */
public final class zzavc implements RewardedVideoAd {
    private final Context context;
    private final zzaur zzdzf;
    private String zzdzh;
    private String zzdzi;
    private final Object lock = new Object();
    private final zzavb zzdzg = new zzavb(null);

    public zzavc(Context context, zzaur zzaurVar) {
        this.zzdzf = zzaurVar == null ? new zzaak() : zzaurVar;
        this.context = context.getApplicationContext();
    }

    private final void zza(String str, zzzk zzzkVar) {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return;
            }
            try {
                zzaurVar.zza(zzvq.zza(this.context, zzzkVar, str));
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context) {
        synchronized (this.lock) {
            this.zzdzg.setRewardedVideoAdListener(null);
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return;
            }
            try {
                zzaurVar.zzl(ObjectWrapper.wrap(context));
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar != null) {
                try {
                    return zzaurVar.getAdMetadata();
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.lock) {
            str = this.zzdzi;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return null;
            }
            return zzaurVar.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final ResponseInfo getResponseInfo() {
        zzyx zzyxVar;
        try {
            zzaur zzaurVar = this.zzdzf;
            zzyxVar = null;
            if (zzaurVar != null) {
                zzyxVar = zzaurVar.zzki();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            zzyxVar = null;
        }
        return ResponseInfo.zza(zzyxVar);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.lock) {
            rewardedVideoAdListener = this.zzdzg.getRewardedVideoAdListener();
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.lock) {
            str = this.zzdzh;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return false;
            }
            try {
                return zzaurVar.isLoaded();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        zza(str, adRequest.zzds());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        zza(str, publisherAdRequest.zzds());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return;
            }
            try {
                zzaurVar.zzj(ObjectWrapper.wrap(context));
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context) {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return;
            }
            try {
                zzaurVar.zzk(ObjectWrapper.wrap(context));
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar != null) {
                try {
                    zzaurVar.zza(new zzvm(adMetadataListener));
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar != null) {
                try {
                    zzaurVar.setCustomData(str);
                    this.zzdzi = str;
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar != null) {
                try {
                    zzaurVar.setImmersiveMode(z);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.lock) {
            this.zzdzg.setRewardedVideoAdListener(rewardedVideoAdListener);
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar != null) {
                try {
                    zzaurVar.zza(this.zzdzg);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.lock) {
            this.zzdzh = str;
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar != null) {
                try {
                    zzaurVar.setUserId(str);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.lock) {
            zzaur zzaurVar = this.zzdzf;
            if (zzaurVar == null) {
                return;
            }
            try {
                zzaurVar.show();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }
}

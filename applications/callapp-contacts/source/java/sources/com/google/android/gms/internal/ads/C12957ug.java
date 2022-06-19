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
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.ug */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ug.class */
public final class C12957ug implements RewardedVideoAd {

    /* renamed from: a */
    private final AbstractC12942ts f49886a;

    /* renamed from: b */
    private final Context f49887b;

    /* renamed from: c */
    private final Object f49888c = new Object();

    /* renamed from: d */
    private final BinderC12953uc f49889d = new BinderC12953uc(null);

    /* renamed from: e */
    private String f49890e;

    /* renamed from: f */
    private String f49891f;

    public C12957ug(Context context, AbstractC12942ts abstractC12942ts) {
        this.f49886a = abstractC12942ts == null ? new BinderC12869r() : abstractC12942ts;
        this.f49887b = context.getApplicationContext();
    }

    /* renamed from: a */
    private final void m14118a(String str, emr emrVar) {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return;
            }
            try {
                abstractC12942ts.mo14146a(ejb.m14862a(this.f49887b, emrVar, str));
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context) {
        synchronized (this.f49888c) {
            this.f49889d.f49885a = null;
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return;
            }
            try {
                abstractC12942ts.mo14136d(BinderC12129d.m18979a(context));
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts != null) {
                try {
                    return abstractC12942ts.mo14143b();
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.f49888c) {
            str = this.f49891f;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return null;
            }
            return abstractC12942ts.mo14133g();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final ResponseInfo getResponseInfo() {
        emj emjVar;
        try {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            emjVar = null;
            if (abstractC12942ts != null) {
                emjVar = abstractC12942ts.mo14131i();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.f49888c) {
            rewardedVideoAdListener = this.f49889d.f49885a;
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.f49888c) {
            str = this.f49890e;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return false;
            }
            try {
                return abstractC12942ts.mo14140c();
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        m14118a(str, adRequest.zzdt());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        m14118a(str, publisherAdRequest.zzdt());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return;
            }
            try {
                abstractC12942ts.mo14142b(BinderC12129d.m18979a(context));
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context) {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return;
            }
            try {
                abstractC12942ts.mo14139c(BinderC12129d.m18979a(context));
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts != null) {
                try {
                    abstractC12942ts.mo14149a(new eiy(adMetadataListener));
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts != null) {
                try {
                    abstractC12942ts.mo14141b(str);
                    this.f49891f = str;
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts != null) {
                try {
                    abstractC12942ts.mo14144a(z);
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.f49888c) {
            this.f49889d.f49885a = rewardedVideoAdListener;
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts != null) {
                try {
                    abstractC12942ts.mo14147a(this.f49889d);
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.f49888c) {
            this.f49890e = str;
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts != null) {
                try {
                    abstractC12942ts.mo14145a(str);
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.f49888c) {
            AbstractC12942ts abstractC12942ts = this.f49886a;
            if (abstractC12942ts == null) {
                return;
            }
            try {
                abstractC12942ts.mo14151a();
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
    }
}

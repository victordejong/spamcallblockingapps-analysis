package com.telguarder.features.advertisements.PostCallAds;

import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener.class */
public class PostcallFacebookBannerAdListener {
    private static PostcallFacebookBannerAdListener mInstance;
    private AdListener mInternalListener = null;
    private AdListener mAdListener = new AdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookBannerAdListener.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookBannerAdListener.this.mInternalListener != null) {
                PostcallFacebookBannerAdListener.this.mInternalListener.onAdClicked(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookBannerAdListener.this.mInternalListener != null) {
                PostcallFacebookBannerAdListener.this.mInternalListener.onAdLoaded(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            if (PostcallFacebookBannerAdListener.this.mInternalListener != null) {
                PostcallFacebookBannerAdListener.this.mInternalListener.onError(abstractC0845Ad, adError);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookBannerAdListener.this.mInternalListener != null) {
                PostcallFacebookBannerAdListener.this.mInternalListener.onLoggingImpression(abstractC0845Ad);
            }
        }
    };

    private PostcallFacebookBannerAdListener() {
    }

    public static PostcallFacebookBannerAdListener getInstance() {
        PostcallFacebookBannerAdListener postcallFacebookBannerAdListener;
        synchronized (PostcallFacebookBannerAdListener.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallFacebookBannerAdListener();
                }
                postcallFacebookBannerAdListener = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallFacebookBannerAdListener;
    }

    public AdListener getAdListener(AdListener adListener) {
        this.mInternalListener = adListener;
        return this.mAdListener;
    }

    public void setInternalAdListener(AdListener adListener) {
        this.mInternalListener = adListener;
    }
}

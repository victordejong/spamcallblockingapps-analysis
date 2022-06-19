package com.telguarder.features.advertisements.PostCallAds;

import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAdListener;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener.class */
public class PostcallFacebookAdListener {
    private static PostcallFacebookAdListener mInstance;
    private NativeAdListener mInternalListener = null;
    private final NativeAdListener mAdListener = new NativeAdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookAdListener.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookAdListener.this.mInternalListener != null) {
                PostcallFacebookAdListener.this.mInternalListener.onAdClicked(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookAdListener.this.mInternalListener != null) {
                PostcallFacebookAdListener.this.mInternalListener.onAdLoaded(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            if (PostcallFacebookAdListener.this.mInternalListener != null) {
                PostcallFacebookAdListener.this.mInternalListener.onError(abstractC0845Ad, adError);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookAdListener.this.mInternalListener != null) {
                PostcallFacebookAdListener.this.mInternalListener.onLoggingImpression(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC0845Ad abstractC0845Ad) {
            if (PostcallFacebookAdListener.this.mInternalListener != null) {
                PostcallFacebookAdListener.this.mInternalListener.onMediaDownloaded(abstractC0845Ad);
            }
        }
    };

    private PostcallFacebookAdListener() {
    }

    public static PostcallFacebookAdListener getInstance() {
        PostcallFacebookAdListener postcallFacebookAdListener;
        synchronized (PostcallFacebookAdListener.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallFacebookAdListener();
                }
                postcallFacebookAdListener = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallFacebookAdListener;
    }

    public NativeAdListener getAdListener(NativeAdListener nativeAdListener) {
        this.mInternalListener = nativeAdListener;
        return this.mAdListener;
    }

    public void setInternalAdListener(NativeAdListener nativeAdListener) {
        this.mInternalListener = nativeAdListener;
    }
}

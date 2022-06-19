package com.telguarder.features.advertisements.ListbannerAds;

import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAdListener;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener.class */
public class ListbannerFacebookAdListener {
    private static ListbannerFacebookAdListener mInstance;
    private NativeAdListener mInternalListener = null;
    private final NativeAdListener mAdListener = new NativeAdListener() { // from class: com.telguarder.features.advertisements.ListbannerAds.ListbannerFacebookAdListener.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            if (ListbannerFacebookAdListener.this.mInternalListener != null) {
                ListbannerFacebookAdListener.this.mInternalListener.onAdClicked(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            if (ListbannerFacebookAdListener.this.mInternalListener != null) {
                ListbannerFacebookAdListener.this.mInternalListener.onAdLoaded(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            if (ListbannerFacebookAdListener.this.mInternalListener != null) {
                ListbannerFacebookAdListener.this.mInternalListener.onError(abstractC0845Ad, adError);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            if (ListbannerFacebookAdListener.this.mInternalListener != null) {
                ListbannerFacebookAdListener.this.mInternalListener.onLoggingImpression(abstractC0845Ad);
            }
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC0845Ad abstractC0845Ad) {
            if (ListbannerFacebookAdListener.this.mInternalListener != null) {
                ListbannerFacebookAdListener.this.mInternalListener.onMediaDownloaded(abstractC0845Ad);
            }
        }
    };

    private ListbannerFacebookAdListener() {
    }

    public static ListbannerFacebookAdListener getInstance() {
        ListbannerFacebookAdListener listbannerFacebookAdListener;
        synchronized (ListbannerFacebookAdListener.class) {
            try {
                if (mInstance == null) {
                    mInstance = new ListbannerFacebookAdListener();
                }
                listbannerFacebookAdListener = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return listbannerFacebookAdListener;
    }

    public NativeAdListener getAdListener(NativeAdListener nativeAdListener) {
        this.mInternalListener = nativeAdListener;
        return this.mAdListener;
    }

    public void setInternalAdListener(NativeAdListener nativeAdListener) {
        this.mInternalListener = nativeAdListener;
    }
}

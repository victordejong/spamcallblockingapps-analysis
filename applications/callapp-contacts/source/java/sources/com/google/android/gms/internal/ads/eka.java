package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eka.class */
public class eka extends AdListener {

    /* renamed from: a */
    private final Object f49145a = new Object();

    /* renamed from: b */
    private AdListener f49146b;

    /* renamed from: a */
    public final void m14836a(AdListener adListener) {
        synchronized (this.f49145a) {
            this.f49146b = adListener;
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdFailedToLoad(loadAdError);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdImpression();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        synchronized (this.f49145a) {
            AdListener adListener = this.f49146b;
            if (adListener != null) {
                adListener.onAdOpened();
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eka.class */
public class eka extends AdListener {

    /* renamed from: a  reason: collision with root package name */
    private final Object f27930a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private AdListener f27931b;

    public final void a(AdListener adListener) {
        synchronized (this.f27930a) {
            this.f27931b = adListener;
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdFailedToLoad(loadAdError);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdImpression();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        synchronized (this.f27930a) {
            AdListener adListener = this.f27931b;
            if (adListener != null) {
                adListener.onAdOpened();
            }
        }
    }
}

package com.google.android.gms.ads.mediation.customevent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventListener.class */
public interface CustomEventListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i);

    void onAdLeftApplication();

    void onAdOpened();
}

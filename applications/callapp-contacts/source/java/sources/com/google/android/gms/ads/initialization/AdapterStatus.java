package com.google.android.gms.ads.initialization;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/initialization/AdapterStatus.class */
public interface AdapterStatus {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/initialization/AdapterStatus$State.class */
    public enum State {
        NOT_READY,
        READY
    }

    String getDescription();

    State getInitializationState();

    int getLatency();
}

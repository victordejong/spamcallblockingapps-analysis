package com.google.android.gms.ads.initialization;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/initialization/AdapterStatus.class */
public interface AdapterStatus {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/initialization/AdapterStatus$State.class */
    public enum State {
        NOT_READY,
        READY
    }

    @RecentlyNonNull
    String getDescription();

    @RecentlyNonNull
    State getInitializationState();

    int getLatency();
}

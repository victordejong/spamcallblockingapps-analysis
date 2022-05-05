package com.birbit.android.jobqueue.network;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/network/NetworkEventProvider.class */
public interface NetworkEventProvider {

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/network/NetworkEventProvider$Listener.class */
    public interface Listener {
        void onNetworkChange(int i);
    }

    void setListener(Listener listener);
}

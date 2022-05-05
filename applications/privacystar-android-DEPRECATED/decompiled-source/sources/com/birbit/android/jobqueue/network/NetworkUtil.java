package com.birbit.android.jobqueue.network;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/network/NetworkUtil.class */
public interface NetworkUtil {
    public static final int DISCONNECTED = 0;
    public static final int METERED = 1;
    public static final int UNMETERED = 2;

    int getNetworkStatus(Context context);
}

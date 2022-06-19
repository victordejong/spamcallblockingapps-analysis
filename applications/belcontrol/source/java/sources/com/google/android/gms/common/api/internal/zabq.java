package com.google.android.gms.common.api.internal;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabq.class */
public final /* synthetic */ class zabq implements Runnable {
    private final NonGmsServiceBrokerClient zaa;
    private final IBinder zab;

    public zabq(NonGmsServiceBrokerClient nonGmsServiceBrokerClient, IBinder iBinder) {
        this.zaa = nonGmsServiceBrokerClient;
        this.zab = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaa.zaa(this.zab);
    }
}

package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabp.class */
public final /* synthetic */ class zabp implements Runnable {
    private final NonGmsServiceBrokerClient zaa;

    public zabp(NonGmsServiceBrokerClient nonGmsServiceBrokerClient) {
        this.zaa = nonGmsServiceBrokerClient;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaa.zaa();
    }
}

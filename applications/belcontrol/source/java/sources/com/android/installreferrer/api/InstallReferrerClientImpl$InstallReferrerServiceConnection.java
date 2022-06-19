package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.android.installreferrer.commons.InstallReferrerCommons;
import com.google.android.finsky.externalreferrer.IGetInstallReferrerService;
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection.class */
public final class InstallReferrerClientImpl$InstallReferrerServiceConnection implements ServiceConnection {
    private final InstallReferrerStateListener mListener;
    public final /* synthetic */ InstallReferrerClientImpl this$0;

    private InstallReferrerClientImpl$InstallReferrerServiceConnection(InstallReferrerClientImpl installReferrerClientImpl, InstallReferrerStateListener installReferrerStateListener) {
        this.this$0 = installReferrerClientImpl;
        if (installReferrerStateListener != null) {
            this.mListener = installReferrerStateListener;
            return;
        }
        throw new RuntimeException("Please specify a listener to know when setup is done.");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
        InstallReferrerClientImpl.access$102(this.this$0, IGetInstallReferrerService.Stub.asInterface(iBinder));
        InstallReferrerClientImpl.access$202(this.this$0, 2);
        this.mListener.onInstallReferrerSetupFinished(0);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
        InstallReferrerClientImpl.access$102(this.this$0, (IGetInstallReferrerService) null);
        InstallReferrerClientImpl.access$202(this.this$0, 0);
        this.mListener.onInstallReferrerServiceDisconnected();
    }
}

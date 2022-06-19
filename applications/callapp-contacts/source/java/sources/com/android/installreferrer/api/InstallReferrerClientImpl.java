package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.installreferrer.commons.InstallReferrerCommons;
import com.google.android.p312b.p313a.AbstractC10608a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl.class */
public final class InstallReferrerClientImpl extends InstallReferrerClient {

    /* renamed from: a */
    private int f12670a = 0;

    /* renamed from: b */
    private final Context f12671b;

    /* renamed from: c */
    private AbstractC10608a f12672c;

    /* renamed from: d */
    private ServiceConnection f12673d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$ClientState.class */
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* renamed from: com.android.installreferrer.api.InstallReferrerClientImpl$a */
    /* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$a.class */
    final class ServiceConnectionC3367a implements ServiceConnection {

        /* renamed from: b */
        private final InstallReferrerStateListener f12675b;

        private ServiceConnectionC3367a(InstallReferrerStateListener installReferrerStateListener) {
            InstallReferrerClientImpl.this = r5;
            if (installReferrerStateListener != null) {
                this.f12675b = installReferrerStateListener;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
            InstallReferrerClientImpl.this.f12672c = AbstractC10608a.AbstractBinderC10609a.m22616a(iBinder);
            InstallReferrerClientImpl.this.f12670a = 2;
            this.f12675b.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
            InstallReferrerClientImpl.this.f12672c = null;
            InstallReferrerClientImpl.this.f12670a = 0;
            this.f12675b.onInstallReferrerServiceDisconnected();
        }
    }

    public InstallReferrerClientImpl(Context context) {
        this.f12671b = context.getApplicationContext();
    }

    /* renamed from: a */
    private boolean m38170a() {
        try {
            return this.f12671b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final void endConnection() {
        this.f12670a = 3;
        if (this.f12673d != null) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Unbinding from service.");
            this.f12671b.unbindService(this.f12673d);
            this.f12673d = null;
        }
        this.f12672c = null;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final ReferrerDetails getInstallReferrer() throws RemoteException {
        if (isReady()) {
            Bundle bundle = new Bundle();
            bundle.putString("package_name", this.f12671b.getPackageName());
            try {
                return new ReferrerDetails(this.f12672c.mo22615a(bundle));
            } catch (RemoteException e) {
                InstallReferrerCommons.logWarn("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f12670a = 0;
                throw e;
            }
        }
        throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final boolean isReady() {
        return (this.f12670a != 2 || this.f12672c == null || this.f12673d == null) ? false : true;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final void startConnection(InstallReferrerStateListener installReferrerStateListener) {
        if (isReady()) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            installReferrerStateListener.onInstallReferrerSetupFinished(0);
            return;
        }
        int i = this.f12670a;
        if (i == 1) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
        } else if (i == 3) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            installReferrerStateListener.onInstallReferrerSetupFinished(3);
        } else {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Starting install referrer service setup.");
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            List<ResolveInfo> queryIntentServices = this.f12671b.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null || !m38170a()) {
                        InstallReferrerCommons.logWarn("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                        this.f12670a = 0;
                        installReferrerStateListener.onInstallReferrerSetupFinished(2);
                        return;
                    }
                    Intent intent2 = new Intent(intent);
                    ServiceConnectionC3367a serviceConnectionC3367a = new ServiceConnectionC3367a(installReferrerStateListener);
                    this.f12673d = serviceConnectionC3367a;
                    if (this.f12671b.bindService(intent2, serviceConnectionC3367a, 1)) {
                        InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service was bonded successfully.");
                        return;
                    }
                    InstallReferrerCommons.logWarn("InstallReferrerClient", "Connection to service is blocked.");
                    this.f12670a = 0;
                    installReferrerStateListener.onInstallReferrerSetupFinished(1);
                    return;
                }
            }
            this.f12670a = 0;
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service unavailable on device.");
            installReferrerStateListener.onInstallReferrerSetupFinished(2);
        }
    }
}

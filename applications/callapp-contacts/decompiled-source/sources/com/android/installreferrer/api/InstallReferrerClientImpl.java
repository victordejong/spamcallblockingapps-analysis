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
import com.google.android.b.a.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl.class */
public final class InstallReferrerClientImpl extends InstallReferrerClient {

    /* renamed from: a  reason: collision with root package name */
    private int f7028a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final Context f7029b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.b.a.a f7030c;

    /* renamed from: d  reason: collision with root package name */
    private ServiceConnection f7031d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$ClientState.class */
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$a.class */
    final class a implements ServiceConnection {

        /* renamed from: b  reason: collision with root package name */
        private final InstallReferrerStateListener f7033b;

        private a(InstallReferrerStateListener installReferrerStateListener) {
            if (installReferrerStateListener != null) {
                this.f7033b = installReferrerStateListener;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
            InstallReferrerClientImpl.this.f7030c = a.AbstractBinderC0409a.a(iBinder);
            InstallReferrerClientImpl.this.f7028a = 2;
            this.f7033b.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
            InstallReferrerClientImpl.this.f7030c = null;
            InstallReferrerClientImpl.this.f7028a = 0;
            this.f7033b.onInstallReferrerServiceDisconnected();
        }
    }

    public InstallReferrerClientImpl(Context context) {
        this.f7029b = context.getApplicationContext();
    }

    private boolean a() {
        try {
            return this.f7029b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final void endConnection() {
        this.f7028a = 3;
        if (this.f7031d != null) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Unbinding from service.");
            this.f7029b.unbindService(this.f7031d);
            this.f7031d = null;
        }
        this.f7030c = null;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final ReferrerDetails getInstallReferrer() throws RemoteException {
        if (isReady()) {
            Bundle bundle = new Bundle();
            bundle.putString("package_name", this.f7029b.getPackageName());
            try {
                return new ReferrerDetails(this.f7030c.a(bundle));
            } catch (RemoteException e) {
                InstallReferrerCommons.logWarn("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f7028a = 0;
                throw e;
            }
        } else {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final boolean isReady() {
        return (this.f7028a != 2 || this.f7030c == null || this.f7031d == null) ? false : true;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public final void startConnection(InstallReferrerStateListener installReferrerStateListener) {
        if (isReady()) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            installReferrerStateListener.onInstallReferrerSetupFinished(0);
            return;
        }
        int i = this.f7028a;
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
            List<ResolveInfo> queryIntentServices = this.f7029b.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null || !a()) {
                        InstallReferrerCommons.logWarn("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                        this.f7028a = 0;
                        installReferrerStateListener.onInstallReferrerSetupFinished(2);
                        return;
                    }
                    Intent intent2 = new Intent(intent);
                    a aVar = new a(installReferrerStateListener);
                    this.f7031d = aVar;
                    if (this.f7029b.bindService(intent2, aVar, 1)) {
                        InstallReferrerCommons.logVerbose("InstallReferrerClient", "Service was bonded successfully.");
                        return;
                    }
                    InstallReferrerCommons.logWarn("InstallReferrerClient", "Connection to service is blocked.");
                    this.f7028a = 0;
                    installReferrerStateListener.onInstallReferrerSetupFinished(1);
                    return;
                }
            }
            this.f7028a = 0;
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service unavailable on device.");
            installReferrerStateListener.onInstallReferrerSetupFinished(2);
        }
    }
}

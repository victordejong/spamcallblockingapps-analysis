package com.android.installreferrer.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.android.installreferrer.commons.InstallReferrerCommons;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p193e.p1577m.p1578a.p1639d.p1640a.AbstractC24868a;
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl.class */
public class InstallReferrerClientImpl extends InstallReferrerClient {

    /* renamed from: a */
    public int f1650a = 0;

    /* renamed from: b */
    public final Context f1651b;

    /* renamed from: c */
    public AbstractC24868a f1652c;

    /* renamed from: d */
    public ServiceConnection f1653d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$ClientState.class */
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    /* renamed from: com.android.installreferrer.api.InstallReferrerClientImpl$b */
    /* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$b.class */
    public final class ServiceConnectionC0466b implements ServiceConnection {

        /* renamed from: a */
        public final InstallReferrerStateListener f1654a;

        public ServiceConnectionC0466b(InstallReferrerStateListener installReferrerStateListener, C0465a c0465a) {
            InstallReferrerClientImpl.this = r5;
            if (installReferrerStateListener != null) {
                this.f1654a = installReferrerStateListener;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AbstractC24868a.AbstractBinderC24869a.C24870a c24870a;
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Install Referrer service connected.");
            InstallReferrerClientImpl installReferrerClientImpl = InstallReferrerClientImpl.this;
            int i = AbstractC24868a.AbstractBinderC24869a.f69753a;
            if (iBinder == null) {
                c24870a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                c24870a = queryLocalInterface instanceof AbstractC24868a ? (AbstractC24868a) queryLocalInterface : new AbstractC24868a.AbstractBinderC24869a.C24870a(iBinder);
            }
            installReferrerClientImpl.f1652c = c24870a;
            InstallReferrerClientImpl.this.f1650a = 2;
            this.f1654a.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            InstallReferrerCommons.logWarn("InstallReferrerClient", "Install Referrer service disconnected.");
            InstallReferrerClientImpl installReferrerClientImpl = InstallReferrerClientImpl.this;
            installReferrerClientImpl.f1652c = null;
            installReferrerClientImpl.f1650a = 0;
            this.f1654a.onInstallReferrerServiceDisconnected();
        }
    }

    public InstallReferrerClientImpl(Context context) {
        this.f1651b = context.getApplicationContext();
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public void endConnection() {
        this.f1650a = 3;
        if (this.f1653d != null) {
            InstallReferrerCommons.logVerbose("InstallReferrerClient", "Unbinding from service.");
            this.f1651b.unbindService(this.f1653d);
            this.f1653d = null;
        }
        this.f1652c = null;
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public ReferrerDetails getInstallReferrer() throws RemoteException {
        if (isReady()) {
            Bundle bundle = new Bundle();
            bundle.putString("package_name", this.f1651b.getPackageName());
            try {
                return new ReferrerDetails(this.f1652c.mo4344l(bundle));
            } catch (RemoteException e) {
                InstallReferrerCommons.logWarn("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f1650a = 0;
                throw e;
            }
        }
        throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
    }

    @Override // com.android.installreferrer.api.InstallReferrerClient
    public boolean isReady() {
        return (this.f1650a != 2 || this.f1652c == null || this.f1653d == null) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00db  */
    @Override // com.android.installreferrer.api.InstallReferrerClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startConnection(com.android.installreferrer.api.InstallReferrerStateListener r7) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.installreferrer.api.InstallReferrerClientImpl.startConnection(com.android.installreferrer.api.InstallReferrerStateListener):void");
    }
}

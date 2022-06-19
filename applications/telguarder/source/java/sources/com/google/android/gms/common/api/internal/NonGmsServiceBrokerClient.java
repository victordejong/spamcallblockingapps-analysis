package com.google.android.gms.common.api.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/NonGmsServiceBrokerClient.class */
public final class NonGmsServiceBrokerClient implements Api.Client, ServiceConnection {
    private static final String zaa = "NonGmsServiceBrokerClient";
    private final String zab;
    private final String zac;
    private final ComponentName zad;
    private final Context zae;
    private final ConnectionCallbacks zaf;
    private final Handler zag;
    private final OnConnectionFailedListener zah;
    private IBinder zai;
    private boolean zaj;
    private String zak;
    private String zal;

    public NonGmsServiceBrokerClient(Context context, Looper looper, ComponentName componentName, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, null, null, componentName, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
        if (r10 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private NonGmsServiceBrokerClient(android.content.Context r6, android.os.Looper r7, java.lang.String r8, java.lang.String r9, android.content.ComponentName r10, com.google.android.gms.common.api.internal.ConnectionCallbacks r11, com.google.android.gms.common.api.internal.OnConnectionFailedListener r12) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = 0
            r0.zaj = r1
            r0 = r5
            r1 = 0
            r0.zak = r1
            r0 = r5
            r1 = r6
            r0.zae = r1
            r0 = r5
            com.google.android.gms.internal.base.zap r1 = new com.google.android.gms.internal.base.zap
            r2 = r1
            r3 = r7
            r2.<init>(r3)
            r0.zag = r1
            r0 = r5
            r1 = r11
            r0.zaf = r1
            r0 = r5
            r1 = r12
            r0.zah = r1
            r0 = r8
            if (r0 == 0) goto L3f
            r0 = r9
            if (r0 == 0) goto L3f
            r0 = r10
            if (r0 != 0) goto L56
            r0 = 0
            r10 = r0
            goto L44
        L3f:
            r0 = r10
            if (r0 == 0) goto L56
        L44:
            r0 = r5
            r1 = r8
            r0.zab = r1
            r0 = r5
            r1 = r9
            r0.zac = r1
            r0 = r5
            r1 = r10
            r0.zad = r1
            return
        L56:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            java.lang.String r2 = "Must specify either package or component, but not both"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.NonGmsServiceBrokerClient.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    public NonGmsServiceBrokerClient(Context context, Looper looper, String str, String str2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, str, str2, null, connectionCallbacks, onConnectionFailedListener);
    }

    private final void zad() {
        if (Thread.currentThread() == this.zag.getLooper().getThread()) {
            return;
        }
        throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }

    private final void zae(String str) {
        String valueOf = String.valueOf(this.zai);
        str.length();
        String.valueOf(valueOf).length();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0082 -> B:20:0x0017). Please submit an issue!!! */
    @Override // com.google.android.gms.common.api.Api.Client
    public final void connect(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        zad();
        zae("Connect started.");
        if (isConnected()) {
            try {
                disconnect("connect() called when already connected");
            } catch (Exception e) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.zad;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.zab).setAction(this.zac);
            }
            boolean bindService = this.zae.bindService(intent, this, GmsClientSupervisor.getDefaultBindFlags());
            this.zaj = bindService;
            if (!bindService) {
                this.zai = null;
                this.zah.onConnectionFailed(new ConnectionResult(16));
            }
            zae("Finished connect.");
        } catch (SecurityException e2) {
            this.zaj = false;
            this.zai = null;
            throw e2;
        }
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        zad();
        zae("Disconnect called.");
        try {
            this.zae.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        this.zaj = false;
        this.zai = null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void disconnect(String str) {
        zad();
        this.zak = str;
        disconnect();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    public IBinder getBinder() {
        zad();
        return this.zai;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getEndpointPackageName() {
        String str = this.zab;
        if (str != null) {
            return str;
        }
        Preconditions.checkNotNull(this.zad);
        return this.zad.getPackageName();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final String getLastDisconnectMessage() {
        return this.zak;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set<Scope> getScopesForConnectionlessNonSignIn() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final IBinder getServiceBrokerBinder() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Intent getSignInIntent() {
        return new Intent();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnected() {
        zad();
        return this.zai != null;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean isConnecting() {
        zad();
        return this.zaj;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.zag.post(new Runnable(this, iBinder) { // from class: com.google.android.gms.common.api.internal.zabz
            private final NonGmsServiceBrokerClient zaa;
            private final IBinder zab;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zaa = this;
                this.zab = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zaa.zac(this.zab);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zag.post(new Runnable(this) { // from class: com.google.android.gms.common.api.internal.zaca
            private final NonGmsServiceBrokerClient zaa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zaa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zaa.zab();
            }
        });
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final void onUserSignOut(BaseGmsClient.SignOutCallbacks signOutCallbacks) {
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean providesSignIn() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresAccount() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return false;
    }

    public final void zaa(String str) {
        this.zal = str;
    }

    public final /* synthetic */ void zab() {
        this.zaj = false;
        this.zai = null;
        zae("Disconnected.");
        this.zaf.onConnectionSuspended(1);
    }

    public final /* synthetic */ void zac(IBinder iBinder) {
        this.zaj = false;
        this.zai = iBinder;
        zae("Connected.");
        this.zaf.onConnected(new Bundle());
    }
}

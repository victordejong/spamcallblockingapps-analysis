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
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.AbstractC12034g;
import com.google.android.gms.common.internal.AbstractC12036i;
import com.google.android.gms.common.internal.C12045o;
import java.util.Collections;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/k.class */
public final class ServiceConnectionC11903k implements ServiceConnection, C11808a.AbstractC11817f {

    /* renamed from: e */
    private static final String f39371e = "k";

    /* renamed from: a */
    final AbstractC11895e f39372a;

    /* renamed from: b */
    IBinder f39373b;

    /* renamed from: c */
    boolean f39374c;

    /* renamed from: d */
    public String f39375d;

    /* renamed from: f */
    private final String f39376f;

    /* renamed from: g */
    private final String f39377g;

    /* renamed from: h */
    private final ComponentName f39378h;

    /* renamed from: i */
    private final Context f39379i;

    /* renamed from: j */
    private final Handler f39380j;

    /* renamed from: k */
    private final AbstractC11904l f39381k;

    /* renamed from: l */
    private String f39382l;

    public ServiceConnectionC11903k(Context context, Looper looper, ComponentName componentName, AbstractC11895e abstractC11895e, AbstractC11904l abstractC11904l) {
        this(context, looper, null, null, componentName, abstractC11895e, abstractC11904l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
        if (r10 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ServiceConnectionC11903k(android.content.Context r6, android.os.Looper r7, java.lang.String r8, java.lang.String r9, android.content.ComponentName r10, com.google.android.gms.common.api.internal.AbstractC11895e r11, com.google.android.gms.common.api.internal.AbstractC11904l r12) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = 0
            r0.f39374c = r1
            r0 = r5
            r1 = 0
            r0.f39382l = r1
            r0 = r5
            r1 = r6
            r0.f39379i = r1
            r0 = r5
            com.google.android.gms.internal.base.j r1 = new com.google.android.gms.internal.base.j
            r2 = r1
            r3 = r7
            r2.<init>(r3)
            r0.f39380j = r1
            r0 = r5
            r1 = r11
            r0.f39372a = r1
            r0 = r5
            r1 = r12
            r0.f39381k = r1
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
            r0.f39376f = r1
            r0 = r5
            r1 = r9
            r0.f39377g = r1
            r0 = r5
            r1 = r10
            r0.f39378h = r1
            return
        L56:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            java.lang.String r2 = "Must specify either package or component, but not both"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.ServiceConnectionC11903k.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.e, com.google.android.gms.common.api.internal.l):void");
    }

    public ServiceConnectionC11903k(Context context, Looper looper, String str, String str2, AbstractC11895e abstractC11895e, AbstractC11904l abstractC11904l) {
        this(context, looper, str, str2, null, abstractC11895e, abstractC11904l);
    }

    /* renamed from: b */
    private final void m19319b() {
        if (Thread.currentThread() == this.f39380j.getLooper().getThread()) {
            return;
        }
        throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    /* renamed from: a */
    public final Set<Scope> mo19185a() {
        return Collections.emptySet();
    }

    /* renamed from: a */
    public final void m19320a(String str) {
        String valueOf = String.valueOf(this.f39373b);
        str.length();
        String.valueOf(valueOf).length();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0082 -> B:20:0x0017). Please submit an issue!!! */
    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void connect(AbstractC12025d.AbstractC12028c abstractC12028c) {
        m19319b();
        m19320a("Connect started.");
        if (isConnected()) {
            try {
                disconnect("connect() called when already connected");
            } catch (Exception e) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f39378h;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f39376f).setAction(this.f39377g);
            }
            boolean bindService = this.f39379i.bindService(intent, this, AbstractC12034g.m19182a());
            this.f39374c = bindService;
            if (!bindService) {
                this.f39373b = null;
                this.f39381k.mo19318a(new ConnectionResult(16));
            }
            m19320a("Finished connect.");
        } catch (SecurityException e2) {
            this.f39374c = false;
            this.f39373b = null;
            throw e2;
        }
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void disconnect() {
        m19319b();
        m19320a("Disconnect called.");
        try {
            this.f39379i.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        this.f39374c = false;
        this.f39373b = null;
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void disconnect(String str) {
        m19319b();
        this.f39382l = str;
        disconnect();
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final String getEndpointPackageName() {
        String str = this.f39376f;
        if (str != null) {
            return str;
        }
        C12045o.m19162a(this.f39378h);
        return this.f39378h.getPackageName();
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final String getLastDisconnectMessage() {
        return this.f39382l;
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void getRemoteService(AbstractC12036i abstractC12036i, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean isConnected() {
        m19319b();
        return this.f39373b != null;
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean isConnecting() {
        m19319b();
        return this.f39374c;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f39380j.post(new Runnable(this, iBinder) { // from class: com.google.android.gms.common.api.internal.ao

            /* renamed from: a */
            private final ServiceConnectionC11903k f39252a;

            /* renamed from: b */
            private final IBinder f39253b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39252a = this;
                this.f39253b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC11903k serviceConnectionC11903k = this.f39252a;
                IBinder iBinder2 = this.f39253b;
                serviceConnectionC11903k.f39374c = false;
                serviceConnectionC11903k.f39373b = iBinder2;
                serviceConnectionC11903k.m19320a("Connected.");
                AbstractC11895e abstractC11895e = serviceConnectionC11903k.f39372a;
                new Bundle();
                abstractC11895e.mo19358a();
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f39380j.post(new Runnable(this) { // from class: com.google.android.gms.common.api.internal.aq

            /* renamed from: a */
            private final ServiceConnectionC11903k f39254a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39254a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC11903k serviceConnectionC11903k = this.f39254a;
                serviceConnectionC11903k.f39374c = false;
                serviceConnectionC11903k.f39373b = null;
                serviceConnectionC11903k.m19320a("Disconnected.");
                serviceConnectionC11903k.f39372a.mo19357a(1);
            }
        });
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void onUserSignOut(AbstractC12025d.AbstractC12030e abstractC12030e) {
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final boolean requiresSignIn() {
        return false;
    }
}

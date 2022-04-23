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
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.g;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.o;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/k.class */
public final class k implements ServiceConnection, a.f {
    private static final String e = "k";

    /* renamed from: a  reason: collision with root package name */
    final e f22745a;

    /* renamed from: b  reason: collision with root package name */
    IBinder f22746b;

    /* renamed from: c  reason: collision with root package name */
    boolean f22747c;

    /* renamed from: d  reason: collision with root package name */
    public String f22748d;
    private final String f;
    private final String g;
    private final ComponentName h;
    private final Context i;
    private final Handler j;
    private final l k;
    private String l;

    public k(Context context, Looper looper, ComponentName componentName, e eVar, l lVar) {
        this(context, looper, null, null, componentName, eVar, lVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
        if (r10 != null) goto L_0x0044;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private k(android.content.Context r6, android.os.Looper r7, java.lang.String r8, java.lang.String r9, android.content.ComponentName r10, com.google.android.gms.common.api.internal.e r11, com.google.android.gms.common.api.internal.l r12) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = 0
            r0.f22747c = r1
            r0 = r5
            r1 = 0
            r0.l = r1
            r0 = r5
            r1 = r6
            r0.i = r1
            r0 = r5
            com.google.android.gms.internal.base.j r1 = new com.google.android.gms.internal.base.j
            r2 = r1
            r3 = r7
            r2.<init>(r3)
            r0.j = r1
            r0 = r5
            r1 = r11
            r0.f22745a = r1
            r0 = r5
            r1 = r12
            r0.k = r1
            r0 = r8
            if (r0 == 0) goto L_0x003f
            r0 = r9
            if (r0 == 0) goto L_0x003f
            r0 = r10
            if (r0 != 0) goto L_0x0056
            r0 = 0
            r10 = r0
            goto L_0x0044
        L_0x003f:
            r0 = r10
            if (r0 == 0) goto L_0x0056
        L_0x0044:
            r0 = r5
            r1 = r8
            r0.f = r1
            r0 = r5
            r1 = r9
            r0.g = r1
            r0 = r5
            r1 = r10
            r0.h = r1
            return
        L_0x0056:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            java.lang.String r2 = "Must specify either package or component, but not both"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.k.<init>(android.content.Context, android.os.Looper, java.lang.String, java.lang.String, android.content.ComponentName, com.google.android.gms.common.api.internal.e, com.google.android.gms.common.api.internal.l):void");
    }

    public k(Context context, Looper looper, String str, String str2, e eVar, l lVar) {
        this(context, looper, str, str2, null, eVar, lVar);
    }

    private final void b() {
        if (Thread.currentThread() != this.j.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    @Override // com.google.android.gms.common.api.a.f
    public final Set<Scope> a() {
        return Collections.emptySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        String valueOf = String.valueOf(this.f22746b);
        str.length();
        String.valueOf(valueOf).length();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0082 -> B:20:0x0017). Please submit an issue!!! */
    @Override // com.google.android.gms.common.api.a.f
    public final void connect(d.c cVar) {
        b();
        a("Connect started.");
        if (isConnected()) {
            try {
                disconnect("connect() called when already connected");
            } catch (Exception e2) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.h;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f).setAction(this.g);
            }
            boolean bindService = this.i.bindService(intent, this, g.a());
            this.f22747c = bindService;
            if (!bindService) {
                this.f22746b = null;
                this.k.a(new ConnectionResult(16));
            }
            a("Finished connect.");
        } catch (SecurityException e3) {
            this.f22747c = false;
            this.f22746b = null;
            throw e3;
        }
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void disconnect() {
        b();
        a("Disconnect called.");
        try {
            this.i.unbindService(this);
        } catch (IllegalArgumentException e2) {
        }
        this.f22747c = false;
        this.f22746b = null;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void disconnect(String str) {
        b();
        this.l = str;
        disconnect();
    }

    @Override // com.google.android.gms.common.api.a.f
    public final Feature[] getAvailableFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.a.f
    public final String getEndpointPackageName() {
        String str = this.f;
        if (str != null) {
            return str;
        }
        o.a(this.h);
        return this.h.getPackageName();
    }

    @Override // com.google.android.gms.common.api.a.f
    public final String getLastDisconnectMessage() {
        return this.l;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void getRemoteService(i iVar, Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean isConnected() {
        b();
        return this.f22746b != null;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean isConnecting() {
        b();
        return this.f22747c;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        this.j.post(new Runnable(this, iBinder) { // from class: com.google.android.gms.common.api.internal.ao

            /* renamed from: a  reason: collision with root package name */
            private final k f22656a;

            /* renamed from: b  reason: collision with root package name */
            private final IBinder f22657b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22656a = this;
                this.f22657b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k kVar = this.f22656a;
                IBinder iBinder2 = this.f22657b;
                kVar.f22747c = false;
                kVar.f22746b = iBinder2;
                kVar.a("Connected.");
                e eVar = kVar.f22745a;
                new Bundle();
                eVar.a();
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.j.post(new Runnable(this) { // from class: com.google.android.gms.common.api.internal.aq

            /* renamed from: a  reason: collision with root package name */
            private final k f22658a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22658a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k kVar = this.f22658a;
                kVar.f22747c = false;
                kVar.f22746b = null;
                kVar.a("Disconnected.");
                kVar.f22745a.a(1);
            }
        });
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void onUserSignOut(d.e eVar) {
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean requiresGooglePlayServices() {
        return false;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean requiresSignIn() {
        return false;
    }
}

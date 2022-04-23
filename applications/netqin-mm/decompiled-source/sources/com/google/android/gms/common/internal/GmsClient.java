package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Set;
import p131c.p161d.p170b.p224d.p238d.p243d.C3297e;
import p131c.p161d.p170b.p224d.p238d.p243d.C3298f;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClient.class */
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client, zai {

    /* renamed from: C */
    public final Set<Scope> f23441C;

    /* renamed from: D */
    public final Account f23442D;

    @KeepForSdk
    @Deprecated
    public GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, i, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GmsClient(android.content.Context r11, android.os.Looper r12, int r13, com.google.android.gms.common.internal.ClientSettings r14, com.google.android.gms.common.api.internal.ConnectionCallbacks r15, com.google.android.gms.common.api.internal.OnConnectionFailedListener r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.GmsClientSupervisor r0 = com.google.android.gms.common.internal.GmsClientSupervisor.m17307a(r0)
            r17 = r0
            com.google.android.gms.common.GoogleApiAvailability r0 = com.google.android.gms.common.GoogleApiAvailability.m17826a()
            r18 = r0
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m17288a(r0)
            r0 = r15
            com.google.android.gms.common.api.internal.ConnectionCallbacks r0 = (com.google.android.gms.common.api.internal.ConnectionCallbacks) r0
            r15 = r0
            r0 = r16
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.m17288a(r0)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            com.google.android.gms.common.api.internal.OnConnectionFailedListener r8 = (com.google.android.gms.common.api.internal.OnConnectionFailedListener) r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.GmsClient.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.ClientSettings, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    @VisibleForTesting
    public GmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailability googleApiAvailability, int i, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, gmsClientSupervisor, googleApiAvailability, i, m17315a(connectionCallbacks), m17314a(onConnectionFailedListener), clientSettings.m17324g());
        this.f23442D = clientSettings.m17332a();
        Set<Scope> c = clientSettings.m17328c();
        m17312b(c);
        this.f23441C = c;
    }

    /* renamed from: a */
    public static BaseGmsClient.BaseConnectionCallbacks m17315a(ConnectionCallbacks connectionCallbacks) {
        if (connectionCallbacks == null) {
            return null;
        }
        return new C3298f(connectionCallbacks);
    }

    /* renamed from: a */
    public static BaseGmsClient.BaseOnConnectionFailedListener m17314a(OnConnectionFailedListener onConnectionFailedListener) {
        if (onConnectionFailedListener == null) {
            return null;
        }
        return new C3297e(onConnectionFailedListener);
    }

    @KeepForSdk
    /* renamed from: a */
    public Set<Scope> m17313a(Set<Scope> set) {
        return set;
    }

    /* renamed from: b */
    public final Set<Scope> m17312b(Set<Scope> set) {
        m17313a(set);
        for (Scope scope : set) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return set;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @KeepForSdk
    /* renamed from: f */
    public Set<Scope> mo17311f() {
        return mo8642n() ? this.f23441C : Collections.emptySet();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: s */
    public final Account mo17310s() {
        return this.f23442D;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @KeepForSdk
    /* renamed from: x */
    public final Set<Scope> mo17309x() {
        return this.f23441C;
    }
}

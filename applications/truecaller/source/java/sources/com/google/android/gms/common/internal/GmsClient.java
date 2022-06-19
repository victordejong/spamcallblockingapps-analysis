package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24968e;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24969f;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/GmsClient.class */
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client, zaj {
    private final ClientSettings zaa;
    private final Set<Scope> zab;
    private final Account zac;

    @VisibleForTesting
    @KeepForSdk
    public GmsClient(@RecentlyNonNull Context context, @RecentlyNonNull Handler handler, int i, @RecentlyNonNull ClientSettings clientSettings) {
        super(context, handler, GmsClientSupervisor.m38918a(context), GoogleApiAvailability.f5673d, i, null, null);
        Objects.requireNonNull(clientSettings, "null reference");
        this.zaa = clientSettings;
        this.zac = clientSettings.f5942a;
        this.zab = zaa(clientSettings.f5944c);
    }

    @KeepForSdk
    public GmsClient(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, int i, @RecentlyNonNull ClientSettings clientSettings) {
        this(context, looper, GmsClientSupervisor.m38918a(context), GoogleApiAvailability.f5673d, i, clientSettings, null, null);
    }

    @KeepForSdk
    @Deprecated
    public GmsClient(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, int i, @RecentlyNonNull ClientSettings clientSettings, @RecentlyNonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks, @RecentlyNonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, i, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GmsClient(@androidx.annotation.RecentlyNonNull android.content.Context r11, @androidx.annotation.RecentlyNonNull android.os.Looper r12, int r13, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.internal.ClientSettings r14, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.ConnectionCallbacks r15, @androidx.annotation.RecentlyNonNull com.google.android.gms.common.api.internal.OnConnectionFailedListener r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.GmsClientSupervisor r0 = com.google.android.gms.common.internal.GmsClientSupervisor.m38918a(r0)
            r17 = r0
            com.google.android.gms.common.GoogleApiAvailability r0 = com.google.android.gms.common.GoogleApiAvailability.f5673d
            r18 = r0
            r0 = r15
            java.lang.String r1 = "null reference"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r16
            java.lang.String r1 = "null reference"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.GmsClient.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.ClientSettings, com.google.android.gms.common.api.internal.ConnectionCallbacks, com.google.android.gms.common.api.internal.OnConnectionFailedListener):void");
    }

    @VisibleForTesting
    public GmsClient(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull GmsClientSupervisor gmsClientSupervisor, @RecentlyNonNull GoogleApiAvailability googleApiAvailability, int i, @RecentlyNonNull ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, gmsClientSupervisor, googleApiAvailability, i, connectionCallbacks == null ? null : new C24968e(connectionCallbacks), onConnectionFailedListener == null ? null : new C24969f(onConnectionFailedListener), clientSettings.f5947f);
        this.zaa = clientSettings;
        this.zac = clientSettings.f5942a;
        this.zab = zaa(clientSettings.f5944c);
    }

    private final Set<Scope> zaa(Set<Scope> set) {
        Set<Scope> validateScopes = validateScopes(set);
        for (Scope scope : validateScopes) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return validateScopes;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @RecentlyNullable
    public final Account getAccount() {
        return this.zac;
    }

    @RecentlyNonNull
    @KeepForSdk
    public final ClientSettings getClientSettings() {
        return this.zaa;
    }

    @RecentlyNonNull
    @KeepForSdk
    public Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @RecentlyNonNull
    @KeepForSdk
    public final Set<Scope> getScopes() {
        return this.zab;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    @KeepForSdk
    public Set<Scope> getScopesForConnectionlessNonSignIn() {
        return requiresSignIn() ? this.zab : Collections.emptySet();
    }

    @KeepForSdk
    public Set<Scope> validateScopes(@RecentlyNonNull Set<Scope> set) {
        return set;
    }
}

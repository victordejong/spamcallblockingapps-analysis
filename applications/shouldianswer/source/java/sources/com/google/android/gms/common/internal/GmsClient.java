package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClientEventManager;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClient.class */
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client, GmsClientEventManager.GmsClientEventState {
    private final Set<Scope> mScopes;
    private final ClientSettings zaet;
    private final Account zax;

    protected GmsClient(Context context, Handler handler, int i, ClientSettings clientSettings) {
        this(context, handler, GmsClientSupervisor.getInstance(context), GoogleApiAvailability.getInstance(), i, clientSettings, (GoogleApiClient.ConnectionCallbacks) null, (GoogleApiClient.OnConnectionFailedListener) null);
    }

    protected GmsClient(Context context, Handler handler, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailability googleApiAvailability, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, handler, gmsClientSupervisor, googleApiAvailability, i, zaa(connectionCallbacks), zaa(onConnectionFailedListener));
        this.zaet = (ClientSettings) Preconditions.checkNotNull(clientSettings);
        this.zax = clientSettings.getAccount();
        this.mScopes = zaa(clientSettings.getAllRequestedScopes());
    }

    public GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings) {
        this(context, looper, GmsClientSupervisor.getInstance(context), GoogleApiAvailability.getInstance(), i, clientSettings, (GoogleApiClient.ConnectionCallbacks) null, (GoogleApiClient.OnConnectionFailedListener) null);
    }

    public GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, GmsClientSupervisor.getInstance(context), GoogleApiAvailability.getInstance(), i, clientSettings, (GoogleApiClient.ConnectionCallbacks) Preconditions.checkNotNull(connectionCallbacks), (GoogleApiClient.OnConnectionFailedListener) Preconditions.checkNotNull(onConnectionFailedListener));
    }

    protected GmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailability googleApiAvailability, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, gmsClientSupervisor, googleApiAvailability, i, zaa(connectionCallbacks), zaa(onConnectionFailedListener), clientSettings.getRealClientClassName());
        this.zaet = clientSettings;
        this.zax = clientSettings.getAccount();
        this.mScopes = zaa(clientSettings.getAllRequestedScopes());
    }

    private static BaseGmsClient.BaseConnectionCallbacks zaa(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        if (connectionCallbacks == null) {
            return null;
        }
        return new zaf(connectionCallbacks);
    }

    private static BaseGmsClient.BaseOnConnectionFailedListener zaa(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        if (onConnectionFailedListener == null) {
            return null;
        }
        return new zag(onConnectionFailedListener);
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
    public final Account getAccount() {
        return this.zax;
    }

    protected final ClientSettings getClientSettings() {
        return this.zaet;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public int getMinApkVersion() {
        return super.getMinApkVersion();
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public Feature[] getRequiredFeatures() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Set<Scope> getScopes() {
        return this.mScopes;
    }

    protected Set<Scope> validateScopes(Set<Scope> set) {
        return set;
    }
}

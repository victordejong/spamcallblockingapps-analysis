package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbo.class */
public final class zbo extends GmsClient<zbt> {
    private final Auth.AuthCredentialsOptions zba;

    public zbo(Context context, Looper looper, ClientSettings clientSettings, Auth.AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, clientSettings, connectionCallbacks, onConnectionFailedListener);
        Auth.AuthCredentialsOptions.Builder builder = new Auth.AuthCredentialsOptions.Builder(authCredentialsOptions == null ? Auth.AuthCredentialsOptions.f5354c : authCredentialsOptions);
        builder.f5358b = zbax.zba();
        this.zba = new Auth.AuthCredentialsOptions(builder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* bridge */ /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        zbt zbtVar;
        if (iBinder == null) {
            zbtVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            zbtVar = queryLocalInterface instanceof zbt ? (zbt) queryLocalInterface : new zbt(iBinder);
        }
        return zbtVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        Auth.AuthCredentialsOptions authCredentialsOptions = this.zba;
        Objects.requireNonNull(authCredentialsOptions);
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", authCredentialsOptions.f5355a);
        bundle.putString("log_session_id", authCredentialsOptions.f5356b);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    public final Auth.AuthCredentialsOptions zba() {
        return this.zba;
    }
}

package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.internal.plus.zzr;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/internal/zzh.class */
public final class zzh extends GmsClient<zzf> {
    private Person zzr;
    private final zzn zzs;

    public zzh(Context context, Looper looper, ClientSettings clientSettings, zzn zznVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 2, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.zzs = zznVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
        return queryLocalInterface instanceof zzf ? (zzf) queryLocalInterface : new zzg(iBinder);
    }

    public final String getAccountName() {
        checkConnected();
        try {
            return ((zzf) getService()).getAccountName();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final Bundle getGetServiceRequestExtraArgs() {
        Bundle zze = this.zzs.zze();
        zze.putStringArray("request_visible_actions", this.zzs.zzc());
        zze.putString(ServiceSpecificExtraArgs.PlusExtraArgs.PLUS_AUTH_PACKAGE, this.zzs.zzd());
        return zze;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return "com.google.android.gms.plus.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.zzr = zzr.zza(bundle.getByteArray("loaded_person"));
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        Set<Scope> applicableScopes = getClientSettings().getApplicableScopes(Plus.API);
        if (applicableScopes == null || applicableScopes.isEmpty()) {
            return false;
        }
        return applicableScopes.size() != 1 || !applicableScopes.contains(new Scope("plus_one_placeholder_scope"));
    }

    public final ICancelToken zza(BaseImplementation.ResultHolder<People.LoadPeopleResult> resultHolder, int i, String str) {
        checkConnected();
        zzj zzjVar = new zzj(resultHolder);
        try {
            return ((zzf) getService()).zza(zzjVar, 1, i, -1, str);
        } catch (RemoteException e) {
            zzjVar.zza(DataHolder.empty(8), (String) null);
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void zza() {
        checkConnected();
        try {
            this.zzr = null;
            ((zzf) getService()).zza();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public final void zza(BaseImplementation.ResultHolder<People.LoadPeopleResult> resultHolder) {
        checkConnected();
        zzj zzjVar = new zzj(resultHolder);
        try {
            ((zzf) getService()).zza(zzjVar, 2, 1, -1, null);
        } catch (RemoteException e) {
            zzjVar.zza(DataHolder.empty(8), (String) null);
        }
    }

    public final void zza(BaseImplementation.ResultHolder<People.LoadPeopleResult> resultHolder, Collection<String> collection) {
        checkConnected();
        zzj zzjVar = new zzj(resultHolder);
        try {
            ((zzf) getService()).zza(zzjVar, new ArrayList(collection));
        } catch (RemoteException e) {
            zzjVar.zza(DataHolder.empty(8), (String) null);
        }
    }

    public final void zza(BaseImplementation.ResultHolder<People.LoadPeopleResult> resultHolder, String[] strArr) {
        zza(resultHolder, Arrays.asList(strArr));
    }

    public final Person zzb() {
        checkConnected();
        return this.zzr;
    }

    public final void zzb(BaseImplementation.ResultHolder<Status> resultHolder) {
        checkConnected();
        zza();
        zzk zzkVar = new zzk(resultHolder);
        try {
            ((zzf) getService()).zza(zzkVar);
        } catch (RemoteException e) {
            zzkVar.zza(8, (Bundle) null);
        }
    }
}

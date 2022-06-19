package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/security/zza.class */
final class zza extends AsyncTask<Void, Void, Integer> {
    final /* synthetic */ Context zza;
    final /* synthetic */ ProviderInstaller.ProviderInstallListener zzb;

    public zza(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.zza = context;
        this.zzb = providerInstallListener;
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ Integer doInBackground(Void[] voidArr) {
        int i;
        try {
            ProviderInstaller.installIfNeeded(this.zza);
            i = 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            i = e.errorCode;
        } catch (GooglePlayServicesRepairableException e2) {
            i = e2.getConnectionStatusCode();
        }
        return Integer.valueOf(i);
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(Integer num) {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Integer num2 = num;
        if (num2.intValue() == 0) {
            this.zzb.onProviderInstalled();
            return;
        }
        googleApiAvailabilityLight = ProviderInstaller.zza;
        this.zzb.onProviderInstallFailed(num2.intValue(), googleApiAvailabilityLight.getErrorResolutionIntent(this.zza, num2.intValue(), "pi"));
    }
}

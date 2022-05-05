package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/security/zza.class */
final class zza extends AsyncTask<Void, Void, Integer> {

    /* renamed from: a */
    private final /* synthetic */ Context f9799a;

    /* renamed from: b */
    private final /* synthetic */ ProviderInstaller.ProviderInstallListener f9800b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final Integer doInBackground(Void... voidArr) {
        try {
            ProviderInstaller.m10868a(this.f9799a);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            return Integer.valueOf(e.f6982f);
        } catch (GooglePlayServicesRepairableException e2) {
            return Integer.valueOf(e2.m15056a());
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Integer num) {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Integer num2 = num;
        if (num2.intValue() == 0) {
            this.f9800b.m10864a();
            return;
        }
        googleApiAvailabilityLight = ProviderInstaller.f9796a;
        this.f9800b.m10863b(num2.intValue(), googleApiAvailabilityLight.mo15068d(this.f9799a, num2.intValue(), "pi"));
    }
}

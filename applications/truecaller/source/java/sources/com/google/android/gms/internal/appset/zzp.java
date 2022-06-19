package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.appset.zza;
import com.google.android.gms.appset.zze;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/zzp.class */
public final class zzp extends GoogleApi<Api.ApiOptions.NoOptions> implements AppSetIdClient {
    private static final Api.ClientKey<zzd> zza;
    private static final Api.AbstractClientBuilder<zzd, Api.ApiOptions.NoOptions> zzb;
    private static final Api<Api.ApiOptions.NoOptions> zzc;
    private final Context zzd;
    private final GoogleApiAvailabilityLight zze;

    static {
        Api.ClientKey<zzd> clientKey = new Api.ClientKey<>();
        zza = clientKey;
        zzn zznVar = new zzn();
        zzb = zznVar;
        zzc = new Api<>("AppSet.API", zznVar, clientKey);
    }

    public zzp(Context context, GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        super(context, zzc, Api.ApiOptions.f5692a0, GoogleApi.Settings.f5696c);
        this.zzd = context;
        this.zze = googleApiAvailabilityLight;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        if (this.zze.mo39062e(this.zzd, 212800000) == 0) {
            TaskApiCall.Builder builder = TaskApiCall.builder();
            builder.f5777c = new Feature[]{zze.f5321a};
            builder.f5775a = new RemoteCall() { // from class: com.google.android.gms.internal.appset.zzm
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    ((zzg) ((zzd) obj).getService()).zzc(new zza(null, null), new zzo(zzp.this, (TaskCompletionSource) obj2));
                }
            };
            builder.f5776b = false;
            builder.f5778d = 27601;
            return doRead(builder.m39016a());
        }
        return Tasks.m38510e(new ApiException(new Status(17, null)));
    }
}

package com.google.android.gms.internal.auth_api_phone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.phone.SmsCodeAutofillClient;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth-api-phone.zzn;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzn.class */
public final class zzn extends GoogleApi<Api.ApiOptions.NoOptions> implements SmsCodeAutofillClient {
    private static final Api.ClientKey<zzv> zza;
    private static final Api.AbstractClientBuilder<zzv, Api.ApiOptions.NoOptions> zzb;
    private static final Api<Api.ApiOptions.NoOptions> zzc;

    static {
        Api.ClientKey<zzv> clientKey = new Api.ClientKey<>();
        zza = clientKey;
        zzr zzrVar = new zzr();
        zzb = zzrVar;
        zzc = new Api<>("SmsCodeAutofill.API", zzrVar, clientKey);
    }

    public zzn(Activity activity) {
        super(activity, (Api<Api.ApiOptions>) zzc, (Api.ApiOptions) null, GoogleApi.Settings.f5696c);
    }

    public zzn(Context context) {
        super(context, zzc, (Api.ApiOptions) null, GoogleApi.Settings.f5696c);
    }

    public final Task<Integer> checkPermissionState() {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.f5777c = new Feature[]{zzaa.zza};
        builder.f5775a = new RemoteCall(this) { // from class: com.google.android.gms.internal.auth_api_phone.zzp
            private final zzn zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzj) ((zzv) obj).getService()).zza(new zzt(this.zza, (TaskCompletionSource) obj2));
            }
        };
        return doRead(builder.m39016a());
    }

    public final Task<Boolean> hasOngoingSmsRequest(String str) {
        Objects.requireNonNull(str, "null reference");
        Preconditions.m38906b(!str.isEmpty(), "The package name cannot be empty.");
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.f5777c = new Feature[]{zzaa.zza};
        builder.f5775a = new RemoteCall(this, str) { // from class: com.google.android.gms.internal.auth_api_phone.zzo
            private final zzn zza;
            private final String zzb;

            {
                this.zza = this;
                this.zzb = str;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzn zznVar = this.zza;
                ((zzj) ((zzv) obj).getService()).zza(this.zzb, new zzs(zznVar, (TaskCompletionSource) obj2));
            }
        };
        return doRead(builder.m39016a());
    }

    public final Task<Void> startSmsCodeRetriever() {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.f5777c = new Feature[]{zzaa.zza};
        builder.f5775a = new RemoteCall(this) { // from class: com.google.android.gms.internal.auth_api_phone.zzm
            private final zzn zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzj) ((zzv) obj).getService()).zza(new zzq(this.zza, (TaskCompletionSource) obj2));
            }
        };
        return doWrite(builder.m39016a());
    }
}

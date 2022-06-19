package com.google.android.gms.auth.api.phone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.auth_api_phone.zzv;
import com.google.android.gms.tasks.Task;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1648b.C24882a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/phone/SmsRetrieverClient.class */
public abstract class SmsRetrieverClient extends GoogleApi<Api.ApiOptions.NoOptions> implements SmsRetrieverApi {
    private static final Api.ClientKey<zzv> zza;
    private static final Api.AbstractClientBuilder<zzv, Api.ApiOptions.NoOptions> zzb;
    private static final Api<Api.ApiOptions.NoOptions> zzc;

    static {
        Api.ClientKey<zzv> clientKey = new Api.ClientKey<>();
        zza = clientKey;
        C24882a c24882a = new C24882a();
        zzb = c24882a;
        zzc = new Api<>("SmsRetriever.API", c24882a, clientKey);
    }

    public SmsRetrieverClient(Activity activity) {
        super(activity, (Api<Api.ApiOptions>) zzc, (Api.ApiOptions) null, GoogleApi.Settings.f5696c);
    }

    public SmsRetrieverClient(Context context) {
        super(context, zzc, (Api.ApiOptions) null, GoogleApi.Settings.f5696c);
    }

    public abstract Task<Void> startSmsRetriever();

    public abstract Task<Void> startSmsUserConsent(String str);
}

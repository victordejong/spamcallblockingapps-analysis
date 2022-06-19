package com.google.android.gms.internal.auth_api_phone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.phone.SmsRetrieverClient;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.auth-api-phone.zzl;
import com.google.android.gms.internal.auth-api-phone.zzu;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzu.class */
public final class zzu extends SmsRetrieverClient {
    public zzu(Activity activity) {
        super(activity);
    }

    public zzu(Context context) {
        super(context);
    }

    @Override // com.google.android.gms.auth.api.phone.SmsRetrieverClient
    public final Task<Void> startSmsRetriever() {
        return doWrite(new zzw(this));
    }

    @Override // com.google.android.gms.auth.api.phone.SmsRetrieverClient
    public final Task<Void> startSmsUserConsent(String str) {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        builder.f5775a = new RemoteCall(this, str) { // from class: com.google.android.gms.internal.auth_api_phone.zzx
            private final zzu zza;
            private final String zzb;

            {
                this.zza = this;
                this.zzb = str;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzu zzuVar = this.zza;
                ((zzj) ((zzv) obj).getService()).zza(this.zzb, (zzl) new zzy(zzuVar, (TaskCompletionSource) obj2));
            }
        };
        builder.f5777c = new Feature[]{zzaa.zzb};
        return doWrite(builder.m39016a());
    }
}

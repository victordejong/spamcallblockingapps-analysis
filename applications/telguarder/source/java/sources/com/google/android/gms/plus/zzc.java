package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.util.ScopeUtil;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.zzh;
import com.google.android.gms.plus.internal.zzn;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/zzc.class */
final class zzc extends Api.AbstractClientBuilder<zzh, Plus.PlusOptions> {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ zzh buildClient(Context context, Looper looper, ClientSettings clientSettings, Plus.PlusOptions plusOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Plus.PlusOptions plusOptions2 = plusOptions;
        Plus.PlusOptions plusOptions3 = plusOptions2;
        if (plusOptions2 == null) {
            plusOptions3 = new Plus.PlusOptions((zzc) null);
        }
        return new zzh(context, looper, clientSettings, new zzn(clientSettings.getAccountOrDefault().name, ScopeUtil.toScopeString(clientSettings.getAllRequestedScopes()), (String[]) plusOptions3.zzh.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras()), connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.Api.BaseClientBuilder
    public final int getPriority() {
        return 2;
    }
}

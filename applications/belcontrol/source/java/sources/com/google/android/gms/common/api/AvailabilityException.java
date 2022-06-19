package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {
    private final b4<ApiKey<?>, ConnectionResult> zaa;

    public AvailabilityException(b4<ApiKey<?>, ConnectionResult> b4Var) {
        this.zaa = b4Var;
    }

    public ConnectionResult getConnectionResult(GoogleApi<? extends Api.ApiOptions> googleApi) {
        ApiKey apiKey = googleApi.getApiKey();
        boolean z = this.zaa.get(apiKey) != null;
        String apiName = apiKey.getApiName();
        StringBuilder sb = new StringBuilder(String.valueOf(apiName).length() + 58);
        sb.append("The given API (");
        sb.append(apiName);
        sb.append(") was not part of the availability request.");
        Preconditions.checkArgument(z, sb.toString());
        return (ConnectionResult) this.zaa.get(apiKey);
    }

    public ConnectionResult getConnectionResult(HasApiKey<? extends Api.ApiOptions> hasApiKey) {
        ApiKey<? extends Api.ApiOptions> apiKey = hasApiKey.getApiKey();
        boolean z = this.zaa.get(apiKey) != null;
        String apiName = apiKey.getApiName();
        StringBuilder sb = new StringBuilder(String.valueOf(apiName).length() + 58);
        sb.append("The given API (");
        sb.append(apiName);
        sb.append(") was not part of the availability request.");
        Preconditions.checkArgument(z, sb.toString());
        return (ConnectionResult) this.zaa.get(apiKey);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ApiKey apiKey : this.zaa.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) this.zaa.get(apiKey);
            if (connectionResult.isSuccess()) {
                z = false;
            }
            String apiName = apiKey.getApiName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(apiName).length() + 2 + String.valueOf(valueOf).length());
            sb.append(apiName);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z ? "None of the queried APIs are available. " : "Some of the queried APIs are unavailable. ");
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}

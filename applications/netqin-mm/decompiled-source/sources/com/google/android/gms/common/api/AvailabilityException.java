package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import p012b.p035f.C0780a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {
    public final C0780a<ApiKey<?>, ConnectionResult> zaa;

    public AvailabilityException(C0780a<ApiKey<?>, ConnectionResult> aVar) {
        this.zaa = aVar;
    }

    public ConnectionResult getConnectionResult(GoogleApi<? extends Api.ApiOptions> googleApi) {
        ApiKey<? extends Api.ApiOptions> a = googleApi.mo17755a();
        boolean z = this.zaa.get(a) != null;
        String a2 = a.m17739a();
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 58);
        sb.append("The given API (");
        sb.append(a2);
        sb.append(") was not part of the availability request.");
        Preconditions.m17283a(z, sb.toString());
        return this.zaa.get(a);
    }

    public ConnectionResult getConnectionResult(HasApiKey<? extends Api.ApiOptions> hasApiKey) {
        ApiKey<? extends Api.ApiOptions> a = hasApiKey.mo17755a();
        boolean z = this.zaa.get(a) != null;
        String a2 = a.m17739a();
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 58);
        sb.append("The given API (");
        sb.append(a2);
        sb.append(") was not part of the availability request.");
        Preconditions.m17283a(z, sb.toString());
        return this.zaa.get(a);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ApiKey<?> apiKey : this.zaa.keySet()) {
            ConnectionResult connectionResult = this.zaa.get(apiKey);
            if (connectionResult.m17830y()) {
                z = false;
            }
            String a = apiKey.m17739a();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 2 + String.valueOf(valueOf).length());
            sb.append(a);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}

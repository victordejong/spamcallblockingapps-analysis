package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: f */
    private final ArrayMap<ApiKey<?>, ConnectionResult> f7002f;

    public AvailabilityException(ArrayMap<ApiKey<?>, ConnectionResult> arrayMap) {
        this.f7002f = arrayMap;
    }

    /* renamed from: a */
    public ConnectionResult m15026a(GoogleApi<? extends Api.ApiOptions> googleApi) {
        ApiKey<? extends Api.ApiOptions> apiKey = googleApi.getApiKey();
        Preconditions.m14532b(this.f7002f.get(apiKey) != null, "The given API was not part of the availability request.");
        return this.f7002f.get(apiKey);
    }

    /* renamed from: b */
    public final ArrayMap<ApiKey<?>, ConnectionResult> m15025b() {
        return this.f7002f;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ApiKey<?> apiKey : this.f7002f.keySet()) {
            ConnectionResult connectionResult = this.f7002f.get(apiKey);
            if (connectionResult.m15090d0()) {
                z = false;
            }
            String a = apiKey.m14993a();
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

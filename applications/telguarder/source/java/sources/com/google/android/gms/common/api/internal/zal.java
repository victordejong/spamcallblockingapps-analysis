package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zal.class */
public final class zal {
    private int zad;
    private final ArrayMap<ApiKey<?>, String> zab = new ArrayMap<>();
    private final TaskCompletionSource<Map<ApiKey<?>, String>> zac = new TaskCompletionSource<>();
    private boolean zae = false;
    private final ArrayMap<ApiKey<?>, ConnectionResult> zaa = new ArrayMap<>();

    public zal(Iterable<? extends HasApiKey<?>> iterable) {
        for (HasApiKey<?> hasApiKey : iterable) {
            this.zaa.put(hasApiKey.getApiKey(), null);
        }
        this.zad = this.zaa.keySet().size();
    }

    public final Set<ApiKey<?>> zaa() {
        return this.zaa.keySet();
    }

    public final Task<Map<ApiKey<?>, String>> zab() {
        return this.zac.getTask();
    }

    public final void zac(ApiKey<?> apiKey, ConnectionResult connectionResult, String str) {
        this.zaa.put(apiKey, connectionResult);
        this.zab.put(apiKey, str);
        this.zad--;
        if (!connectionResult.isSuccess()) {
            this.zae = true;
        }
        if (this.zad == 0) {
            if (!this.zae) {
                this.zac.setResult(this.zab);
                return;
            }
            this.zac.setException(new AvailabilityException(this.zaa));
        }
    }
}

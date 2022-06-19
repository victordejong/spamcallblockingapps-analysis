package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaj.class */
public final class zaj {
    private int zad;
    private final b4<ApiKey<?>, String> zab = new b4<>();
    private final TaskCompletionSource<Map<ApiKey<?>, String>> zac = new TaskCompletionSource<>();
    private boolean zae = false;
    private final b4<ApiKey<?>, ConnectionResult> zaa = new b4<>();

    public zaj(Iterable<? extends HasApiKey<?>> iterable) {
        for (HasApiKey<?> hasApiKey : iterable) {
            this.zaa.put(hasApiKey.getApiKey(), (Object) null);
        }
        this.zad = this.zaa.keySet().size();
    }

    public final Set<ApiKey<?>> zaa() {
        return this.zaa.keySet();
    }

    public final void zaa(ApiKey<?> apiKey, ConnectionResult connectionResult, String str) {
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

    public final Task<Map<ApiKey<?>, String>> zab() {
        return this.zac.getTask();
    }
}

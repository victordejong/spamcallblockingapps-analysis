package com.google.android.gms.common.api.internal;

import androidx.p014c.C0374a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zak.class */
public final class zak {
    private int zadd;
    private final C0374a<zai<?>, String> zadb = new C0374a<>();
    private final TaskCompletionSource<Map<zai<?>, String>> zadc = new TaskCompletionSource<>();
    private boolean zade = false;
    private final C0374a<zai<?>, ConnectionResult> zaay = new C0374a<>();

    public zak(Iterable<? extends GoogleApi<?>> iterable) {
        for (GoogleApi<?> googleApi : iterable) {
            this.zaay.put(googleApi.zak(), null);
        }
        this.zadd = this.zaay.keySet().size();
    }

    public final Task<Map<zai<?>, String>> getTask() {
        return this.zadc.getTask();
    }

    public final void zaa(zai<?> zaiVar, ConnectionResult connectionResult, String str) {
        this.zaay.put(zaiVar, connectionResult);
        this.zadb.put(zaiVar, str);
        this.zadd--;
        if (!connectionResult.isSuccess()) {
            this.zade = true;
        }
        if (this.zadd == 0) {
            if (!this.zade) {
                this.zadc.setResult(this.zadb);
                return;
            }
            this.zadc.setException(new AvailabilityException(this.zaay));
        }
    }

    public final Set<zai<?>> zap() {
        return this.zaay.keySet();
    }
}

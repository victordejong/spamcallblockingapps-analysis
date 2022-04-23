package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaj.class */
public final class zaj {

    /* renamed from: d */
    private int f7307d;

    /* renamed from: b */
    private final ArrayMap<ApiKey<?>, String> f7305b = new ArrayMap<>();

    /* renamed from: c */
    private final TaskCompletionSource<Map<ApiKey<?>, String>> f7306c = new TaskCompletionSource<>();

    /* renamed from: e */
    private boolean f7308e = false;

    /* renamed from: a */
    private final ArrayMap<ApiKey<?>, ConnectionResult> f7304a = new ArrayMap<>();

    public zaj(Iterable<? extends HasApiKey<?>> iterable) {
        Iterator<? extends HasApiKey<?>> it = iterable.iterator();
        while (it.hasNext()) {
            this.f7304a.put(((HasApiKey) it.next()).getApiKey(), null);
        }
        this.f7307d = this.f7304a.keySet().size();
    }

    /* renamed from: a */
    public final Task<Map<ApiKey<?>, String>> m14730a() {
        return this.f7306c.m10830a();
    }

    /* renamed from: b */
    public final void m14729b(ApiKey<?> apiKey, ConnectionResult connectionResult, @Nullable String str) {
        this.f7304a.put(apiKey, connectionResult);
        this.f7305b.put(apiKey, str);
        this.f7307d--;
        if (!connectionResult.m15090d0()) {
            this.f7308e = true;
        }
        if (this.f7307d != 0) {
            return;
        }
        if (this.f7308e) {
            this.f7306c.m10829b(new AvailabilityException(this.f7304a));
            return;
        }
        this.f7306c.m10828c(this.f7305b);
    }

    /* renamed from: c */
    public final Set<ApiKey<?>> m14728c() {
        return this.f7304a.keySet();
    }
}

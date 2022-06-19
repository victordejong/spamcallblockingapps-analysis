package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaaa.class */
public final class zaaa {

    /* renamed from: a */
    public final Map<BasePendingResult<?>, Boolean> f5780a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    public final Map<TaskCompletionSource<?>, Boolean> f5781b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: a */
    public final void m39013a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f5780a) {
            hashMap = new HashMap(this.f5780a);
        }
        synchronized (this.f5781b) {
            hashMap2 = new HashMap(this.f5781b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).forceFailureUnlessReady(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).m38516a(new ApiException(status));
            }
        }
    }
}

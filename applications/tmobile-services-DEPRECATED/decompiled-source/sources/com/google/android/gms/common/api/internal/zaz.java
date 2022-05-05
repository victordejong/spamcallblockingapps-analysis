package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaz.class */
public final class zaz {

    /* renamed from: a */
    private final Map<BasePendingResult<?>, Boolean> f7361a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    private final Map<TaskCompletionSource<?>, Boolean> f7362b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: d */
    private final void m14654d(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f7361a) {
            hashMap = new HashMap(this.f7361a);
        }
        synchronized (this.f7362b) {
            hashMap2 = new HashMap(this.f7362b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m14967p(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).m10827d(new ApiException(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m14656b(BasePendingResult<? extends Result> basePendingResult, boolean z) {
        this.f7361a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.m14978d(new zaac(this, basePendingResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final <TResult> void m14655c(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.f7362b.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.m10830a().mo10794b(new zaab(this, taskCompletionSource));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m14653e() {
        return !this.f7361a.isEmpty() || !this.f7362b.isEmpty();
    }

    /* renamed from: f */
    public final void m14652f() {
        m14654d(false, GoogleApiManager.f7064n);
    }

    /* renamed from: g */
    public final void m14651g() {
        m14654d(true, zacp.f7283d);
    }
}

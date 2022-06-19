package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zav.class */
public final class zav {
    private final Map<BasePendingResult<?>, Boolean> zaa = Collections.synchronizedMap(new WeakHashMap());
    private final Map<TaskCompletionSource<?>, Boolean> zab = Collections.synchronizedMap(new WeakHashMap());

    private final void zaa(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.zaa) {
            hashMap = new HashMap(this.zaa);
        }
        synchronized (this.zab) {
            hashMap2 = new HashMap(this.zab);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).forceFailureUnlessReady(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zaa(int r8, java.lang.String r9) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "The connection to Google Play services was lost"
            r1.<init>(r2)
            r10 = r0
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L1d
            java.lang.String r0 = " due to service disconnection."
            r11 = r0
        L13:
            r0 = r10
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            goto L29
        L1d:
            r0 = r8
            r1 = 3
            if (r0 != r1) goto L29
            java.lang.String r0 = " due to dead object exception."
            r11 = r0
            goto L13
        L29:
            r0 = r9
            if (r0 == 0) goto L3a
            r0 = r10
            java.lang.String r1 = " Last reason for disconnect: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
        L3a:
            r0 = r7
            r1 = 1
            com.google.android.gms.common.api.Status r2 = new com.google.android.gms.common.api.Status
            r3 = r2
            r4 = 20
            r5 = r10
            java.lang.String r5 = r5.toString()
            r3.<init>(r4, r5)
            r0.zaa(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zav.zaa(int, java.lang.String):void");
    }

    public final void zaa(BasePendingResult<? extends Result> basePendingResult, boolean z) {
        this.zaa.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.addStatusListener(new zax(this, basePendingResult));
    }

    public final <TResult> void zaa(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.zab.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new zaw(this, taskCompletionSource));
    }

    public final boolean zaa() {
        return !this.zaa.isEmpty() || !this.zab.isEmpty();
    }

    public final void zab() {
        zaa(false, GoogleApiManager.zaa);
    }
}

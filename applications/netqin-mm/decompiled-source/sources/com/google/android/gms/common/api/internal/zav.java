package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3275q0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3277r0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zav.class */
public final class zav {

    /* renamed from: a */
    public final Map<BasePendingResult<?>, Boolean> f23298a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    public final Map<TaskCompletionSource<?>, Boolean> f23299b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: a */
    public final void m17464a(int i, String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        m17460a(true, new Status(20, sb.toString()));
    }

    /* renamed from: a */
    public final void m17463a(BasePendingResult<? extends Result> basePendingResult, boolean z) {
        this.f23298a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.m17721a((PendingResult.StatusListener) new C3277r0(this, basePendingResult));
    }

    /* renamed from: a */
    public final <TResult> void m17461a(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.f23299b.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.m8600a().mo8615a(new C3275q0(this, taskCompletionSource));
    }

    /* renamed from: a */
    public final void m17460a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f23298a) {
            try {
                hashMap = new HashMap(this.f23298a);
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f23299b) {
            hashMap2 = new HashMap(this.f23299b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m17714b(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).m8597b((Exception) new ApiException(status));
            }
        }
    }

    /* renamed from: a */
    public final boolean m17465a() {
        return !this.f23298a.isEmpty() || !this.f23299b.isEmpty();
    }

    /* renamed from: b */
    public final void m17459b() {
        m17460a(false, GoogleApiManager.f23112o);
    }
}

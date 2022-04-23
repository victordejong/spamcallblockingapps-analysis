package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.i;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    final Map<BasePendingResult<?>, Boolean> f22769a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    final Map<i<?>, Boolean> f22770b = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, String str) {
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
        a(true, new Status(20, sb.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f22769a) {
            hashMap = new HashMap(this.f22769a);
        }
        synchronized (this.f22770b) {
            hashMap2 = new HashMap(this.f22770b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).c(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((i) entry2.getKey()).b((Exception) new ApiException(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return !this.f22769a.isEmpty() || !this.f22770b.isEmpty();
    }
}

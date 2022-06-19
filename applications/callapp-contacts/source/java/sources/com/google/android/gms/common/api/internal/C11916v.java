package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C14186i;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/v.class */
public final class C11916v {

    /* renamed from: a */
    final Map<BasePendingResult<?>, Boolean> f39406a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    final Map<C14186i<?>, Boolean> f39407b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: a */
    public final void m19310a(int i, String str) {
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
        m19309a(true, new Status(20, sb.toString()));
    }

    /* renamed from: a */
    public final void m19309a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f39406a) {
            hashMap = new HashMap(this.f39406a);
        }
        synchronized (this.f39407b) {
            hashMap2 = new HashMap(this.f39407b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m19434c(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C14186i) entry2.getKey()).m11470b((Exception) new ApiException(status));
            }
        }
    }

    /* renamed from: a */
    public final boolean m19311a() {
        return !this.f39406a.isEmpty() || !this.f39407b.isEmpty();
    }
}

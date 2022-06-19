package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C7968h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/s.class */
public final class C6061s {

    /* renamed from: a */
    private final Map<BasePendingResult<?>, Boolean> f19348a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    private final Map<C7968h<?>, Boolean> f19349b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: h */
    private final void m17276h(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f19348a) {
            hashMap = new HashMap(this.f19348a);
        }
        synchronized (this.f19349b) {
            hashMap2 = new HashMap(this.f19349b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m17450d(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C7968h) entry2.getKey()).m5804d(new ApiException(status));
            }
        }
    }

    /* renamed from: a */
    public final void m17283a(BasePendingResult<? extends AbstractC6007i> basePendingResult, boolean z) {
        this.f19348a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.mo17452a(new C6039j1(this, basePendingResult));
    }

    /* renamed from: b */
    public final <TResult> void m17282b(C7968h<TResult> c7968h, boolean z) {
        this.f19349b.put(c7968h, Boolean.valueOf(z));
        c7968h.m5807a().mo5825b(new C6042k1(this, c7968h));
    }

    /* renamed from: c */
    public final boolean m17281c() {
        return !this.f19348a.isEmpty() || !this.f19349b.isEmpty();
    }

    /* renamed from: d */
    public final void m17280d() {
        m17276h(false, C6025f.f19258d);
    }

    /* renamed from: e */
    public final void m17279e(int i, String str) {
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
        m17276h(true, new Status(20, sb.toString()));
    }
}

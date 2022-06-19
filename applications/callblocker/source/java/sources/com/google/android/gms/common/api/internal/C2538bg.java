package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C4470h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.bg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bg.class */
public final class C2538bg {

    /* renamed from: a */
    private final Map<BasePendingResult<?>, Boolean> f7146a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    private final Map<C4470h<?>, Boolean> f7147b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: a */
    private final void m14342a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f7146a) {
            hashMap = new HashMap(this.f7146a);
        }
        synchronized (this.f7147b) {
            hashMap2 = new HashMap(this.f7147b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m14409c(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C4470h) entry2.getKey()).m3886b((Exception) new ApiException(status));
            }
        }
    }

    /* renamed from: a */
    public final void m14345a(BasePendingResult<? extends AbstractC2500h> basePendingResult, boolean z) {
        this.f7146a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.mo14388a((AbstractC2495e.AbstractC2496a) new C2566t(this, basePendingResult));
    }

    /* renamed from: a */
    public final <TResult> void m14343a(C4470h<TResult> c4470h, boolean z) {
        this.f7147b.put(c4470h, Boolean.valueOf(z));
        c4470h.m3889a().mo3903a(new C2565s(this, c4470h));
    }

    /* renamed from: a */
    public final boolean m14346a() {
        return !this.f7146a.isEmpty() || !this.f7147b.isEmpty();
    }

    /* renamed from: b */
    public final void m14341b() {
        m14342a(false, C2548f.f7169a);
    }

    /* renamed from: c */
    public final void m14339c() {
        m14342a(true, C2524at.f7119a);
    }
}

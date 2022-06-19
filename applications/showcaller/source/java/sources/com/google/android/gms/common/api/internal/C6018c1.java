package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.C7968h;
import java.util.Map;
import java.util.Set;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.common.api.internal.c1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/c1.class */
public final class C6018c1 {

    /* renamed from: a */
    private final C1489a<C6012b<?>, ConnectionResult> f19243a;

    /* renamed from: b */
    private final C1489a<C6012b<?>, String> f19244b;

    /* renamed from: c */
    private final C7968h<Map<C6012b<?>, String>> f19245c;

    /* renamed from: d */
    private int f19246d;

    /* renamed from: e */
    private boolean f19247e;

    /* renamed from: a */
    public final Set<C6012b<?>> m17388a() {
        return this.f19243a.keySet();
    }

    /* renamed from: b */
    public final void m17387b(C6012b<?> c6012b, ConnectionResult connectionResult, String str) {
        this.f19243a.put(c6012b, connectionResult);
        this.f19244b.put(c6012b, str);
        this.f19246d--;
        if (!connectionResult.m17502o0()) {
            this.f19247e = true;
        }
        if (this.f19246d == 0) {
            if (!this.f19247e) {
                this.f19245c.m5805c(this.f19244b);
                return;
            }
            this.f19245c.m5806b(new AvailabilityException(this.f19243a));
        }
    }
}

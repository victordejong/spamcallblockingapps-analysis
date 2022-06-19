package com.google.android.gms.common.api.internal;

import androidx.p013b.C0373a;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.C4470h;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.az */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/az.class */
public final class C2530az {

    /* renamed from: a */
    private final C0373a<C2531b<?>, C2579b> f7127a;

    /* renamed from: b */
    private final C0373a<C2531b<?>, String> f7128b;

    /* renamed from: c */
    private final C4470h<Map<C2531b<?>, String>> f7129c;

    /* renamed from: d */
    private int f7130d;

    /* renamed from: e */
    private boolean f7131e;

    /* renamed from: a */
    public final Set<C2531b<?>> m14359a() {
        return this.f7127a.keySet();
    }

    /* renamed from: a */
    public final void m14358a(C2531b<?> c2531b, C2579b c2579b, String str) {
        this.f7127a.put(c2531b, c2579b);
        this.f7128b.put(c2531b, str);
        this.f7130d--;
        if (!c2579b.m14210b()) {
            this.f7131e = true;
        }
        if (this.f7130d == 0) {
            if (!this.f7131e) {
                this.f7129c.m3887a((C4470h<Map<C2531b<?>, String>>) this.f7128b);
                return;
            }
            this.f7129c.m3888a(new AvailabilityException(this.f7127a));
        }
    }
}

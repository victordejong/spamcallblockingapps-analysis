package com.google.android.gms.common.api.internal;

import androidx.p023b.C0428a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC11829h;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.C14186i;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.br */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/br.class */
public final class C11877br {

    /* renamed from: d */
    private int f39309d;

    /* renamed from: b */
    private final C0428a<C11859b<?>, String> f39307b = new C0428a<>();

    /* renamed from: c */
    private final C14186i<Map<C11859b<?>, String>> f39308c = new C14186i<>();

    /* renamed from: e */
    private boolean f39310e = false;

    /* renamed from: a */
    final C0428a<C11859b<?>, ConnectionResult> f39306a = new C0428a<>();

    public C11877br(Iterable<? extends AbstractC11829h<?>> iterable) {
        for (AbstractC11829h<?> abstractC11829h : iterable) {
            this.f39306a.put(abstractC11829h.mo19441e(), null);
        }
        this.f39309d = this.f39306a.keySet().size();
    }

    /* renamed from: a */
    public final void m19378a(C11859b<?> c11859b, ConnectionResult connectionResult, String str) {
        this.f39306a.put(c11859b, connectionResult);
        this.f39307b.put(c11859b, str);
        this.f39309d--;
        if (!connectionResult.isSuccess()) {
            this.f39310e = true;
        }
        if (this.f39309d == 0) {
            if (!this.f39310e) {
                this.f39308c.m11471a((C14186i<Map<C11859b<?>, String>>) this.f39307b);
                return;
            }
            this.f39308c.m11472a(new AvailabilityException(this.f39306a));
        }
    }
}

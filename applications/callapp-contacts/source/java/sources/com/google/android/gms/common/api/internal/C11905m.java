package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC11830i;
import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.AbstractC11926n;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.common.api.internal.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/m.class */
public final class C11905m<R extends AbstractC11925m> extends AbstractC11830i<R> {

    /* renamed from: a */
    private final BasePendingResult<R> f39383a;

    public C11905m(AbstractC11921j<R> abstractC11921j) {
        this.f39383a = (BasePendingResult) abstractC11921j;
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j
    /* renamed from: a */
    public final R mo19293a(long j, TimeUnit timeUnit) {
        return this.f39383a.mo19293a(j, timeUnit);
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j
    /* renamed from: a */
    public final void mo19292a(AbstractC11921j.AbstractC11922a abstractC11922a) {
        this.f39383a.mo19292a(abstractC11922a);
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j
    /* renamed from: a */
    public final void mo19291a(AbstractC11926n<? super R> abstractC11926n) {
        this.f39383a.mo19291a(abstractC11926n);
    }
}

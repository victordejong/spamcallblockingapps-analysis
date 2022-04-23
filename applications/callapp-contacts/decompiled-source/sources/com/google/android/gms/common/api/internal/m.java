package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/m.class */
public final class m<R extends com.google.android.gms.common.api.m> extends i<R> {

    /* renamed from: a  reason: collision with root package name */
    private final BasePendingResult<R> f22749a;

    public m(j<R> jVar) {
        this.f22749a = (BasePendingResult) jVar;
    }

    @Override // com.google.android.gms.common.api.j
    public final R a(long j, TimeUnit timeUnit) {
        return this.f22749a.a(j, timeUnit);
    }

    @Override // com.google.android.gms.common.api.j
    public final void a(j.a aVar) {
        this.f22749a.a(aVar);
    }

    @Override // com.google.android.gms.common.api.j
    public final void a(n<? super R> nVar) {
        this.f22749a.a(nVar);
    }
}

package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC11921j;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.api.internal.bz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bz.class */
final class C11885bz implements AbstractC11921j.AbstractC11922a {

    /* renamed from: a */
    final /* synthetic */ BasePendingResult f39322a;

    /* renamed from: b */
    final /* synthetic */ C11916v f39323b;

    public C11885bz(C11916v c11916v, BasePendingResult basePendingResult) {
        this.f39323b = c11916v;
        this.f39322a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.AbstractC11921j.AbstractC11922a
    /* renamed from: a */
    public final void mo19222a(Status status) {
        this.f39323b.f39406a.remove(this.f39322a);
    }
}

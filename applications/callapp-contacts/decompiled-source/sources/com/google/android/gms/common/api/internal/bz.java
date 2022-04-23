package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.j;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bz.class */
final class bz implements j.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BasePendingResult f22714a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v f22715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bz(v vVar, BasePendingResult basePendingResult) {
        this.f22715b = vVar;
        this.f22714a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.j.a
    public final void a(Status status) {
        this.f22715b.f22769a.remove(this.f22714a);
    }
}

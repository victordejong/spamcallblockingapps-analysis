package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.location.AbstractC13754d;
import com.google.android.gms.location.LocationResult;
/* renamed from: com.google.android.gms.internal.location.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/i.class */
final class C13334i implements C11899i.AbstractC11901b<AbstractC13754d> {

    /* renamed from: a */
    final /* synthetic */ LocationResult f50560a;

    public C13334i(BinderC13336k binderC13336k, LocationResult locationResult) {
        this.f50560a = locationResult;
    }

    @Override // com.google.android.gms.common.api.internal.C11899i.AbstractC11901b
    /* renamed from: a */
    public final void mo11373a() {
    }

    @Override // com.google.android.gms.common.api.internal.C11899i.AbstractC11901b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo11372a(AbstractC13754d abstractC13754d) {
        abstractC13754d.mo12272a(this.f50560a);
    }
}

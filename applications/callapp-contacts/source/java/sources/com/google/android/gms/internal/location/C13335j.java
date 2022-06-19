package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.location.AbstractC13754d;
import com.google.android.gms.location.LocationAvailability;
/* renamed from: com.google.android.gms.internal.location.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/j.class */
final class C13335j implements C11899i.AbstractC11901b<AbstractC13754d> {

    /* renamed from: a */
    final /* synthetic */ LocationAvailability f50561a;

    public C13335j(BinderC13336k binderC13336k, LocationAvailability locationAvailability) {
        this.f50561a = locationAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.C11899i.AbstractC11901b
    /* renamed from: a */
    public final void mo11373a() {
    }

    @Override // com.google.android.gms.common.api.internal.C11899i.AbstractC11901b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo11372a(AbstractC13754d abstractC13754d) {
        abstractC13754d.mo12273a(this.f50561a);
    }
}

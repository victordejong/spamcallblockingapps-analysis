package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/j.class */
final class j implements i.b<d> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LocationAvailability f28901a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(k kVar, LocationAvailability locationAvailability) {
        this.f28901a = locationAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.i.b
    public final void a() {
    }

    @Override // com.google.android.gms.common.api.internal.i.b
    public final /* bridge */ /* synthetic */ void a(d dVar) {
        dVar.a(this.f28901a);
    }
}

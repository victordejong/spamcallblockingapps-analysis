package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.d;
import com.google.android.gms.location.s;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/k.class */
public final class k extends s {

    /* renamed from: a  reason: collision with root package name */
    private final i<d> f28902a;

    public k(i<d> iVar) {
        this.f28902a = iVar;
    }

    public final void a() {
        synchronized (this) {
            this.f28902a.a();
        }
    }

    @Override // com.google.android.gms.location.t
    public final void a(LocationAvailability locationAvailability) {
        this.f28902a.a(new j(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.t
    public final void a(LocationResult locationResult) {
        this.f28902a.a(new i(this, locationResult));
    }
}

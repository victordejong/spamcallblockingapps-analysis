package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.location.AbstractBinderC13770s;
import com.google.android.gms.location.AbstractC13754d;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
/* renamed from: com.google.android.gms.internal.location.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/k.class */
public final class BinderC13336k extends AbstractBinderC13770s {

    /* renamed from: a */
    private final C11899i<AbstractC13754d> f50562a;

    public BinderC13336k(C11899i<AbstractC13754d> c11899i) {
        this.f50562a = c11899i;
    }

    /* renamed from: a */
    public final void m13328a() {
        synchronized (this) {
            this.f50562a.m19324a();
        }
    }

    @Override // com.google.android.gms.location.AbstractC13771t
    /* renamed from: a */
    public final void mo12264a(LocationAvailability locationAvailability) {
        this.f50562a.m19323a(new C13335j(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.AbstractC13771t
    /* renamed from: a */
    public final void mo12263a(LocationResult locationResult) {
        this.f50562a.m19323a(new C13334i(this, locationResult));
    }
}

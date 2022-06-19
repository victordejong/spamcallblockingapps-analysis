package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.location.AbstractBinderC13773v;
/* renamed from: com.google.android.gms.internal.location.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/n.class */
final class BinderC13339n extends AbstractBinderC13773v {

    /* renamed from: a */
    private final C11899i<Object> f50564a;

    BinderC13339n(C11899i<Object> c11899i) {
        this.f50564a = c11899i;
    }

    @Override // com.google.android.gms.location.AbstractC13774w
    /* renamed from: a */
    public final void mo12260a(Location location) {
        this.f50564a.m19323a(new C13338m(this, location));
    }
}

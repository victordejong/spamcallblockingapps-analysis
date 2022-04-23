package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.location.v;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/n.class */
final class n extends v {

    /* renamed from: a  reason: collision with root package name */
    private final i<Object> f28904a;

    n(i<Object> iVar) {
        this.f28904a = iVar;
    }

    @Override // com.google.android.gms.location.w
    public final void a(Location location) {
        this.f28904a.a(new m(this, location));
    }
}

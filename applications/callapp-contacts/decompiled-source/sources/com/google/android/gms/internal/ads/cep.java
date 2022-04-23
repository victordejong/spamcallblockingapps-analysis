package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cep.class */
public final class cep implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f25697a;

    public cep(Boolean bool) {
        this.f25697a = bool;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Boolean bool = this.f25697a;
        if (bool != null) {
            bundle2.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}

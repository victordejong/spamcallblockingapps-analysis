package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgq.class */
public final class cgq implements chb<cgy<Bundle>> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f25804a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cgq(cmp cmpVar) {
        if (cmpVar != null) {
            this.f25804a = true;
        } else {
            this.f25804a = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgy<Bundle>> a() {
        return dbh.a(this.f25804a ? cgp.f25803a : null);
    }
}

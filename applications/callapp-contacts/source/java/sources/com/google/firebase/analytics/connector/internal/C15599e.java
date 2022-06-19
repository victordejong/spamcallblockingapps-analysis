package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.p363a.C13849a;
/* renamed from: com.google.firebase.analytics.connector.internal.e */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/e.class */
public final class C15599e implements C13849a.AbstractC13850a {

    /* renamed from: a */
    final /* synthetic */ C15600f f55968a;

    public C15599e(C15600f c15600f) {
        this.f55968a = c15600f;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14008fu
    /* renamed from: a */
    public final void mo8584a(String str, String str2, Bundle bundle, long j) {
        if (str == null || str.equals("crash") || !C15596b.m8587b(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle("params", bundle);
        this.f55968a.f55969a.onMessageTriggered(3, bundle2);
    }
}

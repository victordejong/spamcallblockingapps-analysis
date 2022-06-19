package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.p274a.C7642a;
import com.google.firebase.analytics.p292a.AbstractC8834a;
/* renamed from: com.google.firebase.analytics.connector.internal.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/c.class */
public final class C8844c implements C7642a.AbstractC7643a {

    /* renamed from: a */
    final /* synthetic */ C8845d f38768a;

    public C8844c(C8845d c8845d) {
        this.f38768a = c8845d;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7881u5
    /* renamed from: a */
    public final void mo2542a(String str, String str2, Bundle bundle, long j) {
        AbstractC8834a.AbstractC8836b abstractC8836b;
        if (!this.f38768a.f38769a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("events", C8843b.m2545f(str2));
        abstractC8836b = this.f38768a.f38770b;
        abstractC8836b.mo2411a(2, bundle2);
    }
}

package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.a.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/e.class */
public final class e implements a.AbstractC0481a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f32206a;

    public e(f fVar) {
        this.f32206a = fVar;
    }

    @Override // com.google.android.gms.measurement.internal.fu
    public final void a(String str, String str2, Bundle bundle, long j) {
        if (str != null && !str.equals("crash") && b.b(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j);
            bundle2.putBundle("params", bundle);
            this.f32206a.f32207a.onMessageTriggered(3, bundle2);
        }
    }
}

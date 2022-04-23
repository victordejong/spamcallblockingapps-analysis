package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.a.a;
import com.mopub.common.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/c.class */
public final class c implements a.AbstractC0481a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f32201a;

    public c(d dVar) {
        this.f32201a = dVar;
    }

    @Override // com.google.android.gms.measurement.internal.fu
    public final void a(String str, String str2, Bundle bundle, long j) {
        if (this.f32201a.f32202a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(Constants.VIDEO_TRACKING_EVENTS_KEY, b.c(str2));
            this.f32201a.f32203b.onMessageTriggered(2, bundle2);
        }
    }
}

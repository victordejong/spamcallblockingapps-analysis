package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.p363a.C13849a;
import com.mopub.common.Constants;
/* renamed from: com.google.firebase.analytics.connector.internal.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/c.class */
public final class C15597c implements C13849a.AbstractC13850a {

    /* renamed from: a */
    final /* synthetic */ C15598d f55963a;

    public C15597c(C15598d c15598d) {
        this.f55963a = c15598d;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14008fu
    /* renamed from: a */
    public final void mo8584a(String str, String str2, Bundle bundle, long j) {
        if (!this.f55963a.f55964a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(Constants.VIDEO_TRACKING_EVENTS_KEY, C15596b.m8585c(str2));
        this.f55963a.f55965b.onMessageTriggered(2, bundle2);
    }
}

package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.measurement.p274a.C7642a;
import com.google.firebase.analytics.p292a.AbstractC8834a;
/* renamed from: com.google.firebase.analytics.connector.internal.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/e.class */
public final class C8846e implements C7642a.AbstractC7643a {

    /* renamed from: a */
    final /* synthetic */ C8847f f38773a;

    public C8846e(C8847f c8847f) {
        this.f38773a = c8847f;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7881u5
    /* renamed from: a */
    public final void mo2542a(String str, String str2, Bundle bundle, long j) {
        AbstractC8834a.AbstractC8836b abstractC8836b;
        if (str == null || str.equals("crash") || !C8843b.m2548c(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(ShortCut.NAME, str2);
        bundle2.putLong("timestampInMillis", j);
        bundle2.putBundle("params", bundle);
        abstractC8836b = this.f38773a.f38774a;
        abstractC8836b.mo2411a(3, bundle2);
    }
}

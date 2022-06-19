package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.p263v.C5852a;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.di0;
import com.google.android.gms.internal.ads.ei0;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.util.a1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/a1.class */
public final class C5670a1 extends AbstractC5673b0 {

    /* renamed from: c */
    private final Context f18442c;

    public C5670a1(Context context) {
        this.f18442c = context;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5673b0
    /* renamed from: a */
    public final void mo13197a() {
        boolean z;
        try {
            z = C5852a.m17751d(this.f18442c);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            ei0.m15466d("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        di0.m15806h(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        ei0.m15464f(sb.toString());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.p120c.C2276a;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.uv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uv.class */
public final class C3557uv extends AbstractC3552uq {

    /* renamed from: a */
    private Context f17463a;

    public C3557uv(Context context) {
        this.f17463a = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3552uq
    /* renamed from: a */
    public final void mo6839a() {
        boolean z;
        try {
            z = C2276a.m14853b(this.f17463a);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            C3556uu.m6748c("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        C3638xv.m6767a(z);
        C3556uu.m6745e(new StringBuilder(43).append("Update ad debug logging enablement as ").append(z).toString());
    }
}

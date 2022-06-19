package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.p120c.C2276a;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.ud */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ud.class */
final class RunnableC3539ud implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f17393a;

    /* renamed from: b */
    private final /* synthetic */ C3658yo f17394b;

    public RunnableC3539ud(C3534tz c3534tz, Context context, C3658yo c3658yo) {
        this.f17393a = context;
        this.f17394b = c3658yo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f17394b.m6731b(C2276a.m14865a(this.f17393a));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.f17394b.m6733a(e);
            C3645yb.m6748c("Exception while getting advertising Id info", e);
        }
    }
}

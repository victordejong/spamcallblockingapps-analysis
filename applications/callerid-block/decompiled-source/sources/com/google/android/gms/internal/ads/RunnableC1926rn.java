package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.p072u.C1504a;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.rn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rn.class */
final class RunnableC1926rn implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Context f8372b;

    /* renamed from: c */
    final /* synthetic */ fp f8373c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1926rn(C1946sn snVar, Context context, fp fpVar) {
        this.f8372b = context;
        this.f8373c = fpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f8373c.c(C1504a.m8554b(this.f8372b));
        } catch (GooglePlayServicesRepairableException | GooglePlayServicesNotAvailableException | IOException | IllegalStateException e) {
            this.f8373c.d(e);
            C1894po.m6182d("Exception while getting advertising Id info", e);
        }
    }
}

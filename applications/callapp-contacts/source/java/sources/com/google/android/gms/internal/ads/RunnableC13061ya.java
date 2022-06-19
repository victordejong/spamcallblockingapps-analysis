package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.ya */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ya.class */
final class RunnableC13061ya implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f50025a;

    /* renamed from: b */
    private final /* synthetic */ C13103zp f50026b;

    public RunnableC13061ya(C13057xx c13057xx, Context context, C13103zp c13103zp) {
        this.f50025a = context;
        this.f50026b = c13103zp;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f50026b.set(AdvertisingIdClient.getAdvertisingIdInfo(this.f50025a));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.f50026b.setException(e);
            C13088za.zzc("Exception while getting advertising Id info", e);
        }
    }
}

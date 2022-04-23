package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ya.class */
final class ya implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f28517a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zp f28518b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ya(xx xxVar, Context context, zp zpVar) {
        this.f28517a = context;
        this.f28518b = zpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f28518b.set(AdvertisingIdClient.getAdvertisingIdInfo(this.f28517a));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.f28518b.setException(e);
            za.zzc("Exception while getting advertising Id info", e);
        }
    }
}

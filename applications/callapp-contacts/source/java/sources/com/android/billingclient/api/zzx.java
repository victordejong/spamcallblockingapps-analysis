package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.android.billingclient.api.C3341g;
import com.google.android.gms.internal.p360f.C13304a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzx.class */
final class zzx extends ResultReceiver {
    final /* synthetic */ AbstractC3343h zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzx(C3337d c3337d, Handler handler, AbstractC3343h abstractC3343h) {
        super(handler);
        this.zza = abstractC3343h;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C3341g.C3342a m38191a = C3341g.m38191a();
        m38191a.f12611a = i;
        m38191a.f12612b = C13304a.m13371b(bundle, "BillingClient");
        this.zza.mo38171c(m38191a.m38190a());
    }
}

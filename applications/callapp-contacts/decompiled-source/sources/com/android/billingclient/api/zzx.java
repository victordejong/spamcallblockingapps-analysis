package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.android.billingclient.api.g;
import com.google.android.gms.internal.f.a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzx.class */
final class zzx extends ResultReceiver {
    final /* synthetic */ h zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzx(d dVar, Handler handler, h hVar) {
        super(handler);
        this.zza = hVar;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        g.a a2 = g.a();
        a2.f6988a = i;
        a2.f6989b = a.b(bundle, "BillingClient");
        this.zza.c(a2.a());
    }
}

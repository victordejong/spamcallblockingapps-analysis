package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider;
/* renamed from: com.google.android.gms.internal.ads.pn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pn.class */
final class DialogInterface$OnClickListenerC12829pn implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ C12826pk f49664a;

    public DialogInterface$OnClickListenerC12829pn(C12826pk c12826pk) {
        this.f49664a = c12826pk;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C12826pk c12826pk = this.f49664a;
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", c12826pk.f49655b);
        data.putExtra(MRAIDNativeFeatureProvider.EVENT_LOCATION, c12826pk.f49659f);
        data.putExtra("description", c12826pk.f49658e);
        if (c12826pk.f49656c > -1) {
            data.putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_BEGIN_TIME, c12826pk.f49656c);
        }
        if (c12826pk.f49657d > -1) {
            data.putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_END_TIME, c12826pk.f49657d);
        }
        data.setFlags(268435456);
        zzr.zzkv();
        zzj.zza(this.f49664a.f49654a, data);
    }
}

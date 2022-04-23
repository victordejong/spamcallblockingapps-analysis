package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pn.class */
final class pn implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ pk f28289a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pn(pk pkVar) {
        this.f28289a = pkVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        pk pkVar = this.f28289a;
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", pkVar.f28283b);
        data.putExtra(MRAIDNativeFeatureProvider.EVENT_LOCATION, pkVar.f);
        data.putExtra("description", pkVar.e);
        if (pkVar.f28284c > -1) {
            data.putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_BEGIN_TIME, pkVar.f28284c);
        }
        if (pkVar.f28285d > -1) {
            data.putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_END_TIME, pkVar.f28285d);
        }
        data.setFlags(268435456);
        zzr.zzkv();
        zzj.zza(this.f28289a.f28282a, data);
    }
}

package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.gtm.zzap;
import com.google.android.gms.internal.gtm.zzbq;
import com.google.android.gms.internal.gtm.zzci;
import com.google.android.gms.internal.gtm.zzcz;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/CampaignTrackingReceiver.class */
public class CampaignTrackingReceiver extends BroadcastReceiver {
    private static Boolean zzri;

    public static boolean zza(Context context) {
        Preconditions.checkNotNull(context);
        Boolean bool = zzri;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zza = zzcz.zza(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        zzri = Boolean.valueOf(zza);
        return zza;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        zzap zzc = zzap.zzc(context);
        zzci zzco = zzc.zzco();
        if (intent == null) {
            zzco.zzt("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        zzco.zza("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zzco.zzt("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        zza(context, stringExtra);
        int zzeo = zzbq.zzeo();
        if (stringExtra.length() <= zzeo) {
            str = stringExtra;
        } else {
            zzco.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzeo));
            str = stringExtra.substring(0, zzeo);
        }
        zzc.zzcs().zza(str, new zzc(this, goAsync()));
    }

    public void zza(Context context, String str) {
    }
}

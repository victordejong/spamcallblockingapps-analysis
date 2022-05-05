package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzaw;
import com.google.android.gms.internal.measurement.zzbx;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdg;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/CampaignTrackingReceiver.class */
public class CampaignTrackingReceiver extends BroadcastReceiver {
    private static Boolean zzre;

    public static boolean zza(Context context) {
        Preconditions.checkNotNull(context);
        if (zzre != null) {
            return zzre.booleanValue();
        }
        boolean zza = zzdg.zza(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        zzre = Boolean.valueOf(zza);
        return zza;
    }

    @Override // android.content.BroadcastReceiver
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onReceive(Context context, Intent intent) {
        String str;
        zzaw zzc = zzaw.zzc(context);
        zzcp zzby = zzc.zzby();
        if (intent == null) {
            zzby.zzt("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        zzby.zza("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zzby.zzt("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        zza(context, stringExtra);
        int zzdy = zzbx.zzdy();
        if (stringExtra.length() <= zzdy) {
            str = stringExtra;
        } else {
            zzby.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzdy));
            str = stringExtra.substring(0, zzdy);
        }
        zzc.zzcc().zza(str, (Runnable) new zzc(this, goAsync()));
    }

    protected void zza(Context context, String str) {
    }
}

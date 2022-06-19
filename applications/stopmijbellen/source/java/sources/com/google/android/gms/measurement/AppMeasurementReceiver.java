package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzff;
import p002a1.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends AbstractC0007a implements zzff.zza {
    private zzff zza;

    public BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    @Override // com.google.android.gms.measurement.internal.zzff.zza
    public void doStartService(Context context, Intent intent) {
        AbstractC0007a.startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.zza == null) {
            this.zza = new zzff(this);
        }
        this.zza.zza(context, intent);
    }
}

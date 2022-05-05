package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.measurement.zzag;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver.class */
public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(@NonNull Context context, @Nullable Intent intent) {
        zzag.m13438a(context).m13423i(5, "Install Referrer Broadcast deprecated", null, null, null);
    }
}

package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.AbstractC7745i4;
import com.google.android.gms.measurement.internal.C7757j4;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements AbstractC7745i4 {

    /* renamed from: f */
    private C7757j4 f34960f;

    @Override // com.google.android.gms.measurement.internal.AbstractC7745i4
    /* renamed from: a */
    public void mo6353a(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent) {
        WakefulBroadcastReceiver.m32439c(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent) {
        if (this.f34960f == null) {
            this.f34960f = new C7757j4(this);
        }
        this.f34960f.m6339a(context, intent);
    }
}

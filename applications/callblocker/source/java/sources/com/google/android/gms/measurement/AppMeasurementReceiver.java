package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.p035f.p036a.AbstractC0652a;
import com.google.android.gms.measurement.internal.AbstractC4290ey;
import com.google.android.gms.measurement.internal.C4287ev;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementReceiver.class */
public final class AppMeasurementReceiver extends AbstractC0652a implements AbstractC4290ey {

    /* renamed from: a */
    private C4287ev f18563a;

    @Override // com.google.android.gms.measurement.internal.AbstractC4290ey
    /* renamed from: b */
    public final void mo4591b(Context context, Intent intent) {
        m20024a(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f18563a == null) {
            this.f18563a = new C4287ev(this);
        }
        this.f18563a.m4608a(context, intent);
    }
}

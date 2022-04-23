package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dk.class */
public final class dk extends d<df> {
    public dk(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ df createServiceInterface(IBinder iBinder) {
        df dfVar;
        if (iBinder == null) {
            dfVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
            dfVar = queryLocalInterface instanceof df ? (df) queryLocalInterface : new dd(iBinder);
        }
        return dfVar;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int getMinApkVersion() {
        return com.google.android.gms.common.d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.d
    public final String getStartServiceAction() {
        return "com.google.android.gms.measurement.START";
    }
}

package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzer.class */
public final class zzer extends BaseGmsClient<zzei> {
    public zzer(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(context, looper, 93, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: A */
    public final String mo8646A() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    public final /* synthetic */ zzei mo8645a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof zzei ? (zzei) queryLocalInterface : new zzek(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: j */
    public final int mo8643j() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: z */
    public final String mo8640z() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }
}

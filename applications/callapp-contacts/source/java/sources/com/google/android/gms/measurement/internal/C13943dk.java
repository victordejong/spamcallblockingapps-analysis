package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.measurement.internal.dk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dk.class */
public final class C13943dk extends AbstractC12025d<AbstractC13938df> {
    public C13943dk(Context context, Looper looper, AbstractC12025d.AbstractC12026a abstractC12026a, AbstractC12025d.AbstractC12027b abstractC12027b) {
        super(context, looper, 93, abstractC12026a, abstractC12027b, null);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final /* synthetic */ AbstractC13938df createServiceInterface(IBinder iBinder) {
        C13936dd c13936dd;
        if (iBinder == null) {
            c13936dd = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
            c13936dd = queryLocalInterface instanceof AbstractC13938df ? (AbstractC13938df) queryLocalInterface : new C13936dd(iBinder);
        }
        return c13936dd;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final int getMinApkVersion() {
        return C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getServiceDescriptor() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final String getStartServiceAction() {
        return "com.google.android.gms.measurement.START";
    }
}

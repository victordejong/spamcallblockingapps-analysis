package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC7483nc;
/* renamed from: com.google.android.gms.measurement.internal.aa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/aa.class */
final class C7655aa implements AbstractC7881u5 {

    /* renamed from: a */
    public final AbstractC7483nc f34997a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f34998b;

    public C7655aa(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC7483nc abstractC7483nc) {
        this.f34998b = appMeasurementDynamiteService;
        this.f34997a = abstractC7483nc;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7881u5
    /* renamed from: a */
    public final void mo2542a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f34997a.mo7065A1(str, str2, bundle, j);
        } catch (RemoteException e) {
            C7858s4 c7858s4 = this.f34998b.f34963d;
            if (c7858s4 == null) {
                return;
            }
            c7858s4.mo6047C().m6192p().m6215b("Event listener threw exception", e);
        }
    }
}

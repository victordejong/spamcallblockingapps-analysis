package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC7483nc;
/* renamed from: com.google.android.gms.measurement.internal.z9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/z9.class */
final class C7940z9 implements AbstractC7870t5 {

    /* renamed from: a */
    public final AbstractC7483nc f35858a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f35859b;

    public C7940z9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC7483nc abstractC7483nc) {
        this.f35859b = appMeasurementDynamiteService;
        this.f35858a = abstractC7483nc;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7870t5
    /* renamed from: a */
    public final void mo5870a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f35858a.mo7065A1(str, str2, bundle, j);
        } catch (RemoteException e) {
            C7858s4 c7858s4 = this.f35859b.f34963d;
            if (c7858s4 == null) {
                return;
            }
            c7858s4.mo6047C().m6192p().m6215b("Event interceptor threw exception", e);
        }
    }
}

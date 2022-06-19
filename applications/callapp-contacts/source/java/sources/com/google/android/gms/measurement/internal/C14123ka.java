package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC13709nf;
/* renamed from: com.google.android.gms.measurement.internal.ka */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ka.class */
final class C14123ka implements AbstractC14008fu {

    /* renamed from: a */
    public final AbstractC13709nf f52014a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f52015b;

    public C14123ka(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13709nf abstractC13709nf) {
        this.f52015b = appMeasurementDynamiteService;
        this.f52014a = abstractC13709nf;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14008fu
    /* renamed from: a */
    public final void mo8584a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f52014a.mo12292a(str, str2, bundle, j);
        } catch (RemoteException e) {
            C13979es c13979es = this.f52015b.f51185a;
            if (c13979es == null) {
                return;
            }
            c13979es.mo11661c().f51398f.m12091a("Event listener threw exception", e);
        }
    }
}

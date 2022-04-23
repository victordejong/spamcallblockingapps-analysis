package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.nf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ka.class */
final class ka implements fu {

    /* renamed from: a  reason: collision with root package name */
    public final nf f29929a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29930b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ka(AppMeasurementDynamiteService appMeasurementDynamiteService, nf nfVar) {
        this.f29930b = appMeasurementDynamiteService;
        this.f29929a = nfVar;
    }

    @Override // com.google.android.gms.measurement.internal.fu
    public final void a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f29929a.a(str, str2, bundle, j);
        } catch (RemoteException e) {
            es esVar = this.f29930b.f29392a;
            if (esVar != null) {
                esVar.c().f.a("Event listener threw exception", e);
            }
        }
    }
}

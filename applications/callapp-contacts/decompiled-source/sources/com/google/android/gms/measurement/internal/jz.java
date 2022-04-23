package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.nf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jz.class */
public final class jz implements ft {

    /* renamed from: a  reason: collision with root package name */
    public final nf f29925a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29926b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jz(AppMeasurementDynamiteService appMeasurementDynamiteService, nf nfVar) {
        this.f29926b = appMeasurementDynamiteService;
        this.f29925a = nfVar;
    }

    @Override // com.google.android.gms.measurement.internal.ft
    public final void a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f29925a.a(str, str2, bundle, j);
        } catch (RemoteException e) {
            es esVar = this.f29926b.f29392a;
            if (esVar != null) {
                esVar.c().f.a("Event interceptor threw exception", e);
            }
        }
    }
}

package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC13709nf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.jz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jz.class */
public final class C14121jz implements AbstractC14007ft {

    /* renamed from: a */
    public final AbstractC13709nf f52010a;

    /* renamed from: b */
    final /* synthetic */ AppMeasurementDynamiteService f52011b;

    public C14121jz(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC13709nf abstractC13709nf) {
        this.f52011b = appMeasurementDynamiteService;
        this.f52010a = abstractC13709nf;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14007ft
    /* renamed from: a */
    public final void mo11550a(String str, String str2, Bundle bundle, long j) {
        try {
            this.f52010a.mo12292a(str, str2, bundle, j);
        } catch (RemoteException e) {
            C13979es c13979es = this.f52011b.f51185a;
            if (c13979es == null) {
                return;
            }
            c13979es.mo11661c().f51398f.m12091a("Event interceptor threw exception", e);
        }
    }
}

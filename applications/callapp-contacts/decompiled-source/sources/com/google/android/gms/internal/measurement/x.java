package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x.class */
public final class x extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ab f29303a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29304b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(ak akVar, ab abVar) {
        super(akVar, true);
        this.f29304b = akVar;
        this.f29303a = abVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29304b.j;
        ((mz) o.a(mzVar)).registerOnMeasurementEventListener(this.f29303a);
    }
}

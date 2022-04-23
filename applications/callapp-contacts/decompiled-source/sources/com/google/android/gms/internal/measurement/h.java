package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h.class */
public final class h extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f29075a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29076b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(ak akVar, Bundle bundle) {
        super(akVar, true);
        this.f29076b = akVar;
        this.f29075a = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29076b.j;
        ((mz) o.a(mzVar)).setConsent(this.f29075a, this.h);
    }
}

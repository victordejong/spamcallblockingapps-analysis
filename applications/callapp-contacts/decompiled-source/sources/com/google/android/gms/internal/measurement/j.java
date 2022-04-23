package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/j.class */
public final class j extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29147a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29148b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(ak akVar, String str) {
        super(akVar, true);
        this.f29148b = akVar;
        this.f29147a = str;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29148b.j;
        ((mz) o.a(mzVar)).beginAdUnitExposure(this.f29147a, this.i);
    }
}

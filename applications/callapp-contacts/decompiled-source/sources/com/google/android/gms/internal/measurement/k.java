package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/k.class */
public final class k extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29178a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29179b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(ak akVar, String str) {
        super(akVar, true);
        this.f29179b = akVar;
        this.f29178a = str;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29179b.j;
        ((mz) o.a(mzVar)).endAdUnitExposure(this.f29178a, this.i);
    }
}

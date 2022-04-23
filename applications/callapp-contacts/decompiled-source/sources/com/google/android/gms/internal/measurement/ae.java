package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ae.class */
final class ae extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f28918a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ aj f28919b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(aj ajVar, Activity activity) {
        super(ajVar.f28929a, true);
        this.f28919b = ajVar;
        this.f28918a = activity;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f28919b.f28929a.j;
        ((mz) o.a(mzVar)).onActivityResumed(d.a(this.f28918a), this.i);
    }
}

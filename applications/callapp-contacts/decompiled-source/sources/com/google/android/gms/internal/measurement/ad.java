package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ad.class */
final class ad extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f28916a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ aj f28917b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(aj ajVar, Activity activity) {
        super(ajVar.f28929a, true);
        this.f28917b = ajVar;
        this.f28916a = activity;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f28917b.f28929a.j;
        ((mz) o.a(mzVar)).onActivityStarted(d.a(this.f28916a), this.i);
    }
}

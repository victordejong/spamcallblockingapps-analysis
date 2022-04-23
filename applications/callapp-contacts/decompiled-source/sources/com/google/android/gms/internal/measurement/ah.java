package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ah.class */
final class ah extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f28924a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ lu f28925b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ aj f28926c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ah(aj ajVar, Activity activity, lu luVar) {
        super(ajVar.f28929a, true);
        this.f28926c = ajVar;
        this.f28924a = activity;
        this.f28925b = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f28926c.f28929a.j;
        ((mz) o.a(mzVar)).onActivitySaveInstanceState(d.a(this.f28924a), this.f28925b, this.i);
    }
}

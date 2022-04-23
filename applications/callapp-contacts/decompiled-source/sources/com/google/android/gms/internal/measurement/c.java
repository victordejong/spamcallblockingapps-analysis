package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/c.class */
public final class c extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f28941a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f28942b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ak akVar, Bundle bundle) {
        super(akVar, true);
        this.f28942b = akVar;
        this.f28941a = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f28942b.j;
        ((mz) o.a(mzVar)).setConditionalUserProperty(this.f28941a, this.h);
    }
}

package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/o.class */
public final class o extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ lu f29283a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29284b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(ak akVar, lu luVar) {
        super(akVar, true);
        this.f29284b = akVar;
        this.f29283a = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29284b.j;
        ((mz) com.google.android.gms.common.internal.o.a(mzVar)).getCurrentScreenName(this.f29283a);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f29283a.a((Bundle) null);
    }
}

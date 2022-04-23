package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w.class */
public final class w extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f29301a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29302b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(ak akVar, boolean z) {
        super(akVar, true);
        this.f29302b = akVar;
        this.f29301a = z;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29302b.j;
        ((mz) o.a(mzVar)).setDataCollectionEnabled(this.f29301a);
    }
}

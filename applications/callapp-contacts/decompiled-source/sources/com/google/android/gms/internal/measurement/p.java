package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/p.class */
public final class p extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ lu f29285a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29286b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(ak akVar, lu luVar) {
        super(akVar, true);
        this.f29286b = akVar;
        this.f29285a = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29286b.j;
        ((mz) o.a(mzVar)).getCurrentScreenClass(this.f29285a);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f29285a.a((Bundle) null);
    }
}

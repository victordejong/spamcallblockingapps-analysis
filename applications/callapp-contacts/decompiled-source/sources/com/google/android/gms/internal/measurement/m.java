package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/m.class */
public final class m extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ lu f29257a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29258b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(ak akVar, lu luVar) {
        super(akVar, true);
        this.f29258b = akVar;
        this.f29257a = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29258b.j;
        ((mz) o.a(mzVar)).getCachedAppInstanceId(this.f29257a);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f29257a.a((Bundle) null);
    }
}

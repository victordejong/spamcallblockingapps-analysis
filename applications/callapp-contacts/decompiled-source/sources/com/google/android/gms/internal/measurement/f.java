package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f.class */
public final class f extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29003a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ak f29004b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ak akVar, String str) {
        super(akVar, true);
        this.f29004b = akVar;
        this.f29003a = str;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29004b.j;
        ((mz) o.a(mzVar)).setUserId(this.f29003a, this.h);
    }
}

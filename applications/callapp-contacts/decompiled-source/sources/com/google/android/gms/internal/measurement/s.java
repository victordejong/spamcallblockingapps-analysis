package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s.class */
public final class s extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Bundle f29294a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ lu f29295b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ak f29296c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(ak akVar, Bundle bundle, lu luVar) {
        super(akVar, true);
        this.f29296c = akVar;
        this.f29294a = bundle;
        this.f29295b = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29296c.j;
        ((mz) o.a(mzVar)).performAction(this.f29294a, this.f29295b, this.h);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f29295b.a((Bundle) null);
    }
}

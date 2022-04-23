package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u.class */
public final class u extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29298a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ lu f29299b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ak f29300c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(ak akVar, String str, lu luVar) {
        super(akVar, true);
        this.f29300c = akVar;
        this.f29298a = str;
        this.f29299b = luVar;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f29300c.j;
        ((mz) o.a(mzVar)).getMaxUserProperties(this.f29298a, this.f29299b);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    protected final void b() {
        this.f29299b.a((Bundle) null);
    }
}

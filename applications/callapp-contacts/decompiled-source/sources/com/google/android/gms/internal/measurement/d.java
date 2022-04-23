package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d.class */
public final class d extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f28945a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f28946b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Bundle f28947c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ak f28948d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(ak akVar, String str, String str2, Bundle bundle) {
        super(akVar, true);
        this.f28948d = akVar;
        this.f28945a = str;
        this.f28946b = str2;
        this.f28947c = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.f28948d.j;
        ((mz) o.a(mzVar)).clearConditionalUserProperty(this.f28945a, this.f28946b, this.f28947c);
    }
}

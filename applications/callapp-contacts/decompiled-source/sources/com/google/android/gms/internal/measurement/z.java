package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/z.class */
public final class z extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29309a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29310b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Object f29311c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29312d;
    final /* synthetic */ ak e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(ak akVar, String str, String str2, Object obj, boolean z) {
        super(akVar, true);
        this.e = akVar;
        this.f29309a = str;
        this.f29310b = str2;
        this.f29311c = obj;
        this.f29312d = z;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    final void a() throws RemoteException {
        mz mzVar;
        mzVar = this.e.j;
        ((mz) o.a(mzVar)).setUserProperty(this.f29309a, this.f29310b, d.a(this.f29311c), this.f29312d, this.h);
    }
}
